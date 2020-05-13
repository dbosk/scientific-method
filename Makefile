.PHONY: all
all: scientific-method.pdf scientific-method-notes.pdf

SRC=	preamble.tex abstract.tex contents.tex scientific-method.bib

scientific-method.pdf: scientific-method.tex ${SRC}
scientific-method-notes.pdf: scientific-method-notes.tex ${SRC}


.PHONY: all
all: README.md

README.md: video.md reading.md
	echo "# The scientific method" > $@
	${CAT} $^ >> $@

reading.md: abstract.tex
	pandoc -s -t markdown_strict \
		-o $@ --bibliography scientific-method.bib $^


.PHONY: clean
clean:
	${RM} scientific-method.pdf scientific-method-notes.pdf
	${RM} reading.md


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
