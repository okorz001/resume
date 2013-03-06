date := $(shell date +%Y-%m-%d)
srcs := template.tex resume.tex references.tex

.PHONY: lite
lite: doc-lite.tex $(srcs)
	pdflatex $<
	mv doc-lite.pdf resume_okorz_$(date).pdf

.PHONY: full
full: doc-full.tex $(srcs)
	pdflatex $<
	mv doc-full.pdf resume_okorz_$(date).pdf

.PHONY: clean
clean:
	git clean -fdx || rm *.aux *.log *.out *.pdf
