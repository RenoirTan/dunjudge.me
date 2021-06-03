#include <iostream>
#include <stack>
#include <utility>
using namespace std;

struct LombokVirtualMachine
{
    stack<int> memory;
    int cache;
};

typedef struct LombokVirtualMachine Lvm;

int LvmAction(Lvm *lvm, int index, string instruction, int number)
{
    if (instruction == "PUSH") {
        lvm->memory.push(number);
    } else if (instruction == "STORE") {
        lvm->cache = lvm->memory.top();
        lvm->memory.pop();
    } else if (instruction == "LOAD") {
        lvm->memory.push(lvm->cache);
    } else if (instruction == "PLUS") {
        int first = lvm->memory.top(); lvm->memory.pop();
        int second = lvm->memory.top(); lvm->memory.pop();
        lvm->memory.push(first + second);
    } else if (instruction == "PLUS") {
        int first = lvm->memory.top(); lvm->memory.pop();
        int second = lvm->memory.top(); lvm->memory.pop();
        lvm->memory.push(first * second);
    } else if (instruction == "IFZERO") {
        int top = lvm->memory.top();
        lvm->memory.pop();
        if (top == 0)
            return number;
    } else if (instruction == "DONE") {
        cout << lvm->memory.top();
        return -1;
    }
    return index + 1;
}

pair<string, int> inputInstruction()
{
    string instruction;
    int number;
    cin >> instruction;
    if (cin.peek() == '\n')
        number = 0;
    else
        cin >> number;
    return pair<string, int>(instruction, number);
}

int main(int argc, char **argv)
{
    int totalInstructions;
    cin >> totalInstructions;
    pair<string, int> instructions[totalInstructions];
    for (int i = 0; i < totalInstructions; i++) {
        instructions[i] = inputInstruction();
    }
    int index = 0;
    Lvm lvm = {stack<int>(), 0};
    while (index >= 0) {
        index = LvmAction(
            &lvm,
            index,
            instructions[index].first,
            instructions[index].second
        );
    }
    return 0;
}