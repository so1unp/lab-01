CC=gcc
BIN=./bin
CFLAGS=-Wall -Werror -g

PROG=ej1 ej2-1.5 ej2-1.8 ej2-1.13 ej2-1.15 ej2-1.19 ej3-5.3 ej3-6.4

LIST=$(addprefix $(BIN)/, $(PROG))

.PHONY: all
all: $(LIST)

$(BIN)/%: %.c
	$(CC) -o $@ $< $(CFLAGS)

%: %.c
	$(CC) -o $(BIN)/$@ $< $(CFLAGS)

.PHONY: clean
clean:
	rm -f $(LIST)
