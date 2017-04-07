INC_PATH=/home/wenjun/git/faas/include
CFLAGS=-I$(INC_PATH)


all:
	gcc $(CFLAGS) -c -fPIC     hello.c -o  hello.o
	gcc  hello.o  -shared -o  hello.so
	gcc $(CFLAGS) -o load_so  load_so.c -ldl