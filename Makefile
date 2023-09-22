CC = gcc
CFLAGS = -Wall -O2
LIBRARY_DIR = src
INCLUDE_DIR = include
LIB_DIR = lib
OBJ_DIR = obj

LIBRARY_NAME = datastructures

LIBRARY_FILE = $(LIB_DIR)/lib$(LIBRARY_NAME).dylib

# List all source files in the src/ directory
SOURCES = $(wildcard $(LIBRARY_DIR)/*.c)

# Generate object file names from source file names
OBJECTS = $(patsubst $(LIBRARY_DIR)/%.c,$(OBJ_DIR)/%.o,$(SOURCES))

$(LIBRARY_FILE): $(LIB_DIR) $(OBJ_DIR) $(OBJECTS)
	$(CC) $(CFLAGS) -shared -o $@ $(OBJECTS)

$(OBJ_DIR)/%.o: $(LIBRARY_DIR)/%.c | $(OBJ_DIR)
	$(CC) $(CFLAGS) -c -o $@ $< -I$(INCLUDE_DIR)

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

$(LIB_DIR):
	mkdir -p $(LIB_DIR)

all: $(LIBRARY_FILE)

clean:
	rm -rf $(LIB_DIR) $(OBJ_DIR)

.PHONY: all clean