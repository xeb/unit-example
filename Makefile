CC=g++
CFLAGS=-c -Wall
LDFLAGS=
MAIN_SOURCE=src/main.cpp
TEST_SOURCE=_tests/mathutil_tests.cpp
SOURCES=src/mathutil.cpp
OBJECTS=$(MAIN_SOURCE:.cpp=.o) $(SOURCES:.cpp=.o)
EXECUTABLE=main
TEST_EXECUTABLE=test

.PHONY: test

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o build/$@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@
	
clean:
	rm -rf build/*.o build/$(EXECUTABLE)
	rm -rf build/*.o build/$(TEST_EXECUTABLE)

$(TEST_EXECUTABLE):
	$(CC) -o build/$(TEST_EXECUTABLE) $(TEST_SOURCE) $(SOURCES) -lunit++ -Wall
	build/$(TEST_EXECUTABLE)