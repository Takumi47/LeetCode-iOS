//
//  186_ReverseWordsInAStringII.swift
//  LeetCode
//
//  Created by xander on 2021/7/8.
//

import Foundation

class Xoo186 {
    func reverseWords(_ s: inout [Character]) {
        s.reverse()
        var i = 0
        for j in 0..<s.count where i < s.count {
            if s[j] == " " {
                s[i..<j].reverse()
                i = j + 1
            }
        }
        s[i...].reverse()
    }
}

class Xoo186_A {
    func reverseWords(_ s: inout [Character]) {
        reverse(&s, 0, s.count)
        var i = 0
        for j in 0...s.count {
            if j == s.count || s[j] == " " {
                reverse(&s, i, j)
                i = j + 1
            }
        }
    }
    
    private func reverse(_ s: inout [Character], _ lo: Int, _ hi: Int) {
        var i = lo
        var j = hi - 1
        while i < j {
            s.swapAt(i, j)
            i += 1
            j -= 1
        }
    }
}

// MARK: - 1.

class Xoo186_1 {
    func reverseWords(_ s: inout [Character]) {
    }
}
