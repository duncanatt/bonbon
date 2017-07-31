PROJECT=demo
TEX=xelatex
BIBTEX=bibtex
BUILDTEX=$(TEX) $(PROJECT).tex

all:
	$(BUILDTEX)
	#$(BIBTEX) $(PROJECT)
	$(BUILDTEX)
	$(BUILDTEX)
clean-all:
	rm -f *.dvi *.ps *.eps *.pdf *.log *.bak *.aux *.bbl *.blg *.idx *.toc *.out *.synctex.gz *.snm *.nav *.vrb *~

clean:
	rm -f *.log *.bak *.aux *.bbl *.blg *.idx *.toc *.out *.synctex.gz *.snm *.nav *.vrb *~
