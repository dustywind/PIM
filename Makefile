TEX=pdflatex
CPY=cp

all: loesung cpy

loesung: loesung.tex ; $(TEX) loesung.tex ;

cpy: loesung ; $(CPY) ./loesung.pdf /media/data/Dropbox/AktuellesSemester/PIM/loesung_uebung.pdf
