LATEX_MAIN := Thesis.tex
LATEX_OUTPUT := Thesis.pdf
LATEX_FLAGS := -interaction=nonstopmode -halt-on-error
LATEX_COMPILER := pdflatex
BIB_COMPILER := bibtex

all: $(LATEX_OUTPUT)

$(LATEX_OUTPUT): $(LATEX_MAIN)
	$(LATEX_COMPILER) $(LATEX_FLAGS) $(LATEX_MAIN)
	$(BIB_COMPILER) $(basename $(LATEX_MAIN)) || true
	$(LATEX_COMPILER) $(LATEX_FLAGS) $(LATEX_MAIN)
	$(LATEX_COMPILER) $(LATEX_FLAGS) $(LATEX_MAIN)

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.lof *.lot *.fls *.fdb_latexmk *.synctex.gz *.pdf
