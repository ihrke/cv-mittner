# CV based on Jinja2 templates

- `data` contains json/YAML files with the data
- `templates` contains the CV templates in Jinja2 templates

- Update the preprints using `update_psyarxiv.py` (goes into `data/bib/psyarxiv.bib`)
- other preprints go into `data/bib/preprints.bib` (e.g., BioRxiv etc)

- compile the CV: `python rendercv --compile`

To create a new CV, create a new template by copying `base.j2.typ` to a new name and adapt it (move around sections etc).

To select certain elements from the `yaml` files, just copy them to a new directory and remove the ones shat should not show up.