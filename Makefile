CC=gcc
BIN=./bin
CFLAGS=-g -std=c99 -pedantic -Wall -Wextra -Wshadow -Wconversion -Wunreachable-code
LIBS=-lpthread

SRC = $(wildcard *.c)
PROGS=$(SRC:.c=)

LIST=$(addprefix $(BIN)/, $(PROGS))

.PHONY: all
all: $(LIST)

$(BIN)/%: %.c
	$(CC) $(CFLAGS) -o $@ $<

%: %.c
	$(CC) $(CFLAGS) -o $(BIN)/$@ $< 

.PHONY: clean
clean:
	rm -f $(LIST)
