LANGS= it en
TARGETS=$(addprefix VincenzoNesta_,$(LANGS))
PDF_TARGETS=$(addsuffix .pdf,$(TARGETS))
HTML_TARGETS=$(addsuffix .html,$(TARGETS))

all: pdf html

pdf: $(PDF_TARGETS) 

html: $(HTML_TARGETS) 

itacv: VincenzoNesta_it.pdf
engcv: VincenzoNesta_en.pdf

%.pdf: %.tex
	#lualatex -interaction=batchmode $<
	#lualatex -interaction=batchmode $<
	xelatex -interaction=batchmode $<
	xelatex -interaction=batchmode $<

%.html: %.pdf
	pdf2htmlEX --zoom=2 $<

clean:
	rm -f *.aux *.log *.out
	rm -f *.pdf

