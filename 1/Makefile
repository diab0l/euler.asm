all:
	nasm -f elf64 main.asm
	gcc -o main main.o

run:	all
	./main

clean:
	rm -f main main.o
