# Compiler and flags
CC = gcc
CFLAGS = -Wall -Werror -g

OUTPUT_DIR = build
SRC = src/main.c src/hash_table.c src/prime.c

# Target executable
TARGET = $(OUTPUT_DIR)/hash-table

# Build the target
$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)
# Clean up build files
clean:
	rm -f $(TARGET)
# execute the build binary
run:
	./$(TARGET)
rebuild: clean $(TARGET)