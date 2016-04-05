all: pdf html

pdf: VincenzoNesta_it.pdf VincenzoNesta_en.pdf

html: VincenzoNesta_it.html VincenzoNesta_en.html

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

