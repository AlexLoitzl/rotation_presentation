all:
	pdflatex --shell-escape main
	biber main
	pdflatex --shell-escape main
