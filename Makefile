all: pres.html

pres.html:
	pandoc -t revealjs -s -o pres.html pres.md --incremental --css=style.css --slide-level=3 -V revealjs-url=./reveal.js/ --self-contained --embed-resources

pres.pdf:
	pandoc -t beamer -o pres.pdf pres.md --slide-level=0
