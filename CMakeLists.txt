cmake_minimum_required(VERSION 3.10)
project(Calculator)

set(CMAKE_CXX_STANDARD 11)

# Додаємо бібліотеку
add_library(calculator STATIC src/calculator.cpp)

# Створюємо виконуваний файл
add_executable(calculator_exec src/main.cpp)

# Лінкуємо виконуваний файл з бібліотекою
target_link_libraries(calculator_exec calculator)