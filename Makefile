INCS = -I/usr/local/include
LIBS = -L/usr/local/lib

CFLAGS = -ggdb -O0 -pedantic-errors -Wall -Wextra -Werror -ansi
LDFLAGS = ${LIBS}

CC = cc

SRC = main.c
OBJ = $(SRC:.c=.o)

all: tinylisp

.c.o:
	$(CC) -c $(CFLAGS) $<

tinylisp: $(OBJ)
	$(CC) -o $@ $(OBJ) $(LDFLAGS)

clean:
	rm -f tinylisp $(OBJ)

.PHONY: all clean
