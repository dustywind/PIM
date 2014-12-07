TEX=pdflatex
CPY=cp
RM=rm -vR

all: loesung cpy

clean: ; $(RM) ./*.aux ./*.log ./*.out ./*.toc ./inc/*.aux 

loesung: loesung.tex ; $(TEX) loesung.tex ;

cpy: loesung ; $(CPY) ./loesung.pdf /media/data/Dropbox/AktuellesSemester/PIM/loesung_praxis.pdf
