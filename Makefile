CC	=	gcc

BASE_FLAGS	=	-Wall -pedantic -D_DEFAULT_SOURCE

CFLAGS	=	$(BASE_FLAGS) -O3 -DNDEBUG
BUILD	=	TickoaTTwo

CFLAGS_DEBUG	=	$(BASE_FLAGS) -DDEBUG -O0 -g -pg


all:	$(BUILD)

clean:
	/bin/rm -f $(BUILD) *.o

TickoaTTwo:	main.o dep.o
	$(CC) main.o dep.o -o TickoaTTwo

debug:	CFLAGS = $(CFLAGS_DEBUG)
debug:	TickoaTTwo

main.o:	dep.h
	$(CC) $(CFLAGS) -c -o main.o main.c

dep.o:	dep.h
	$(CC) $(CFLAGS) -c -o dep.o dep.c
