functions.o: lib.s
	as -o functions.o lib.s

main.o: tetris.c
	gcc -c -o main.o tetris.c -std=c99 

main: main.o functions.o
	gcc -o main main.o functions.o	

run: main
	./main

teste: main
	gdb main