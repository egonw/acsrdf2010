all: editorial.pdf
	@echo "********* Latex Summary *********"
	@grep -i error editorial.log || true
	@grep -i warning editorial.log || true

update: editorial.pdf

#refresh.bibtex:
#	@touch refresh.bibtex

#editorial.bib: refresh.bibtex custom.bib
#	@echo "" > editorial.bib
#	@cat custom.bib >> editorial.bib
#	@wget -O - http://www.citeulike.org/bibtex/group/14373 >> editorial.bib
#	@touch refresh.bibtex

editorial.bbl: editorial.bib
	pdflatex editorial || true
	bibtex editorial || true

editorial.pdf: editorial.tex editorial.bbl
	pdflatex editorial.tex
	pdflatex editorial.tex
	pdflatex editorial.tex

distclean: clean

clean:
	rm -f *.bbl *.aux editorial.pdf *.blg *.log *.ps *.fff *.lof *.lot *.ttt *.dvi *~ *.Rout *.out
