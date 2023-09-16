.PHONY: all
all: notes.pdf slides.pdf

LATEXFLAGS+=	-shell-escape

SRC+=		preamble.tex
SRC+=		abstract.tex contents.tex

DEPENDS+=	objectives.tex

notes.pdf: notes.tex
notes.pdf: ${SRC} ${DEPENDS}

slides.pdf: slides.tex
slides.pdf: ${SRC} ${DEPENDS}

objectives.tex: ../../course-design/objectives.tex

${DEPENDS}:
	${LN} $< $@


.PHONY: clean
clean:
	${RM} notes.pdf slides.pdf
	${RM} ${DEPENDS}


INCLUDE_MAKEFILES=../../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
