CC=g++
CFLAGS=-lunit++ -Wall
LDFLAGS=
SOURCES=tests.cpp
EXECUTABLE=tests

all: 
	$(CC) -o $(EXECUTABLE) $(SOURCES) $(CFLAGS)

clean:
	rm -rf *.o $(EXECUTABLE)