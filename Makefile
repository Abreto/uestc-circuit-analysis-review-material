# Written by Abreto<m@abreto.net>
JOBNAME=ucarm
SRCDIR=src/
MAINTEX=main.tex
PARTINDEX=part*.tex
CHAPTERCONTENTS=chapters/ch*.tex
TEXSRCS=$(SRCDIR)$(MAINTEX) $(SRCDIR)$(PARTINDEX) $(SRCDIR)$(CHAPTERCONTENTS)

all:$(JOBNAME).pdf

$(JOBNAME).pdf: $(TEXSRCS)
	cd $(SRCDIR); xelatex -jobname=$(JOBNAME) $(MAINTEX)
	cd $(SRCDIR); xelatex -jobname=$(JOBNAME) $(MAINTEX)
	mv $(SRCDIR)$(JOBNAME).pdf .

clean:
	rm $(SRCDIR)ucarm.aux $(SRCDIR)ucarm.log $(SRCDIR)ucarm.toc
	rm $(JOBNAME).pdf
