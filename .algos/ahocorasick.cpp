#include "ahocorasick.hpp"
#ifdef ALGORITHMS_DEBUG
#   include <iostream>
#endif
#include <optional>
#include <unordered_map>
#include <vector>
#include <wchar.h>

namespace Ac = Algorithms::AhoCorasick;

/*
 * NODE
 */

Ac::Node::Node(void) : mChar(-1) {}

Ac::Node::Node(wchar_t _char) : mChar(_char) {}

Ac::Node::Node(char _char) : mChar(_char) {}

inline std::unordered_map<wchar_t, size_t> &Ac::Node::children(void) {
    return mNext;
}

inline std::optional<size_t> Ac::Node::failLink(void) const {
    return mFailure;
}

inline bool Ac::Node::hasFailLink(void) const {
    return mFailure.has_value();
}

wchar_t Ac::Node::character(void) const {
    return mChar;
}

/*
 * TRIE
 */

Ac::Trie::Trie(void) : mTree(1) {
    this->tree().at(0) = Ac::Node();
}

inline std::vector<Ac::Node> &Ac::Trie::tree(void) {
    return mTree;
}

int Ac::Trie::addString(const wchar_t *const string, size_t length) {
    size_t strIndex, trieIndex;
    wchar_t current;

    trieIndex = 0;
    for (strIndex = 0; strIndex < length; strIndex++) {
        current = string[strIndex];
#ifdef ALGORITHMS_DEBUG
        std::cout << "Ac::Trie::addString: Current char is "
            << (char) current << '\n';
        std::cout << "Ac::Trie::addString: Start Index is "
            << trieIndex << '\n';
#endif
        auto children = &mTree.at(trieIndex).children();
#ifdef ALGORITHMS_DEBUG
        do {
            std::cout << "Finding children (1)...\n";
            for (auto it = children->begin(); it != children->end(); it++) {
                std::cout << "Ac::Trie::addString: Node has child "
                    << it->second << '\n';
            }
        } while (0);
#endif
        auto thisChar = children->find(current);
        if (thisChar == children->end()) {
#ifdef ALGORITHMS_DEBUG
            std::cout << "Could not find character as child.\n";
#endif
            trieIndex = mTree.size();
            mTree.push_back(Node(current));
            children->emplace(current, trieIndex);
        } else {
#ifdef ALGORITHMS_DEBUG
            std::cout << "Found character as child.\n";
#endif
            trieIndex = thisChar->second;
        }
#ifdef ALGORITHMS_DEBUG
        std::cout << "Ac::Trie::addString: Final Index is "
            << trieIndex << '\n';
#ifdef ALGORITHMS_DEBUG
        do {
            std::cout << "Finding children (2)...\n";
            for (auto it = children->begin(); it != children->end(); it++) {
                std::cout << "Ac::Trie::addString: Node has child "
                    << it->second << '\n';
            }
        } while (0);
#endif
        std::cout << '\n';
#endif
    }
    return 0;
}