CC = gcc
CFLAGS = -Wall
SRCS = main.c
OBJS    = $(SRCS:.c=.o)
TARGET = program

$(TARGET): $(OBJS)
		$(CC) main.o -o $(TARGET)

$(OBJS): $(SRCS)
		$(CC) $(CFLAGS) -c $(SRCS)

run:
		./$(TARGET)

.PHONY: run
