#import "templates/moderncv/moderncv.typ": *

#show: resume.with(
  author: (
      firstname: "{{ general.firstname }}", 
      lastname: "{{ general.lastname }}",
      email: "{{ general.email }}", 
      phone: "{{ general.phone }}",
      github: "{{ general.github }}",
      homepage: "{{ general.homepage }}",
      orcid: "{{ general.orcid }}",
      birth: "{{ general.birth }}",
      scholar: "{{ general.scholar }}",
      linkedin: "{{ general.linkedin }}",
      address: "{{ general.address }}",
      positions: (
        {% for position in general.positions %}"{{ position }}",
        {% endfor %}
      )
  ),
  profile-picture: {% if general.profile_picture %}image("{{ general.profile_picture }}", height:4cm){% else %}none{% endif %},
  date: {% if general.date %}"{{ general.date }}"{% else %}datetime.today().display(){% endif %}
)

{% if general.intro %}
#v(1em)
{{ general.intro }}
{% endif %}

{% if education %}
= Education

{% for entry in education %}
#resume-entry(
  title: "{{ entry.degree }}",
  location: "{{ entry.location }}",
  date: "{{ entry.date }}",
  description: "{{ entry.subject }}"
)

{% if entry.description %}
#resume-item[
  {{ entry.description }}
]
{% endif %}

{% endfor %}
{% endif %}


{% if employments %}
= Employments

{% for entry in employments %}
#resume-entry(
  title: "{{ entry.position }}",
  location: "{{ entry.location }}",
  date: "{{ entry.date }}",
  description: "{{ entry.subject }}"
)

{% if entry.description %}
#resume-item[
  {{ entry.description }}
]
{% endif %}

{% endfor %}
{% endif %}

{% if publications %}
= Publications

{% if publications.books %}
== Books

{% for pub in publications.books %}
#pub-item[
  ({{ pub.number }}) {{ pub.formatted }}
]
{% endfor %}
{% endif %}

{% if publications.preprints %}
== Preprints

{% for pub in publications.preprints %}
#pub-item[
  ({{ pub.number }}) {{ pub.formatted }}
]
{% endfor %}
{% endif %}

{% if publications.articles %}
== Journal articles

{% for pub in publications.articles %}
#pub-item[
  ({{ pub.number }}) {{ pub.formatted }}
]
{% endfor %}
{% endif %}

{% if publications.chapters %}
== Book chapters

{% for pub in publications.chapters %}
#pub-item[
  ({{ pub.number }}) {{ pub.formatted }}
]
{% endfor %}
{% endif %}

{% if publications.proceedings %}
== Conference proceedings

{% for pub in publications.proceedings %}
#pub-item[
  ({{ pub.number }}) {{ pub.formatted }}
]
{% endfor %}
{% endif %}

{% endif %}

{% if grants %}
= Grants and Scholarships
{% if grants.grants %}
== Research Grants

{% for entry in grants.grants %}
#dated-entry(
  title: "{{ entry.title }}",
  date: "{{ entry.date }}",
  amount: {% if entry.amount %}"{{ entry.amount }}"{% else %}""{% endif %},
  description: {% if entry.description %}[
    {% for line in entry.description.strip().split('\n') %}{% if line.strip().startswith('- ') %}- {{ line.strip()[2:] }}
    {% endif %}{% endfor %}]{% else %}none{% endif %}
)
{% endfor %}
{% endif %}

{% if grants.scholarships %}
== Personal Scholarships and Awards

{% for entry in grants.scholarships %}
#dated-entry(
  title: "{{ entry.title }}",
  date: "{{ entry.date }}",
  amount: {% if entry.amount %}"{{ entry.amount }}"{% else %}""{% endif %},
  description: {% if entry.description %}[
    {% for line in entry.description.strip().split('\n') %}{% if line.strip().startswith('- ') %}- {{ line.strip()[2:] }}
    {% endif %}{% endfor %}]{% else %}none{% endif %}
)
{% endfor %}
{% endif %}
{% endif %}

{% if presentations %}
= Presentations

== Invited Presentations

{% for pres in presentations %}
{% if pres.invited %}
#presentation-item(
  conference: "{{ pres.conference }}",
  location: "{{ pres.location }}",
  date: "{{ pres.date }}",
  title: {% if pres.title %}"{{ pres.title }}"{% else %}none{% endif %}
)

{% endif %}
{% endfor %}

{% endif %}

{% macro format_year(year) %}{% if year is iterable and year is not string %}{% if year | length == 1 %}{{ year[0] }}{% else %}{{ year[0] }}-{{ year[-1] }}{% endif %}{% else %}{{ year }}{% endif %}{% endmacro %}

{% macro format_name(name) %}{% if name is iterable and name is not string %}{{ name | join(' \\\n') }}{% else %}{{ name }}{% endif %}{% endmacro %}

{%macro format_role(s) %}{% if s['main-supervisor'] %}"co-supervisor, main supervisor: {{ format_name(s['main-supervisor']) }}"{% else %}none{% endif %}{% endmacro %}

{% if students %}
= Supervision

{% if students.postdocs %}
== Post-doctoral researchers

{% for s in students.postdocs %}
#student-entry(
  name: [{{ format_name(s.name) }}],
  year: "{{ format_year(s.year) }}",
  title: "{{ s.title }}",
  role: {{ format_role(s) }},
  url: {% if s.link %}"{{ s.link }}"{% else %}none{% endif %}
)
{% endfor %}
{% endif %}

{% if students.phd %}
#v(0.5em)
== PhD students

{% for s in students.phd %}
#student-entry(
  name: [{{ format_name(s.name) }}],
  year: "{{ format_year(s.year) }}",
  title: "{{ s.title }}",
  role: {{ format_role(s) }},
  url: {% if s.link %}"{{ s.link }}"{% else %}none{% endif %}
)
{% endfor %}
{% endif %}

{% if students.forskerlinje %}
#v(0.5em)
== Research Line students (forskerlinje)

{% for s in students.forskerlinje %}
#student-entry(
  name: [{{ format_name(s.name) }}],
  year: "{{ format_year(s.year) }}",
  title: "{{ s.title }}",
  role: {{ format_role(s) }},
  url: {% if s.link %}"{{ s.link }}"{% else %}none{% endif %}
)
{% endfor %}
{% endif %}

{% if students.msc %}
#v(0.5em)
== Master students

{% for s in students.msc %}
#student-entry(
  name: [{{ format_name(s.name) }}],
  year: "{{ format_year(s.year) }}",
  title: "{{ s.title }}",
  role: {{ format_role(s) }},
  url: {% if s.link %}"{{ s.link }}"{% else %}none{% endif %}
)
{% endfor %}
{% endif %}

{% if students.profesjon %}
#v(0.5em)
== Professional students (Hovedoppgave)

{% for s in students.profesjon %}
#student-entry(
  name: [{{ format_name(s.name) }}],
  year: "{{ format_year(s.year) }}",
  title: "{{ s.title }}",
  role: {{ format_role(s) }},
  url: {% if s.link %}"{{ s.link }}"{% else %}none{% endif %}
)
{% endfor %}
{% endif %}

{% if students.bsc %}
#v(0.5em)
== Bachelor students

{% for s in students.bsc %}
#student-entry(
  name: [{{ format_name(s.name) }}],
  year: "{{ format_year(s.year) }}",
  title: "{{ s.title }}",
  role: {{ format_role(s) }},
  url: {% if s.link %}"{{ s.link }}"{% else %}none{% endif %}
)
{% endfor %}
{% endif %}

{% if students.exchange %}
#v(0.5em)
== Exchange students and Interns

{% for s in students.exchange %}
#student-entry(
  name: [{{ format_name(s.name) }}],
  year: "{{ format_year(s.year) }}",
  title: "{{ s.title }}",
  role: {{ format_role(s) }},
  url: {% if s.link %}"{{ s.link }}"{% else %}none{% endif %}
)
{% endfor %}
{% endif %}

{% endif %}

{% if teaching %}
#v(1em)
= Teaching

{% for inst in teaching.institutions %}
#resume-entry(
  title: [Lectures and supervision ({{ inst.name }})],
  location: "{{ inst.location }}",
  date: {% if inst.date %}"{{ inst.date }}"{% else %}""{% endif %},
  description: ""
)

#resume-item[
{% for level in inst.levels %}
*{{ level.level }}*

{% for course in level.courses -%}
- {{ course.name }}{% if course.code %} #text(fill: luma(120))[#smallcaps[({{ course.code }})]]{% endif %}{% if course.date %} -- {{ course.date }}{% endif %}{% if course.description %}: {{ course.description }}{% endif %}

{% endfor %}
{% endfor %}
]

{% endfor %}
{% endif %}

{% if activities and activities.sections %}
#v(1em)
= Service and Leadership

{% for section in activities.sections %}
== {{ section.title }}

{% for entry in section.entries %}
#dated-entry(
  title: "{{ entry.description }}",
  date: "{{ entry.year }}",
  amount: "",
  description: none,
  url: {% if entry.link %}"{{ entry.link }}"{% else %}none{% endif %}
)
{% endfor %}

{% endfor %}
{% endif %}

{% if skills %}
#v(1em)
= Skills

{% if skills.experimental_methods %}
*Experimental Methods* \
{{ skills.experimental_methods | join(', ') }}
{% endif %}

{% if skills.programming %}
#v(0.5em)
*Programming Languages* \
_Very Good:_ {{ skills.programming.very_good | join(', ') }} \
_Good:_ {{ skills.programming.good | join(', ') }} \
_Moderate:_ {{ skills.programming.moderate | join(', ') }}
{% endif %}

{% if skills.computing %}
#v(0.5em)
*Computing* \
{{ skills.computing | join(', ') }}
{% endif %}

= Languages

{% for lang in skills.languages %}
*{{ lang.language }}* ({{ lang.level }}) \
{% endfor %}

{% if skills.sports %}
= Interests

{{ skills.sports | join(', ') }}
{% endif %}

{% endif %}
