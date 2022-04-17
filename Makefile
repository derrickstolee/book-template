# All is the default
all::

.PHONY: phony

WRITING=writing

FIGURES=$(shell find $(WRITING) -name '*.svg')
BODY=$(shell find $(WRITING)/chapters -name '[0-9][0-9]*.md' | sort -n)
PREAMBLE=$(shell ls $(WRITING)/[0-9][0-9]*.md | sort -n)
MARKDOWN=$(WRITING)/METADATA.yml $(PREAMBLE) $(BODY)

PANDOCFLAGS =                                   \
  --table-of-contents                           \
  --from=markdown                               \
  --number-sections                             \
  --highlight-style=monochrome                  \
  -V mainfont="Palatino"                        \
  -V documentclass=report                       \
  -V papersize=letter                           \
  -V geometry:margin=1in

DEPENDENCIES=$(FIGURES) $(MARKDOWN) Makefile

all:: phony output/book.epub output/book.pdf

output/%.pdf: $(DEPENDENCIES) output
	pandoc $(MARKDOWN) -o $@ $(PANDOCFLAGS)

output/%.epub: $(DEPENDENCIES) output
	pandoc $(MARKDOWN) -o $@ $(PANDOCFLAGS)

output/%.txt: $(DEPENDENCIES) output
	pandoc $(MARKDOWN) -o $@ $(PANDOCFLAGS)

open-pdf: output/book.pdf  $(DEPENDENCIES)
	open output/book.pdf

output:
	mkdir ./output

clean: phony
	rm -rf ./output
	mkdir ./output

open: phony output/book.pdf
	open output/book.pdf
