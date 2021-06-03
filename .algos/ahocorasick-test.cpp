#include "ahocorasick.hpp"
#include <iostream>
#include <queue>
#include <stdlib.h>
#include <string>
#include <wchar.h>

using namespace std;
namespace Ac = Algorithms::AhoCorasick;

void treeBfs(Ac::Trie &trie) {
    auto &tree = trie.tree();
    size_t index;
    queue<size_t> next;
    next.push(0);
    while (!next.empty()) {
        index = next.front();
        next.pop();
        Ac::Node &node = tree[index];
        cout << index << ": " << node.character() << '\n';
        auto &children = node.children();
        if (children.find(L'a') == children.end()) {
            cout << "Could not find L'a'...\n";
        }
        for (auto it = children.begin(); it != children.end(); it++) {
            next.push(it->second);
        }
    }
}

int main(int argc, char **argv) {
    cout << "Aho Corasick Test" << '\n';
    wchar_t *myString1 = L"abc";
    wchar_t *myString2 = L"ade";
    auto trie = Ac::Trie();
    trie.addString(myString1, 3);
    trie.addString(myString2, 3);
    treeBfs(trie);
    return 0;
}