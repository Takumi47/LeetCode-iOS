//
//  520_DetectCapital.swift
//  LeetCode
//
//  Created by xander on 2022/1/25.
//

import Foundation

class Xoo520 {
    func detectCapitalUse(_ word: String) -> Bool {
        word == word.uppercased() || word == word.lowercased() || word == word.lowercased().capitalized
    }
}

// MARK: - 1. Character by Character

class Xoo520_1 {
    func detectCapitalUse(_ word: String) -> Bool {
        let n = word.count
        let word = Array(word)
        
        var match1 = true
        for i in 0..<n {
            if word[i].isUppercase {
                match1 = false
                break
            }
        }
        if match1 { return true }
        
        var match2 = true
        for i in 0..<n {
            if word[i].isLowercase {
                match2 = false
                break
            }
        }
        if match2 { return true }
        
        var match3 = true
        for i in 0..<n {
            if i == 0 {
                if !word[i].isUppercase {
                    match3 = false
                    break
                }
            } else {
                if !word[i].isLowercase {
                    match3 = false
                    break
                }
            }
        }
        if match3 { return true }
        
        return false
    }
}

// MARK: - 2. Regex

class Xoo520_2 {
    func detectCapitalUse(_ word: String) -> Bool {
        let range = NSRange(location: 0, length: word.utf16.count)
        let regex = try! NSRegularExpression(pattern: "^[A-Z]+$|^[a-z]+$|^[A-Z][a-z]+$")
        return regex.firstMatch(in: word, options: [], range: range) != nil
        
//        let predicate = NSPredicate(format: "SELF MATCHES %@", "[A-Z]*|.[a-z]*")
//        return predicate.evaluate(with: word)
    }
}
