.PHONY: all watch cv.pdf nsf-biosketch.pdf

all: cv.pdf nsf-biosketch.pdf

cv.pdf: FORCE
	pandoc -f markdown -o harper-cv.pdf --template=default.latex --variable geometry=margin=1in src/cv.md

nsf-biosketch.pdf: FORCE
	pandoc -f markdown -o harper-nsf-biosketch.pdf --template=default.latex --variable geometry=margin=0.75in src/nsf-biosketch.md

watch:
	fswatch ./src/ | while read -r changed_path; do make all; done

FORCE:
