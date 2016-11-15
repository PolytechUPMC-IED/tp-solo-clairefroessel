SOURCES=convert.cpp create_map.cpp genre.cpp id3v2.cpp list.cpp
OBJS=${SOURCES:.cpp=.o}
ID3=/home/sasl/shared/main3/env/tools/lib
CC=g++
CFLAGS= -Wall
ID_=/home/sasl/eleves/main/3410438/Informatique/OPI/TP_solo/tp-solo-clairefroessel/id3v2-0.1.11/src/rep_makefile

all: %.o id3v2.o

%.o:%.cpp

	${CC} -I /home/sasl/shared/main3/env/tools/include-DIVERSION="\"${VERSION}"" -c -o $@ $<

id3v2.o: %.o

	${CC} -L${ID3} -Wall -o id3v2 convert.o $< id3v2.o genre.o -lid3 -lz

install:

	mkdir ${ID_}
	cp id3v2.o ID_

	nroff -man ../id3v2.1 > ${ID_}

clean:
	-rm -f ${OBJS} id3v2.o
distclean:
	-rm -f id3v2 id3v2.1


.PHONY: all clean

#question8: la commande export
