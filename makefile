all: bin/program
	./bin/program

bin/program: build/board.o build/output_board.o build/makemove.o build/checks.o
	mkdir -p bin
	gcc -Wall build/board.o build/output_board.o build/makemove.o build/checks.o -o bin/program

build/board.o: src/board.c
	mkdir -p build
	gcc -Wall -c src/board.c -o build/board.o

build/output_board.o: src/output_board.c
	mkdir -p build
	gcc -Wall -c src/output_board.c -o build/output_board.o

build/makemove.o: src/makemove.c
	mkdir -p build
	gcc -Wall -c src/makemove.c -o build/makemove.o

build/checks.o: src/checks.c
	mkdir -p build
	gcc -Wall -c src/checks.c -o build/checks.o




.PHONY: clean
clean: 
	rm -rf build bin
