filename=Resume_Peilong

all:	$(filename).pdf
	
$(filename).pdf:	$(filename).tex \
	structure.tex
	pdflatex $(filename)

#$(filename).pdf:	$(filename).dvi
#	dvips -f -tletter -Ppdf -G0 $(filename) > $(filename).ps
#	ps2pdf -dEmbedAllFonts=true -dSubsetFonts=true -dEPSCrop=true $(filename).ps $(filename).pdf


clean:
	rm -f *.ps *.spl *.dvi *.aux *.log $(filename).pdf *.bbl *.blg *.out *~
