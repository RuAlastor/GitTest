CC = g++

all: GitTest

GitTest: main.o something.o
	$(CC) -o GitTest main.o something.o

main.o: main.cpp something.h
	$(CC) -c main.cpp

something.o: something.cpp something.h
	$(CC) -c something.cpp

clean:
	rm -rf *.o GitTest
