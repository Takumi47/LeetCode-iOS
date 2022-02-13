//
//  336_PalindromePairs.swift
//  LeetCode
//
//  Created by xander on 2021/6/13.
//

import Foundation

/**
 case 1. Check if the reverse of word is present. If it is, then we have a case 1 pair by appending the reverse onto the end of word.
 
 case 2. For each suffix of word, check if the suffix is a palindrome. if it is a palindrome,
 then reverse the remaining prefix and check if it's in the list. If it is, then this is an example of case 2.
 
 case 3. For each prefix of word, check if the prefix is a palindrome.
 if it is a palindrome, then reverse the remaining suffix and check if it's in the list. If it is, then this is an example of case 3.
 */
class Xoo336 {
    func palindromePairs(_ words: [String]) -> [[Int]] {
        let trie = Trie336()
        for (i, word) in words.enumerated() { trie.insert(Array(word), i) }
        
        var res: [[Int]] = []
        for (i, word) in words.enumerated() { trie.searchPairs(Array(word), i, &res) }
        return res
    }
}

// MARK: - 1. Brute Force (TLE)

class Xoo336_1 {
    func palindromePairs(_ words: [String]) -> [[Int]] {
        let n = words.count
        var pairs: [[Int]] = []
        for i in 0..<n {
            for j in 0..<n where i != j {
                if isPalindrome(words[i], words[j]) {
                    pairs.append([i, j])
                }
            }
        }
        return pairs
    }
    
    private func isPalindrome(_ a: String, _ b: String) -> Bool {
        return (a + b) == String((a + b).reversed())
    }
}

// MARK: - 2. Hashing (TLE)

class Xoo336_2 {
    func palindromePairs(_ words: [String]) -> [[Int]] {
        var map: [String: Int] = [:]
        for (i, word) in words.enumerated() { map[word] = i }
        
        var res: [[Int]] = []
        for (i, word) in words.enumerated() {
            var reversed = String(word.reversed())
            
            // 1. word + B
            if let j = map[reversed], i != j {
                res.append([i, j])
            }
            
            // 2. A + word(palindrome + suffix)
            for suffix in allValidSuffixes(Array(word)) {
                reversed = String(suffix.reversed())
                if let j = map[reversed] {
                    res.append([j, i])
                }
            }
            
            // 3. word(prefix + palindrome) + B
            for prefix in allValidPrefixes(Array(word)) {
                reversed = String(prefix.reversed())
                if let j = map[reversed] {
                    res.append([i, j])
                }
            }
        }
        return res
    }
    
    private func allValidSuffixes(_ word: [Character]) -> [[Character]] {
        var suffixes: [[Character]] = []
        for i in 0..<word.count {
            if isPalindrome(word, between: 0, and: i) {
                suffixes.append(Array(word[(i + 1)...]))
            }
        }
        return suffixes
    }
    
    private func allValidPrefixes(_ word: [Character]) -> [[Character]] {
        var prefixes: [[Character]] = []
        for i in 0..<word.count {
            if isPalindrome(word, between: i, and: word.count - 1) {
                prefixes.append(Array(word[0..<i]))
            }
        }
        return prefixes
    }
    
    private func isPalindrome(_ word: [Character], between i: Int, and j: Int) -> Bool {
        var i = i
        var j = j
        while i < j {
            if word[i] != word[j] { return false }
            i += 1
            j -= 1
        }
        return true
    }
}

// MARK: - 3. Using a Trie (TLE)

class MyTrieNode {
    var wordEnding = -1 // use -1 to mean there's no word ending here
    var next: [Character: MyTrieNode] = [:]
    var palindromePrefixRemaining: [Int] = []
}

class Xoo336_3 {
    func palindromePairs(_ words: [String]) -> [[Int]] {
        let trie = MyTrieNode()

        // Build the Trie
        for (i, word) in words.enumerated() {
            let reversedWord = String(word.reversed())
            var currentTrieLevel = trie
            for (j, char) in reversedWord.enumerated() {
                if hasPalindrome(reversedWord, after: j) {
                    currentTrieLevel.palindromePrefixRemaining.append(i)
                }

                if currentTrieLevel.next[char] == nil {
                    currentTrieLevel.next[char] = MyTrieNode()
                }
                currentTrieLevel = currentTrieLevel.next[char]!
            }

            currentTrieLevel.wordEnding = i
        }

        // Find Pairs
        var pairs: [[Int]] = []
        for (i, word) in words.enumerated() {
            var currentTrieLevel: MyTrieNode? = trie

            for (j, char) in word.enumerated() {
                guard let currLevel = currentTrieLevel else { break }

                // Case 3.
                if currLevel.wordEnding != -1 && hasPalindrome(word, after: j) {
                    pairs.append([i, currLevel.wordEnding])
                }
                currentTrieLevel = currLevel.next[char]
            }
            guard let currLevel = currentTrieLevel else { continue }

            // Case 1.
            if currLevel.wordEnding != -1 && currLevel.wordEnding != i {
                pairs.append([i, currLevel.wordEnding])
            }

            // Case 2.
            for j in currLevel.palindromePrefixRemaining {
                pairs.append([i, j])
            }
        }
        return pairs
    }
    
    private func hasPalindrome(_ word: String, after i: Int) -> Bool {
        var low = i
        var high = word.count - 1
        while low < high {
            guard word[low] == word[high] else { return false }
            low += 1
            high -= 1
        }
        return true
    }
}
