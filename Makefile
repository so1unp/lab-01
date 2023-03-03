CC=gcc
BIN=./bin
CFLAGS=-g -std=c99 -pedantic -Wall -Wextra -Werror -Wshadow -Wconversion -Wunreachable-code

PROG=ej1 ej2-1.5 ej2-1.8 ej2-1.13 ej2-1.15 ej2-1.19 ej3-5.3 ej3-6.4

LIST=$(addprefix $(BIN)/, $(PROG))

.PHONY: all
all: $(LIST)

$(BIN)/%: %.c
	$(CC) $(CFLAGS) -o $@ $<

%: %.c
	$(CC) $(CFLAGS) -o $(BIN)/$@ $< 

.PHONY: clean
clean:
	rm -f $(LIST)
