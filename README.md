# CV based on Jinja2 templates

- `data` contains json/YAML files with the data
- `templates` contains the CV templates in Jinja2 templates

## Publications

Are managed in Zotero. I export them to the files under `data/bib` using the BetterBibLatex plugin.

The preprints from my lab are all on PsyArxiv, other preprints are maintained separately in `data/bib/preprints.bib`.

For PsyArXiv:

- Update the preprints using `update_psyarxiv.py` (goes into `data/bib/psyarxiv.bib`)

## Other info

All other information is maintained in the YAML files under `data/`. These contain a rather comprehensive list of my work-related activities and are rendered into the CV through the templates under `templates`.


## Compile and add CV versions

- compile the CV: `python rendercv --compile`

To create a new CV, create a new template by copying `base.j2.typ` to a new name and adapt it (move around sections etc).

To select certain elements from the `yaml` files, just copy them to a new directory and remove the ones shat should not show up.


## Automatic integration

There is a Github Action that compiles the CV for each commit and re-commits the rendered PDF. From my website or anywhere else, I can link to the final PDF like here (always updated):

<https://github.com/ihrke/cv-mittner/raw/main/cv_matthias.pdf>

So when adding new info to the CV, the workflow is:

```
# get the most up-to-date CV compiled by Github
$ git pull 
# make Zotero exports of the added pubs and store under `data/bib/` in the correct bibtex file
# update PsyArxiv preprints in data/bib/psyarxiv.bib
$ python update_psyarxiv.py 
$ ... # make any other changes
$ git commit -a -m "added a new ref"
$ git push
```