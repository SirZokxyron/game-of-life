#include <iostream>

enum CellState {
    DEAD,
    ALIVE,
};

class Cell {
    private:
        CellState state;

    public:
        Cell();
        CellState GetState();
        void SetState(CellState new_state);

        friend std::ostream& operator<<(std::ostream& os, const Cell& cell);
};
