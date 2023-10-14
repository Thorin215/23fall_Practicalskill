all: navier-stokes.pdf 

navier-stokes.pdf: navier-stokes.tex 
	xelatex navier-stokes
	bibtex navier-stokes
	xelatex navier-stokes
	xelatex navier-stokes

clean:
	rm -f *.aux *.log *.pdf \
	*.toc *.snm *.nav *.out \
	*.thm *.bbl *.ps *.dvi *.blg \
	*.bcf *.xml

.PHONY: all clean
