# Autokey Documentation

Built using [sphinx]().

Uses the [sphinx autodoc](https://www.sphinx-doc.org/en/master/usage/extensions/autodoc.html) extension to automatically generate API documentation. This module imports the modules and reads the documentation for each function and generates the API documentation based on that.

Uses the [sphinx epytext]() extension to convert older style epydoc documentation format to sphinx readable.

I also have it set to use [recommonmark]() in case any one wants to use markdown really badly.

It also uses the default [sphinx.ext.viewcode](https://www.sphinx-doc.org/en/master/usage/extensions/viewcode.html) to insert links to the related soure code.




## Local testing
You'll need the following python packages (and dependencies). From my command history getting it up and running;
- `pip install Sphinx`
- `pip install recommonmark`
- `pip install sphinx-rtd-theme`
- `pip install sphinx-epytext`
- `sphinx-build -b html . ./_build`


## Github Actions
Basic workflow:
* Installs Git
* Clones autokey/autokey (master branch)
* Installs Autokey using `pip install .` in autokey repo
* Installs sphinx
    * `pip install sphinx recommonmark sphinx-rtd-theme sphinx-epytext`
* Builds sphinx site
    * `sphinx-build -a -E -b html ./ docs`
* Uploads pages Artifact (docs output folder)
* Deploys to Github Pages for this repository


## TODO
There is a plugin that supports versioned documentation, [sphinxcontrib-multiversion](https://github.com/Holzhaus/sphinx-multiversion) which seems to be decently well maintained.

Going forward we should use sphinx syntax in comments instead of older epytext.;
https://www.sphinx-doc.org/en/master/usage/restructuredtext/basics.html

For more information on the new comment markup.

One quirk I noticed in the `keyboard` api page was that the enum for phrase send types (`SendMode`) did not respect the line formatting unless the were explicitly placed with `\\n`


