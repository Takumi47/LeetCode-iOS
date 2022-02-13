//
//  917_ReverseOnlyLetters.swift
//  LeetCode
//
//  Created by xander on 2021/9/14.
//

import Foundation

class Xoo917 {
    
    // ASCII: A-Z (65-90), a-z (97-122)
    func reverseOnlyLetters(_ s: String) -> String {
        let n = s.count
        var S = Array(s)
        var i = 0
        var j = n - 1
        
        while i < j {
            let a = S[i].asciiValue!
            let b = S[j].asciiValue!
            
            if !(65...90 ~= a) && !(97...122 ~= a) {
                i += 1
                continue
            }
            
            if !(65...90 ~= b) && !(97...122 ~= b) {
                j -= 1
                continue
            }
            
            S.swapAt(i, j)
            i += 1
            j -= 1
        }
        
        return String(S)
    }
}

class Xoo917_A {
    func reverseOnlyLetters(_ s: String) -> String {
        var s = Array(s)
        var i = 0
        var j = s.count - 1
        while i < j {
            if s[i].isLetter && s[j].isLetter {
                s.swapAt(i, j)
                i += 1
                j -= 1
            } else if !s[i].isLetter {
                i += 1
            } else if !s[j].isLetter {
                j -= 1
            }
        }
        return String(s)
    }
}

// MARK: - 1. Stack of Letters

class Xoo917_1 {
    func reverseOnlyLetters(_ s: String) -> String {
        ""
    }
}

// MARK: - 2. Reverse Pointer

class Xoo917_2 {
    func reverseOnlyLetters(_ s: String) -> String {
        ""
    }
}
