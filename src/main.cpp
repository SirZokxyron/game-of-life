#include <iostream>
#include "cell.hpp"

using namespace std;

int main () {

    // Create a Cell
    // Print its state
    // Change the state
    // Print its state again

    Cell new_cell = Cell();

    cout << new_cell << endl;
    new_cell.SetState(CellState::ALIVE);
    cout << new_cell << endl;
    
    new_cell.~Cell();
    
    return 0;
}
