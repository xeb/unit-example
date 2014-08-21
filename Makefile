CC=g++
CFLAGS=-c -Wall
LDFLAGS=
MAIN_SOURCE=main.cpp
TEST_SOURCE=_tests/mathutil_tests.cpp
SOURCES=mathutil.cpp
OBJECTS=$(MAIN_SOURCE:.cpp=.o) $(SOURCES:.cpp=.o)
EXECUTABLE=main
TEST_EXECUTABLE=test

.PHONY: test

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@
	
clean:
	rm -rf *.o $(EXECUTABLE)
	rm -rf *.o $(TEST_EXECUTABLE)

$(TEST_EXECUTABLE):
	$(CC) -o $(TEST_EXECUTABLE) $(TEST_SOURCE) $(SOURCES) -lunit++ -Wall
	./$(TEST_EXECUTABLE)