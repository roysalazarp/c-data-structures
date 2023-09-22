CC = gcc
CRITERION_LIB_DIR = /opt/homebrew/Cellar/criterion/2.4.1_3
CFLAGS = -Wall -Wextra -I ../include -I $(CRITERION_LIB_DIR)/include
LDFLAGS = -L ../lib -L $(CRITERION_LIB_DIR)/lib
LIBS = -ldatastructures -lcriterion
BIN_DIR = bin
OBJ_DIR = obj

TEST_EXEC = $(BIN_DIR)/data_structures_tests

# Test source files
SOURCES = $(wildcard *.c)

# Generate object file names from source file names
OBJECTS = $(patsubst %.c, $(OBJ_DIR)/%.o, $(SOURCES))

# Build the test executable
$(TEST_EXEC): $(BIN_DIR) $(OBJ_DIR) $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $(LIBS) $(OBJECTS) $(LDFLAGS)

$(OBJ_DIR)/%.o: %.c | $(OBJ_DIR)
	$(CC) $(CFLAGS) -c -o $@ $<

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

all: $(TEST_EXEC)

clean:
	rm -rf $(BIN_DIR) $(OBJ_DIR)

.PHONY: all clean

test: $(TEST_EXEC)
	DYLD_LIBRARY_PATH=../lib ./$(TEST_EXEC)