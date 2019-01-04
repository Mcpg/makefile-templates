SRC_DIR = src
BIN_DIR = bin

CC = gcc
CFLAGS = --std=c11 -I$(SRC_DIR)

WIN_EXECUTABLE_NAME = test.exe
OTHER_EXECUTABLE_NAME = test

ifeq ($(OS),Windows_NT)
	EXECUTABLE_NAME = $(WIN_EXECUTABLE_NAME)
else
	EXECUTABLE_NAME = $(OTHER_EXECUTABLE_NAME)
endif

include sources.mk
BINARIES = $(patsubst %.c,$(BIN_DIR)/%.o,$(SOURCES))

all: $(EXECUTABLE_NAME)

clean:
	$(RM) $(BINARIES) $(EXECUTABLE_NAME)

.PHONY: all clean

$(BIN_DIR)/%.o: $(SRC_DIR)/%.c
	-mkdir $(dir $@)
	$(CC) $(CFLAGS) -o $@ -c $^

$(EXECUTABLE_NAME): $(BINARIES)
	-mkdir $(dir $@)
	$(CC) $(CFLAGS) -o $@ $<
