.PHONY: all
all: notes.pdf slides.pdf

SRC+=		preamble.tex
SRC+=		abstract.tex contents.tex
SRC+= 		bibliography.bib

notes.pdf: notes.tex
notes.pdf: ${SRC}

slides.pdf: slides.tex
slides.pdf: ${SRC}


bibliography.bib: bibliography.bib(../methods-overview/scientific-method.bib)


.PHONY: clean
clean:
	${RM} notes.pdf slides.pdf
	${RM} bibliography.bib


INCLUDE_MAKEFILES=../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
