include config.mk

ifeq ($(DEBUG),true)
	CFLAGS += -g -D$(DEBUG_MACRO_NAME)
endif

include sources.mk
BINARIES = $(patsubst %.c,$(BIN_DIR)/%.o,$(SOURCES))

all: $(SHAREDLIB_FILENAME) $(STATICLIB_FILENAME)

clean:
	$(RM) $(BINARIES) $(SHAREDLIB_FILENAME) $(STATICLIB_FILENAME)

install: install_lib install_headers
	
install_lib: $(SHAREDLIB_FILENAME)
	$(CP) $(SHAREDLIB_FILENAME) $(LIBRARY_INSTALL_PATH)

install_headers:
	$(REC_CP) $(INCLUDE_DIR)/* $(HEADER_INSTALL_PATH)

uninstall: uninstall_lib uninstall_headers

uninstall_lib:
	-$(RM) $(LIBRARY_INSTALL_PATH)

uninstall_headers:
	-$(REC_RM) $(addprefix $(HEADER_INSTALL_PATH)/,$(patsubst $(INCLUDE_DIR)/%,%,$(wildcard $(INCLUDE_DIR)/*)))

.PHONY: all clean install uninstall install_lib install_headers uninstall_lib uninstall_headers

$(BIN_DIR)/%.o: $(SRC_DIR)/%.c
	-$(MKDIR) $(dir $@)
	$(CC) $(CFLAGS) -o $@ -c $<

$(SHAREDLIB_FILENAME): $(BINARIES) $(CSTATICLIBS)
	-$(MKDIR) $(dir $@)
	$(CC) -shared $(CFLAGS) -o $@ $^

$(STATICLIB_FILENAME): $(BINARIES) $(CSTATICLIBS)
	-$(MKDIR) $(dir $@)
	$(AR) $(ARFLAGS) $@ $^

