#!/usr/bin/env python3
"""
PsyArXiv Preprint Fetcher

This script queries the OSF API to find all your preprints using your OSF user ID
and formats them into a BibTeX file.
"""

import requests
import json
import re
from datetime import datetime
from pathlib import Path


def clean_for_bibtex(text):
    """Clean text for BibTeX format."""
    if not text:
        return ""
    
    # Remove or replace problematic characters
    text = text.replace('\n', ' ').replace('\r', ' ')
    text = re.sub(r'\s+', ' ', text)  # Multiple spaces to single space
    text = text.strip()
    
    # Escape special characters for BibTeX
    replacements = {
        '&': r'\&',
        '%': r'\%',
        '$': r'\$',
        '#': r'\#',
        '^': r'\^{}',
        '_': r'\_',
        '~': r'\textasciitilde{}',
        '\\': r'\textbackslash{}'
    }
    
    for char, replacement in replacements.items():
        text = text.replace(char, replacement)
    
    return text


def create_bibtex_key(title, authors, year):
    """Create a BibTeX key from title, authors, and year."""
    # Get first author's last name
    if authors:
        first_author = authors[0].get('family_name', 'unknown')
    else:
        first_author = "unknown"
    
    # Get first significant word from title
    title_words = re.findall(r'\b[A-Za-z]{3,}\b', title)
    title_word = title_words[0] if title_words else "untitled"
    
    # Create key: firstAuthorTitleWordYear
    key = f"{first_author.lower()}{title_word.title()}{year}"
    
    # Remove non-alphanumeric characters
    key = re.sub(r'[^a-zA-Z0-9]', '', key)
    
    return key


def get_preprint_details(preprint_id):
    """Get detailed information about a specific preprint."""
    print(f"Fetching details for preprint {preprint_id}...")
    
    # Get preprint details
    details_url = f"https://api.osf.io/v2/preprints/{preprint_id}/"
    response = requests.get(details_url)
    
    if response.status_code != 200:
        print(f"Error fetching preprint details: {response.status_code}")
        return None
    
    preprint_data = response.json()
    attributes = preprint_data['data']['attributes']
    
    # Check if preprint is withdrawn
    if attributes.get('date_withdrawn') is not None:
        print(f"  Skipping withdrawn preprint: {attributes.get('title', preprint_id)[:60]}...")
        return None
    
    # Get contributors/authors
    contributors_url = preprint_data['data']['relationships']['contributors']['links']['related']['href']
    authors = []
    
    while contributors_url:
        contrib_response = requests.get(contributors_url)
        if contrib_response.status_code != 200:
            break
            
        contrib_data = contrib_response.json()
        
        for contributor in contrib_data['data']:
            if contributor['attributes'].get('bibliographic', False):
                user_attrs = contributor['embeds']['users']['data']['attributes']
                author_info = {
                    'family_name': user_attrs.get('family_name', ''),
                    'given_name': user_attrs.get('given_name', ''),
                    'middle_names': user_attrs.get('middle_names', '')
                }
                authors.append(author_info)
        
        # Check for next page
        contributors_url = contrib_data['links'].get('next')
    
    # Determine status
    tags = attributes.get('tags', [])
    status = "unknown"
    if "published" in tags:
        status = "published"
    elif "accepted" in tags:
        status = "accepted"
    elif "submitted" in tags:
        status = "submitted"
    
    return {
        'id': preprint_id,
        'title': attributes.get('title', ''),
        'abstract': attributes.get('abstract', ''),
        'date_published': attributes.get('date_published'),
        'date_created': attributes.get('date_created'),
        'doi': attributes.get('doi'),
        'authors': authors,
        'status': status,
        'unpublished': status != "published",
        'html_url': preprint_data['data']['links']['html']
    }


def get_my_osf_preprints(user_id="dwha7"):
    """Fetch all preprints for a specific OSF user."""
    print(f"Fetching preprints for OSF user {user_id}...")
    
    # Get user's preprints
    url = f"https://api.osf.io/v2/users/{user_id}/preprints/"
    response = requests.get(url)
    
    if response.status_code != 200:
        print(f"Error fetching user preprints: {response.status_code}")
        print(f"Response: {response.text}")
        return []
    
    data = response.json()
    preprint_ids = [preprint['id'] for preprint in data['data']]
    
    print(f"Found {len(preprint_ids)} preprints")
    
    # Get detailed information for each preprint
    preprints = []
    published_count = 0
    for preprint_id in preprint_ids:
        details = get_preprint_details(preprint_id)
        if details:
            if details['unpublished']:  # Only include unpublished preprints
                preprints.append(details)
            else:
                published_count += 1
                print(f"  Skipping {details['title'][:60]}... (status: {details['status']})")
    
    print(f"Included {len(preprints)} unpublished preprints, skipped {published_count} published ones")
    return preprints


def format_authors_bibtex(authors):
    """Format authors for BibTeX."""
    author_strings = []
    
    for author in authors:
        family = author.get('family_name', '')
        given = author.get('given_name', '')
        middle = author.get('middle_names', '')
        
        if family:
            if middle:
                full_name = f"{family}, {given} {middle}"
            else:
                full_name = f"{family}, {given}"
            author_strings.append(full_name.strip())
    
    return ' and '.join(author_strings)


def convert_to_bibtex(preprints):
    """Convert preprints to BibTeX format."""
    bibtex_entries = []
    
    for preprint in preprints:
        # Extract basic information
        title = clean_for_bibtex(preprint['title'])
        abstract = clean_for_bibtex(preprint['abstract'])
        
        # Extract date
        date_published = preprint.get('date_published')
        date_created = preprint.get('date_created')
        date_str = date_published or date_created
        
        if date_str:
            try:
                date_obj = datetime.fromisoformat(date_str.replace('Z', '+00:00'))
                year = date_obj.year
                formatted_date = date_obj.strftime('%Y-%m-%d')
            except:
                year = datetime.now().year
                formatted_date = str(year)
        else:
            year = datetime.now().year
            formatted_date = str(year)
        
        # Format authors
        authors = format_authors_bibtex(preprint['authors'])
        
        # Create BibTeX key
        bibtex_key = create_bibtex_key(title, preprint['authors'], year)
        
        # Determine the provider (PsyArXiv, etc.)
        url = preprint['html_url']
        if 'psyarxiv' in url.lower():
            eprinttype = "PsyArXiv"
        elif 'arxiv' in url.lower():
            eprinttype = "arXiv"
        else:
            eprinttype = "Preprint"
        
        # Create BibTeX entry
        bibtex_entry = f"""@online{{{bibtex_key},
  title = {{{title}}},
  author = {{{authors}}},
  date = {{{formatted_date}}},
  eprinttype = {{{eprinttype}}},
  eprintclass = {{Preprint}},
  url = {{{url}}},"""
        
        # Add DOI if available
        if preprint.get('doi'):
            bibtex_entry += f"\n  doi = {{{preprint['doi']}}},"
        
        # Add abstract if available (truncated)
        if abstract:
            if len(abstract) > 1000:
                abstract = abstract[:1000] + "..."
            bibtex_entry += f"\n  abstract = {{{abstract}}},"
        
        # Add publication status
        if preprint['unpublished']:
            bibtex_entry += f"\n  pubstate = {{prepublished}},"
        
        # Add status field
        status = preprint.get('status', 'unknown')
        bibtex_entry += f"\n  status = {{{status}}},"
        
        bibtex_entry += f"\n  langid = {{english}}\n}}\n"
        
        bibtex_entries.append(bibtex_entry)
    
    return bibtex_entries


def main():
    """Main function to fetch preprints and save to BibTeX file."""
    print("PsyArXiv Preprint Fetcher")
    print("=" * 40)
    
    # Fetch preprints using OSF user ID
    preprints = get_my_osf_preprints()
    
    if not preprints:
        print("No preprints found!")
        return
    
    # Convert to BibTeX
    print("Converting to BibTeX format...")
    bibtex_entries = convert_to_bibtex(preprints)
    
    # Create output directory if it doesn't exist
    output_dir = Path("data/bib")
    output_dir.mkdir(parents=True, exist_ok=True)
    
    # Write to file
    output_file = output_dir / "psyarxiv.bib"
    
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write("% PsyArXiv and other preprints - automatically generated\n")
        f.write(f"% Generated on {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n\n")
        
        for entry in bibtex_entries:
            f.write(entry)
            f.write("\n")
    
    print(f"Successfully wrote {len(bibtex_entries)} entries to {output_file}")
    
    # Show sample titles
    print("\nFound preprints:")
    for i, preprint in enumerate(preprints, 1):
        status = f" ({preprint['status']})" if preprint['status'] != 'unknown' else ""
        print(f"{i}. {preprint['title'][:80]}...{status}")


if __name__ == "__main__":
    main()
