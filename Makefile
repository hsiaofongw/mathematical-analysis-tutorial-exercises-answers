all: main.pdf toc

main.pdf: main.tex
	xelatex --interaction=batchmode main.tex

toc: main.tex
	xelatex --interaction=batchmode main.tex
	xelatex --interaction=batchmode main.tex

clean: main.pdf main.aux main.toc main.log
	rm main.pdf
	rm main.aux
	rm main.toc
	rm main.log