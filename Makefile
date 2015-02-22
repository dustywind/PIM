TEX=pdflatex
DIAEXPORT=dia --filter png
CPY=cp
RM=rm -vR

all: loesung cpy

clean: ; $(RM) ./*.aux ./*.log ./*.out ./*.toc ./inc/p*/*.aux 

loesung: graphiken loesung.tex ; $(TEX) loesung.tex ;

graphiken: p1_umlaufgabe p7_maschinenfehler p7_kartenreservierung

p1_umlaufgabe: ./inc/p1/p1_umlaufgabe.dia ; $(DIAEXPORT) --export ./inc/p1/p1_umlaufgabe.png --size 563x412 ./inc/p1/p1_umlaufgabe.dia

p7_maschinenfehler: ./inc/p7/p7_maschinenfehler.dia ; $(DIAEXPORT) --export ./inc/p7/p7_maschinenfehler.png --size 677x ./inc/p7/p7_maschinenfehler.dia

p7_kartenreservierung: ./inc/p7/p7_kartenreservierung.dia ; $(DIAEXPORT) --export ./inc/p7/p7_kartenreservierung.png --size 649x823 ./inc/p7/p7_kartenreservierung.dia

cpy: loesung ; $(CPY) ./loesung.pdf /media/data/Dropbox/AktuellesSemester/PIM/loesung_praxis.pdf


