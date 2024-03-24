
# Compile main.cpp
build:
    clang++ src/main.cpp -o out/main.out

# Runs out/main.out
run:
	./out/main.out

# Delete .o files from out/ directory
clean:
    rm out/*.o

# Delete everthing from out/ directory
clear:
    rm out/*

