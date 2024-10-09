CXX = g++
CXXFLAGS = -I./include
OBJ = src/main.o src/calculator.o
TARGET = calculator
LIBRARY = libcalculator.a

.PHONY: all clean

all: $(TARGET) $(LIBRARY)

$(TARGET): $(OBJ)
	$(CXX) -o $@ $^

$(LIBRARY): src/calculator.o
	ar rcs $@ $^

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET) $(LIBRARY)