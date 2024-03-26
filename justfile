# === Game of Life justfile === #

# === Variables === #

CC := "clang++"
CFLAGS := "-g -Wall -Wextra -pedantic"

# === Recipes === #

# Default recipe
default: build

# Builds exec.out file
build: compile
	{{CC}} {{CFLAGS}} out/*.o -o out/exec.out

# Compiles every .o file
compile:
	for file in `ls src/ | grep .cpp | cut -c -4`; do \
		{{CC}} {{CFLAGS}} -c src/$file.cpp -o out/$file.o; \
	done

# Runs out/exec.out
run:
	./out/exec.out

# === Utilities === #

# Delete .o files from out/ directory
clean:
    rm out/*.o

# Delete everthing from out/ directory
clear:
	rm out/*

