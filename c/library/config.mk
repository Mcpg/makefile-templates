
# Configuration file for the user to change
SRC_DIR = src
INCLUDE_DIR = include
BIN_DIR = bin

# Additional include dirs (for another libs)
INCLUDE_DIRS = $(INCLUDE_DIR)

DEBUG ?= false
DEBUG_MACRO_NAME = DEBUG

CC = gcc
CSTATICLIBS =
CLIBS =
CFLAGS = --std=c11 $(addprefix -l,$(CLIBS)) $(addprefix -I,$(INCLUDE_DIRS))

AR = ar
ARFLAGS = rcs

SHAREDLIB_FILENAME = test.so
STATICLIB_FILENAME = test.a 
HEADER_INSTALL_PATH = /usr/local/include
LIBRARY_INSTALL_PATH = /usr/local/lib/$(SHAREDLIB_FILENAME)

RM = rm -f
MKDIR = mkdir
CP = cp
REC_CP = cp -R
REC_RM = rm -rf