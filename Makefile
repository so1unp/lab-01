CC=gcc
BIN=./bin
CFLAGS=-g -Wall -Wextra -Wshadow -Wconversion -Wunreachable-code
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

dist:
	git archive --format zip --output ${USER}-lab01.zip master
