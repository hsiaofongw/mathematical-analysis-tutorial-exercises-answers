all: main.pdf toc

main.pdf: main.tex
	xelatex --interaction=batchmode main.tex

toc: main.tex
	xelatex --interaction=batchmode main.tex
	xelatex --interaction=batchmode main.tex

release: main.pdf
	cp main.pdf "dist/数学分析教程习题解析.pdf"

publish: main.pdf
	git push github master

clean: main.pdf main.aux main.toc main.log
	rm main.pdf
	rm main.aux
	rm main.toc
	rm main.log