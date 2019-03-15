CC = g++

all: GitTest

GitTest: main.o something.o anotherClass.o
	$(CC) -o GitTest main.o something.o anotherClass.o

main.o: main.cpp something.h  anotherClass.h
	$(CC) -c main.cpp

something.o: something.cpp something.h
	$(CC) -c something.cpp

anotherClass.o: anotherClass.cpp anotherClass.h
	$(CC) -c anotherClass.cpp

clean:
	rm -rf *.o GitTest
