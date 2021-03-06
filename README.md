# friggeri-cv-letter

LaTeX template for CV and cover letter based on templates [friggeri-letter](https://github.com/mlda065/friggeri-letter) and [friggeri-cv](http://www.latextemplates.com/template/friggeri-resume-cv).


## The cover letter

Usage:

```bash
apt-get install texlive-xetex texlive-bibtex-extra biber
cd ./examples
xelatex example-letter && xelatex example-letter
```

All resumes should have a cover letter (so I'm told). It would be inconsistent to stick a normal LaTeX letter infront of a friggeri resume. Also, a normal LaTeX letter is not as eye-catching.

This letter class uses the same eye catching header as the Friggeri CV, and uses the Roboto font.

![Image of example-letter.pdf](./example-letter.jpg)


## The CV/resume

Usage:

```bash
apt-get install texlive-xetex texlive-bibtex-extra biber
cd ./examples
xelatex example-cv && biber example-cv && xelatex example-cv
```

Matthew modifications:

* The original one used the *HelveticaNeue* font family, which costs money. I changed it to use the almost identical *Roboto* font family, which is free. For convinience, I've included the *Robot* fonts in this repo.
* I adjusted the coloring of the headings in the resume, so the whole heading is coloured, not just the first 3 letters. To install the fonts, just double click on them in a file browser. Your operating system should then ask if you want to install them.
* I tinkered with the spacing of the column where you enter the years, so that new line breaks are automatic.
* I changed the link coloring, so that links are the same colour as everything else
* I got rid of the bibliography stuff, because who needs a bibliography in a resume?
* I adjusted the *aside* section (the contacts in the left margin), so now they appear on every page. The motivation for this is in case the pages of a hard copy get separated. In the example, the name appears in the contact details in all but the first page (because it's in the header on the first page). This template change means changing `aside` from an environment to a command. So look at the example to see the new syntax.

gw0 modifications:

* Reverted coloring of the headings to original fraggeri-cv template.
* Reverted the *aside* section to appear only on first page.
* Reverted to no spacing between first and last name in header.
* Adjusted margins for A4.
* Added font Source Sans Pro.
* Fix issues with bibliography.

![Image of example-cv.pdf](./example-cv.jpg)


## Acknowledgements and Copyleft

This code was adapted from the original code written by [Adrien Friggeri](http://www.friggeri.net/) under the [Creative Commons 3.0 licence](http://creativecommons.org/licenses/by-nc-sa/3.0/).

Roboto fonts come from [Google Fonts](https://www.google.com/fonts/specimen/Roboto) and are free under the [Apache 2.0 licence](http://www.apache.org/licenses/LICENSE-2.0.html).

Source Sans Pro fonts come from [Google Fonts](https://fonts.google.com/specimen/Source+Sans+Pro) and are free under the [Open Font License 1.1](https://scripts.sil.org/cms/scripts/page.php?item_id=OFL_web).

