# Tutorials
Handouts and workflows as used in the tutorial session during user meetings. 

Build handout:
- compile PDF from `Handout/handout.tex` using XeLatex and BibTex (for citations) with `Handout` as working directory:
  `cd Handout && xelatex handout && bibtex handout && xelatex handout && xelatex handout`


Note:
- Please put only the handouts and workflows (small files) here (reset workflows during export). Installers, external tools, and example data should be kept in the releases.
- Please assign a Git tag for any special tutorial event with a separate release
- Make sure that the in- and output files in the workflows use paths relative to the knime://knime.mountpoint path (i.e. the workspace). That means download the Data from our server and
set the workspace in KNIME to the downloaded location, then everything should work out of the box.
