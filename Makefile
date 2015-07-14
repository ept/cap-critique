.SUFFIXES = .tex .bib .aux .bbl .dvi .ps .pdf

all:	cap-critique.pdf

cap-critique.pdf:	cap-critique.bbl
	pdflatex cap-critique
	pdflatex cap-critique

cap-critique.bbl:	references.bib cap-critique.aux
	bibtex cap-critique

cap-critique.aux:	*.tex
	pdflatex cap-critique

clean:
	rm -f *.{log,aux,out,bbl,blg,dvi,ps,pdf}
