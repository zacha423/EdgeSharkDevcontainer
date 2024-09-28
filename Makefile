COMPILER=gcc
CFLAGS=-Wall -g

all: bin/main

bin:
	mkdir -p bin

bin/main.o: bin src/main.c
	${COMPILER} ${CFLAGS} -c src/main.c -o bin/main.o

bin/main: bin bin/main.o
	${COMPILER} ${CFLAGS} bin/main.o -o bin/main

clean:
	rm -f bin/*