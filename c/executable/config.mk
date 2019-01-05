
# Configuration file for the user to change
SRC_DIR = src
BIN_DIR = bin

INCLUDE_DIRS = $(SRC_DIR)

DEBUG ?= false
DEBUG_MACRO_NAME = DEBUG

CC = gcc
CSTATICLIBS =
CLIBS =
CFLAGS = --std=c11 $(addprefix -l,$(CLIBS)) $(addprefix -I,$(INCLUDE_DIRS))

EXECUTABLE_NAME = test_exec
INSTALL_PATH = /usr/local/bin/$(EXECUTABLE_NAME)

RM = rm -f
MKDIR = mkdir
CP = cp
