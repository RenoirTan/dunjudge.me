EXE=.exe
OBJ=.o
SO=.dll
ARCV=.a
SARCV=$(SO)$(ARCV)
CFILE=.c
HFILE=.h
CXXFILE=.cpp
HXXFILE=.hpp

CC=gcc
CXX=g++

C_BUILD_TESTS=-DALGORITHMS_TESTS
C_DEBUG=-DALGORITHMS_DEBUG

CFLAGS=-fPIC -Wall -m64 $(C_BUILD_TESTS) $(C_DEBUG)
CXXFLAGS=$(CFLAGS) -std=c++17

CCC=$(CC) $(CFLAGS)
CXXC=$(CXX) $(CXXFLAGS)

all: ahocorasick$(OBJ) ahocorasick-test$(EXE) factorialmodulo-test$(EXE) factorialmodulo$(OBJ) knapsack-test$(EXE) knapsack$(OBJ)

ahocorasick-test$(EXE): ahocorasick-test$(OBJ) ahocorasick$(OBJ)
	$(CXXC) -o $@ $^

ahocorasick$(OBJ): ahocorasick$(CXXFILE)
	$(CXXC) -c -o $@ $^

ahocorasick-test$(OBJ): ahocorasick-test$(CXXFILE)
	$(CXXC) -c -o $@ $^

factorialmodulo-test$(EXE): factorialmodulo$(OBJ) factorialmodulo-test$(OBJ)
	$(CXXC) -o $@ $^

factorialmodulo$(OBJ): factorialmodulo$(CXXFILE)
	$(CXXC) -c -o $@ $^

factorialmodulo-test$(OBJ): factorialmodulo-test$(CXXFILE)
	$(CXXC) -c -o $@ $^

knapsack-test$(EXE): knapsack$(OBJ)
	$(CXXC) -o $@ $^

knapsack$(OBJ): knapsack$(CXXFILE)
	$(CXXC) -c -o $@ $^ $(C_BUILD_TESTS)