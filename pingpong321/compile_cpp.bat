set NAME=pingpong

g++ grader.cpp %NAME%.cpp -o %NAME% -Wall -static -O2 -lm -s -w -std=gnu++14 -fmax-errors=512