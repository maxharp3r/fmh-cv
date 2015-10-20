.PHONY: all watch cv.pdf nsf-biosketch.pdf

all: cv.pdf nsf-biosketch.pdf

cv.pdf: FORCE
	pandoc -f markdown -o harper-cv.pdf --template=default.latex --variable geometry=margin=1in cv.md

nsf-biosketch.pdf: FORCE
	pandoc -f markdown -o harper-nsf-biosketch.pdf --template=default.latex --variable geometry=margin=0.75in nsf-biosketch.md

watch:
	fswatch-run *.md 'make'

FORCE:

