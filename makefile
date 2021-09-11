.PHONY: all watch cv resume nsf-biosketch

all: cv resume nsf-biosketch

cv: FORCE
	pandoc -f markdown -o harper-cv.pdf --template=default.latex --variable geometry=margin=1in src/header.md src/education.md src/professional.md src/teaching.md src/pubs.md src/grants.md src/research-service.md

resume: FORCE
	pandoc -f markdown -o harper-resume.pdf --template=default.latex --variable geometry=margin=1in src/header.md src/education.md src/professional.md src/pubs-short.md src/research-service-short.md

nsf-biosketch: FORCE
	pandoc -f markdown -o harper-nsf-biosketch.pdf --template=default.latex --variable geometry=margin=0.75in src/nsf-biosketch.md

watch:
	fswatch ./src/ | while read -r changed_path; do make all; done

FORCE:
