#
# critbit89 - A crit-bit tree implementation for strings in C89
# Written by Jonas Gehring <jonas@jgehring.net>
#

CFLAGS = -Wall -std=c89 -pedantic -g
LIBS = 
#CC = gcc
#CFLAGS += -fprofile-arcs -ftest-coverage
#LDFLAGS += -fprofile-arcs -ftest-coverage

all: test

test: critbit.o test.o
	$(CC) $(LDFLAGS) critbit.o test.o $(LIBS) -o test

.c.o:
	$(CC) -c $(CFLAGS) $< -o $@

clean:
	rm -rf *.o *.gcda *.gcno test
