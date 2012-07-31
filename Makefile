all: libapachesque.so apesq

CFLAGS = -Wall -ggdb3 -O0 -std=c89 -pedantic

apesq: src/apesq.c src/test.c
	$(CC) $(CFLAGS) -o $@ $^

libapachesque.so: src/apesq.c
	$(CC) -shared -Wall -ggdb3 -O2 -fPIC -o $@ $^
