all:
	latexmk -f -bibtex -pdf -lualatex -outdir=output frelseren

clean:
	latexmk -C -bibtex -pdf -outdir=output frelseren
	rm -f output/* *.aux *.bcf *.lof *.log *.*glg *.*glo *.*gls \
	*.out *.pdf *.toc *.idx *.lol *.ind *.ist *.ilg *~

spell:
	aspell -t -d nb -c mariam.tex
