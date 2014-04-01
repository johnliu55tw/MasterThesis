MAIN=thesis
LATEX=xelatex
BIBTEX=bibtex
RM=rm -f

.SUFFIXES: .tex

all: $(MAIN).pdf

$(MAIN).pdf: *.tex nyustthesis.cls
	$(LATEX) $(MAIN)
	$(BIBTEX) $(MAIN)
	$(LATEX) $(MAIN)
	$(LATEX) $(MAIN)

clean:
	$(RM) *.log *.aux *.dvi *.lof *.lot *.toc *.bbl *.blg

clean-pdf: 
	$(RM) *.pdf

clean-all: clean clean-pdf
