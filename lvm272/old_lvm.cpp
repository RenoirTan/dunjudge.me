#include <iostream>
#include <stack>
#include <utility>
using namespace std;

extern "C" {
    class LombokVirtualMachine {
        public:
            LombokVirtualMachine() {
                this->memory = stack<int>();
                this->cache = 0;
            }
            void push(int number) {
                this->memory.push(number);
            }
            int pop() {
                int brim = this->memory.top();
                this->memory.pop();
                return brim;
            }
            void setCache(int number) {
                this->cache = number;
            }
            int getCache() {
                return this->cache;
            }
            void store() {
                this->setCache(this->pop());
            }
            void load() {
                this->push(this->getCache());
            }
            void plus() {
                int first = this->pop();
                int second = this->pop();
                this->push(first+second);
            }
            void times() {
                int first = this->pop();
                int second = this->pop();
                this->push(first*second);
            }
            int top() {
                return this->memory.top();
            }
        private:
            stack<int> memory;
            int cache;
    };
}

typedef LombokVirtualMachine LVM;

int performInstruction(
    LVM *lvm,
    string instruction,
    int instr,
    int number)
{
    if (instruction == "PUSH") {
        lvm->push(number);
    } else if (instruction == "STORE") {
        lvm->store();
    } else if (instruction == "LOAD") {
        lvm->load();
    } else if (instruction == "PLUS") {
        lvm->plus();
    } else if (instruction == "TIMES") {
        lvm->times();
    } else if (instruction == "IFZERO") {
        if (lvm->top() == 0)
            return number;
        else
            return instr+1;
    } else if (instruction == "DONE") {
        cout << lvm->top();
        return -1;
    }
    return instr+1;
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
    cout << "REITERATE" << '\n';
    for (int i = 0; i < totalInstructions; i++) {
        cout << instructions[i].first << ' ' << instructions[i].second << '\n';
    }
    auto lvm = new LombokVirtualMachine();
    int index = 0;
    while (index >= 0) {
        index = performInstruction(
            lvm,
            instructions[index].first,
            index,
            instructions[index].second
        );
        cout << index << ": " << lvm->top() << '\n';
    }
    free(lvm);
}
