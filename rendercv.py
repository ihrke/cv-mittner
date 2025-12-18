#!/usr/bin/env python3
"""
CV Renderer using Jinja2 and YAML data files.

This script renders the base.j2.typ template using data from YAML files
in the data directory.
"""

import os
import yaml
import json
from pathlib import Path
from jinja2 import Environment, FileSystemLoader
import argparse
from datetime import datetime
import bibtexparser


def load_yaml_file(filepath):
    """Load a YAML file and return its contents."""
    try:
        with open(filepath, 'r', encoding='utf-8') as file:
            return yaml.safe_load(file)
    except FileNotFoundError:
        print(f"Warning: {filepath} not found")
        return {}
    except yaml.YAMLError as e:
        print(f"Error parsing {filepath}: {e}")
        return {}


def load_json_file(filepath):
    """Load a JSON file and return its contents."""
    try:
        with open(filepath, 'r', encoding='utf-8') as file:
            return json.load(file)
    except FileNotFoundError:
        print(f"Warning: {filepath} not found")
        return {}
    except json.JSONDecodeError as e:
        print(f"Error parsing {filepath}: {e}")
        return {}


def parse_bibtex_file(filepath):
    """Parse a BibTeX file using bibtexparser and return entries."""
    try:
        with open(filepath, 'r', encoding='utf-8') as file:
            parser = bibtexparser.bparser.BibTexParser(common_strings=True)
            parser.ignore_nonstandard_types = False  # Allow non-standard entry types like @online
            bib_database = bibtexparser.load(file, parser)
        
        entries = []
        for entry in bib_database.entries:
            # Convert bibtexparser entry to our format
            converted_entry = {
                'type': entry.get('ENTRYTYPE', ''),
                'key': entry.get('ID', ''),
            }
            
            # Add all fields from the entry
            for key, value in entry.items():
                if key not in ['ENTRYTYPE', 'ID']:
                    converted_entry[key.lower()] = value
            
            entries.append(converted_entry)
        
        return entries
    except FileNotFoundError:
        print(f"Warning: {filepath} not found")
        return []
    except Exception as e:
        print(f"Error parsing BibTeX file {filepath}: {e}")
        return []


def format_authors_apa(authors_string, highlight_name=None, author_firstname=None, author_lastname=None):
    """Format authors in APA style with optional name highlighting."""
    if not authors_string:
        return "Unknown"
    
    # Split authors by 'and'
    authors = [author.strip() for author in authors_string.split(' and ')]
    
    formatted_authors = []
    for author in authors:
        # Handle "Last, First" format
        if ',' in author:
            parts = author.split(',', 1)
            last_name = parts[0].strip()
            first_name = parts[1].strip()
            # Get first initial and middle initials
            initials = ' '.join([name[0] + '.' for name in first_name.split() if name])
            formatted_author = f"{last_name}, {initials}"
        else:
            # Handle "First Last" format - convert to "Last, F."
            parts = author.split()
            if len(parts) >= 2:
                last_name = parts[-1]
                first_names = parts[:-1]
                initials = ' '.join([name[0] + '.' for name in first_names])
                formatted_author = f"{last_name}, {initials}"
            else:
                formatted_author = author
        
        # Check if this author should be highlighted
        if highlight_name and author_firstname and author_lastname:
            # Check if this author matches the target author (case-insensitive)
            author_lower = author.lower()
            target_firstname_lower = author_firstname.lower()
            target_lastname_lower = author_lastname.lower()
            
            # Check various name formats
            if (target_lastname_lower in author_lower and 
                (target_firstname_lower in author_lower or 
                 any(target_firstname_lower.startswith(initial) for initial in author_lower.split() if len(initial) == 1))):
                # Highlight the author name with italics
                formatted_author = f"_{formatted_author}_"
        
        formatted_authors.append(formatted_author)
    
    # Join authors according to APA style - always show all authors
    if len(formatted_authors) == 1:
        return formatted_authors[0]
    elif len(formatted_authors) == 2:
        return f"{formatted_authors[0]} & {formatted_authors[1]}"
    else:
        # For 3+ authors, list all authors with & before the last one
        return ', '.join(formatted_authors[:-1]) + f", & {formatted_authors[-1]}"


def extract_year_from_date(date_str):
    """Extract year from date field (handles various formats)."""
    if not date_str:
        return 'n.d.'
    
    # Handle formats like "2024-11-05", "2024", "2024-11", etc.
    if '-' in date_str:
        return date_str.split('-')[0]
    elif len(date_str) == 4 and date_str.isdigit():
        return date_str
    else:
        return date_str[:4] if len(date_str) >= 4 else 'n.d.'


def format_publication(entry, highlight_name=None, author_firstname=None, author_lastname=None):
    """Format a BibTeX entry in APA style."""
    authors = format_authors_apa(entry.get('author', 'Unknown'), highlight_name, author_firstname, author_lastname)
    title = entry.get('title', 'Untitled')
    
    # Handle different year/date fields
    year = entry.get('year', '')
    if not year:
        year = extract_year_from_date(entry.get('date', ''))
    if not year:
        year = 'n.d.'
    
    # Remove extra braces from title (common in BibTeX for preserving capitalization)
    # Handle nested braces and preserve spaces
    import re
    
    def clean_braces(text):
        # Remove outer braces that wrap entire words/phrases
        # Pattern: {{Text}} -> Text, {Text} -> Text, but preserve text between braces
        while '{' in text and '}' in text:
            old_text = text
            # Remove simple brace pairs
            text = re.sub(r'\{([^{}]*)\}', r'\1', text)
            # If no change occurred, break to avoid infinite loop
            if text == old_text:
                break
        return text
    
    title = clean_braces(title)
    
    # Handle different publication types in APA format
    if entry['type'] == 'book':
        publisher = entry.get('publisher', '')
        formatted = f"{authors} ({year}). _{title}_. {publisher}."
        
    elif entry['type'] == 'article':
        # Handle different journal field names
        journal = entry.get('journal', '') or entry.get('journaltitle', '') or entry.get('shortjournal', '')
        volume = entry.get('volume', '')
        number = entry.get('number', '') or entry.get('issue', '')
        pages = entry.get('pages', '')
        
        formatted = f"{authors} ({year}). {title}. _{journal}_"
        if volume:
            formatted += f", _{volume}_"
            if number:
                formatted += f"({number})"
        if pages:
            # Convert -- to - for page ranges
            pages = pages.replace('--', '-')
            formatted += f", {pages}"
        formatted += "."
        
    elif entry['type'] == 'inproceedings':
        booktitle = entry.get('booktitle', '') or entry.get('booktitle', '')
        booktitle = clean_braces(booktitle)
        pages = entry.get('pages', '')
        formatted = f"{authors} ({year}). {title}. In _{booktitle}_"
        if pages:
            pages = pages.replace('--', '-')
            formatted += f" (pp. {pages})"
        formatted += "."
        
    elif entry['type'] in ['incollection', 'inbook']:
        booktitle = entry.get('booktitle', '')
        booktitle = clean_braces(booktitle)
        editor = entry.get('editor', '')
        pages = entry.get('pages', '')
        publisher = entry.get('publisher', '')
        
        formatted = f"{authors} ({year}). {title}. In "
        if editor:
            editor_formatted = format_authors_apa(editor)
            formatted += f"{editor_formatted} (Ed.), "
        formatted += f"_{booktitle}_"
        if pages:
            pages = pages.replace('--', '-')
            formatted += f" (pp. {pages})"
        if publisher:
            formatted += f". {publisher}"
        formatted += "."
        
    elif entry['type'] in ['preprint', 'online']:
        # Handle preprints (including online/bioRxiv entries)
        eprint_type = entry.get('eprinttype', 'Preprint')
        url = str(entry.get('url', '')).lower()
        
        if 'psyarxiv' in eprint_type or 'psyarxiv' in url:
            formatted = f"{authors} ({year}). {title}. _PsyArXiv_."
        elif 'bioRxiv' in eprint_type or 'biorxiv' in url:
            formatted = f"{authors} ({year}). {title}. _bioRxiv_."
        elif 'arxiv' in eprint_type or 'arxiv' in url:
            formatted = f"{authors} ({year}). {title}. _arXiv_."
        else:
            formatted = f"{authors} ({year}). {title}. _Preprint_."
        
    else:
        formatted = f"{authors} ({year}). {title}."
    
    # Add DOI or URL if available (APA 7th edition preference: DOI over URL)
    if 'doi' in entry:
        formatted += f" https://doi.org/{entry['doi']}"
    elif 'url' in entry:
        formatted += f" {entry['url']}"
    
    # Add status for preprints at the very end
    if entry['type'] in ['preprint', 'online']:
        status = entry.get('status', '')
        if status and status != 'unknown':
            formatted += f" ({status})"
    
    return formatted


def load_data(data_dir, highlight_name=None, author_firstname=None, author_lastname=None):
    """Load all data files from the data directory."""
    data_dir = Path(data_dir)
    data = {}
    
    # Load all YAML files in the data directory
    for yaml_file in data_dir.glob("*.yaml"):
        file_key = yaml_file.stem  # filename without extension
        file_data = load_yaml_file(yaml_file)
        if file_data:
            data[file_key] = file_data
    
    # Also load JSON files (for backward compatibility)
    for json_file in data_dir.glob("*.json"):
        file_key = json_file.stem
        # Only load JSON if YAML doesn't exist
        if file_key not in data:
            file_data = load_json_file(json_file)
            if file_data:
                data[file_key] = file_data
    
    # Load BibTeX files from bib subdirectory
    bib_dir = data_dir / "bib"
    if bib_dir.exists():
        all_publications = []
        publication_types = {
            'books': [],
            'preprints': [],
            'articles': [],
            'chapters': [],
            'proceedings': []
        }
        
        for bib_file in bib_dir.glob("*.bib"):
            entries = parse_bibtex_file(bib_file)
            for entry in entries:
                entry['formatted'] = format_publication(entry, highlight_name, author_firstname, author_lastname)
                all_publications.append(entry)
                
                # Categorize by file name and entry type
                filename = bib_file.stem
                if filename == 'books' or entry['type'] == 'book':
                    publication_types['books'].append(entry)
                elif filename in ['preprints', 'psyarxiv'] or entry['type'] in ['preprint', 'online']:
                    publication_types['preprints'].append(entry)
                elif filename == 'articles' or entry['type'] == 'article':
                    publication_types['articles'].append(entry)
                elif filename == 'chapters' or entry['type'] in ['incollection', 'inbook']:
                    publication_types['chapters'].append(entry)
                elif filename == 'proceedings' or entry['type'] == 'inproceedings':
                    publication_types['proceedings'].append(entry)
        
        # Extract year for sorting (handle both 'year' and 'date' fields)
        def get_sort_year(entry):
            year = entry.get('year', '')
            if not year:
                year = extract_year_from_date(entry.get('date', ''))
            try:
                return int(year) if year and year != 'n.d.' else 0
            except ValueError:
                return 0
        
        # Sort each category by year (descending)
        for category in publication_types.values():
            category.sort(key=get_sort_year, reverse=True)
        
        # Create numbering based on CV appearance order (books, preprints, articles, chapters, proceedings)
        # Start with highest number and count down
        current_number = len(all_publications)
        
        # Number in the order they appear in the CV template
        cv_order = ['books', 'preprints', 'articles', 'chapters', 'proceedings']
        for section_name in cv_order:
            for pub in publication_types[section_name]:
                pub['number'] = current_number
                current_number -= 1
        
        data['publications'] = publication_types
    
    return data


def render_template(template_path, data, output_path):
    """Render the Jinja2 template with the provided data."""
    # Set up Jinja2 environment
    template_dir = Path(template_path).parent
    env = Environment(
        loader=FileSystemLoader(template_dir),
        trim_blocks=True,
        lstrip_blocks=True
    )
    
    # Load template
    template_name = Path(template_path).name
    template = env.get_template(template_name)
    
    # Render template
    rendered = template.render(**data)
    
    # Write output
    with open(output_path, 'w', encoding='utf-8') as file:
        file.write(rendered)
    
    print(f"Successfully rendered CV to {output_path}")


def main():
    parser = argparse.ArgumentParser(description='Render CV from YAML data and Jinja2 template')
    parser.add_argument('--data-dir', '-d', default='data', 
                        help='Directory containing YAML data files (default: data)')
    parser.add_argument('--template', '-t', default='templates/moderncv/base.j2.typ',
                        help='Path to Jinja2 template (default: templates/moderncv/base.j2.typ)')
    parser.add_argument('--output', '-o', default='cv_matthias.typ',
                        help='Output file path (default: cv_matthias.typ)')
    parser.add_argument('--compile', '-c', action='store_true',
                        help='Compile the output with typst after rendering')
    parser.add_argument('--highlight-name', action='store_true', default=True,
                        help='Highlight author name in publications (default: True)')
    parser.add_argument('--no-highlight-name', dest='highlight_name', action='store_false',
                        help='Disable highlighting of author name in publications')
    
    args = parser.parse_args()
    
    # Get script directory for relative paths
    script_dir = Path(__file__).parent
    
    # Load data
    data_dir = script_dir / args.data_dir
    print(f"Loading data from {data_dir}")
    
    # First load general data to get author name for highlighting
    general_data = load_yaml_file(data_dir / "general.yaml")
    author_firstname = general_data.get('firstname', '') if general_data else ''
    author_lastname = general_data.get('lastname', '') if general_data else ''
    
    data = load_data(data_dir, args.highlight_name, author_firstname, author_lastname)
    
    # Print loaded data summary
    print(f"Loaded data files:")
    for key, value in data.items():
        if isinstance(value, dict):
            if key == 'general':
                author_name = f"{value.get('firstname', 'Unknown')} {value.get('lastname', '')}"
                print(f"  - {key}: {author_name}")
            elif isinstance(value, list):
                print(f"  - {key}: {len(value)} entries")
            elif 'entries' in value:
                print(f"  - {key}: {len(value['entries'])} entries")
            else:
                print(f"  - {key}: {len(value)} fields")
        else:
            print(f"  - {key}: {type(value).__name__}")
    
    # Render template
    template_path = script_dir / args.template
    output_path = script_dir / args.output
    
    print(f"Rendering template {template_path}")
    render_template(template_path, data, output_path)
    
    # Optionally compile with typst
    if args.compile:
        print("Compiling with typst...")
        import subprocess
        try:
            result = subprocess.run(['typst', 'compile', str(output_path)], 
                                  capture_output=True, text=True, cwd=script_dir)
            if result.returncode == 0:
                print("Successfully compiled to PDF")
            else:
                print(f"Typst compilation error: {result.stderr}")
        except FileNotFoundError:
            print("Error: typst command not found. Please install Typst to use --compile option.")


if __name__ == '__main__':
    main()
