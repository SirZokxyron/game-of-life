#include "cell.hpp"

Cell::Cell() {
    this->state = CellState::DEAD;
}

CellState Cell::GetState() {
    return this->state;
}

void Cell::SetState(CellState new_state) { 
    this->state = new_state;
}

std::ostream& operator<<(std::ostream& os, const Cell& cell) {
    os << ((cell.state == DEAD) ? "·" : "■");
    return os;
}
