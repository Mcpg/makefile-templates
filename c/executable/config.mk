
# Configuration file for the user to change
SRC_DIR = src
BIN_DIR = bin

DEBUG ?= false
DEBUG_MACRO_NAME = DEBUG

CC = gcc
CFLAGS = --std=c11 -I$(SRC_DIR)

EXECUTABLE_NAME = test_exec
INSTALL_PATH = /usr/local/bin/$(EXECUTABLE_NAME)

RM = rm -f
MKDIR = mkdir
CP = cp
