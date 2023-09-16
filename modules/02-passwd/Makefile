.PHONY: all
all: notes.pdf slides.pdf

LATEXFLAGS+=	-shell-escape

SRC+=		preamble.tex
SRC+=		abstract.tex contents.tex

DEPENDS+=	objectives.tex
FIGS+=		fig/password_strength.png
FIGS+=		fig/password_reuse.png

notes.pdf: notes.tex
notes.pdf: ${SRC} ${DEPENDS} ${FIGS}

slides.pdf: slides.tex
slides.pdf: ${SRC} ${DEPENDS} ${FIGS}

objectives.tex: ../../course-design/objectives.tex

${DEPENDS}:
	${LN} $< $@

${FIGS}:
	${MAKE} -C $(dir $@) $(notdir $@)


.PHONY: clean
clean:
	${RM} notes.pdf slides.pdf
	${RM} ${DEPENDS}
	${MAKE} -C fig clean


INCLUDE_MAKEFILES=../../makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
