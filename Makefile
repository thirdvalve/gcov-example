
CFLAGS=-Wall -W -pedantic -O0 -fprofile-arcs -ftest-coverage

all: gcov-example

gcov-example: 
	gcc $(CFLAGS) gcov-example.c -o gcov-example

test: gcov-example
	./gcov-example

clean: 
	rm -rf *.o *.gcno *.gcda gcov-example idir


