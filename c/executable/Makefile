include config.mk

ifeq ($(DEBUG),true)
	CFLAGS += -g -D$(DEBUG_MACRO_NAME)
endif

include sources.mk
BINARIES = $(patsubst %.c,$(BIN_DIR)/%.o,$(SOURCES))

all: $(EXECUTABLE_NAME)

clean:
	$(RM) $(BINARIES) $(EXECUTABLE_NAME)

install: all
	$(CP) $(EXECUTABLE_NAME) $(INSTALL_PATH)

uninstall:
	-$(RM) $(INSTALL_PATH)

.PHONY: all clean install uninstall

$(BIN_DIR)/%.o: $(SRC_DIR)/%.c
	-$(MKDIR) $(dir $@)
	$(CC) $(CFLAGS) -o $@ -c $<

$(EXECUTABLE_NAME): $(BINARIES) $(CSTATICLIBS)
	-$(MKDIR) $(dir $@)
	$(CC) $(CFLAGS) -o $@ $^
