.phony: clean rebuild

PDFS := $(patsubst %.md,%.md.pdf,$(wildcard *.md))

DOCX := $(patsubst %.md,%.docx,$(wildcard *.md))
# DOCX=$(SRC:.md=.docx)

PREFIX = /Users/lmp/Dropbox/AcademicWork/Pandoc_Templates

# CSL = chicago-authordate-bibliography
# CSL = chicago-library-list
# CSL = chicago-author-date
# CSL = chicago-annotated-bibliography
CSL = chicago-fullnote-bibliography
# CSL = chicago-note-bibliography

## Bibliography

BIB = /Users/lmp/Dropbox/AcademicWork/Bibs/refs.bib

all : $(PDFS) $(DOCX)

%.md.pdf : %.md
	pandoc --pdf-engine=xelatex $< \
	--template=$(PREFIX)/Manuscripts/workingpaper.tex \
	--filter pandoc-citeproc \
	--csl=$(PREFIX)/CSL/$(CSL).csl \
	--bibliography=$(BIB) \
	 -o $@ && open $@ -a skim

# %.docx : %.md
# 	pandoc $< \
# 	-s -S --filter pandoc-citeproc \
# 	--csl=$(PREFIX)/csl/$(CSL).csl \
# 	--bibliography=$(BIB) -o $@ && open $@

rebuild:
	make clean && make

clean:
	rm -rf *.pdf *.log *.aux

# -r markdown+simple_tables+table_captions+yaml_metadata_block
