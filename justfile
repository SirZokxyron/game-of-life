
# Default build recipe
build:
    clang++ src/main.cpp -o out/main.out

clean:
    rm out/*.o

clear:
    rm out/*

