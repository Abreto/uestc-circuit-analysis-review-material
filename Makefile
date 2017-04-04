# Written by Abreto<m@abreto.net>
JOBNAME=ucarm
SRCDIR=src/
MAINTEX=$(SRCDIR)main.tex
TEXSRCS=$(MAINTEX)

all:$(JOBNAME).pdf

$(JOBNAME).pdf: $(TEXSRCS)
	xelatex -jobname=$(JOBNAME) $(MAINTEX)

clean:
	rm $(JOBNAME).aux $(JOBNAME).log $(JOBNAME).pdf
