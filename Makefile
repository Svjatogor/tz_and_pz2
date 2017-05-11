all: ctz cdiplom canotate rename

diplom:
	texi2pdf pz.tex

tz:
	texi2pdf tz.tex
anotate:
	texi2pdf anotate.tex
	texi2pdf anotate.tex

cdiplom:
	TEXINPUTS=./gost2-105:$(TEXINPUTS) $(MAKE) diplom
	TEXINPUTS=./gost2-105:$(TEXINPUTS) $(MAKE) diplom

ctz:
	TEXINPUTS=./gost2-105:$(TEXINPUTS) $(MAKE) tz
	TEXINPUTS=./gost2-105:$(TEXINPUTS) $(MAKE) tz

canotate:
	TEXINPUTS=./gost2-105:$(TEXINPUTS) $(MAKE) anotate
	TEXINPUTS=./gost2-105:$(TEXINPUTS) $(MAKE) anotate

rename:
	mv pz.pdf Пояснительная_записка_Клевцов.pdf
	mv tz.pdf Техническое_Задание_Клевцов.pdf
	mv anotate.pdf Анотация_к_ВРБ_Клевцов.pdf
