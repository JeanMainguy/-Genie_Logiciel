sources= carre.cpp
headers=fichier.h
objets=$(sources:.cpp=.o)


Carre : $(objets)
	g++ $^ -o $@ -l QtGui -l QtCore -l qcustomplot -L /net/cremi/jmainguy/M2/Geni_logiciel/TP1/qcustomplot/sharedlib/compilation/

carre.o: carre.cpp
	g++ -c $^ -o $@ -I /usr/include/qt4/QtGui/ -I /usr/include/qt4/ -I /usr/include/qt4/QtCore/ -I /net/cremi/jmainguy/M2/Geni_logiciel/TP1/qcustomplot/

clean:
	rm -f *r *.o

mrproper:clean
	rm -f Carre
