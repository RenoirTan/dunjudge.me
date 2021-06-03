#pragma once
#ifndef ALGORITHMS_AHOCORASICK_HPP
#   define ALGORITHMS_AHOCORASICK_HPP

#   include <optional>
#   include <unordered_map>
#   include <vector>
#   include <wchar.h>

namespace Algorithms::AhoCorasick {
    struct Node {
        std::unordered_map<wchar_t, size_t> mNext;
        std::optional<size_t> mFailure;
        wchar_t mChar;

        Node(void);
        Node(wchar_t);
        Node(char);
        inline std::unordered_map<wchar_t, size_t> &children(void);
        inline std::optional<size_t> failLink(void) const;
        inline bool hasFailLink(void) const;
        wchar_t character(void) const;
    };

    class Trie {
        private:
            std::vector<Node> mTree;
        public:
            inline std::vector<Node> &tree(void);
            int addString(const wchar_t* const, size_t);
            Trie(void);
    };

    class Automaton {
        private:
            mutable Trie mTrie;
        public:
            Automaton(void);
    };
}

#endif