#include <iostream>
#include "../include/calculator.h"

int main() {
    Calculator calc;
    double a = 5, b = 3;

    std::cout << "Add: " << calc.Add(a, b) << std::endl;
    std::cout << "Subtract: " << calc.Sub(a, b) << std::endl;

    return 0;
}