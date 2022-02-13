//
//  522_LongestUncommonSubsequenceII.swift
//  LeetCode
//
//  Created by xander on 2021/8/28.
//

import Foundation

class Xoo522 {
    func findLUSlength(_ strs: [String]) -> Int {
        0
    }
}

// MARK: - 1. Brute Forece

class Xoo522_1 {
    func findLUSlength(_ strs: [String]) -> Int {
        var map: [String: Int] = [:]
        for str in strs {
            let s = Array(str)
            for i in 0..<(1 << s.count) {
                var t = ""
                for j in 0..<s.count {
                    if (i >> j) & 1 != 0 {
                        t.append(s[j])
                    }
                }
                map[t, default: 0] += 1
            }
        }
        
        var res = -1
        for (k, v) in map {
            if v == 1 {
                res = max(res, k.count)
            }
        }
        return res
    }
}

// MARK: - 2. Checking Subsequence

class Xoo522_2 {
    func findLUSlength(_ strs: [String]) -> Int {
        var res = -1
        for i in 0..<strs.count {
            var k = 0
            for j in 0..<strs.count {
                if i != j && isSubsequence(strs[i], strs[j]) { break }
                k += 1
            }
            
            if k == strs.count {
                res = max(res, strs[i].count)
            }
        }
        return res
    }
    
    /// whether __x__ is a subsequence of __y__
    private func isSubsequence(_ x: String, _ y: String) -> Bool {
        let X = Array(x)
        let Y = Array(y)
        var i = 0
        var j = 0
        while i < X.count && j < Y.count {
            if X[i] == Y[j] {
                i += 1
            }
            j += 1
        }
        return i == x.count
    }
}

// MARK: - 3. Sorting and Checking Subsequence

class Xoo522_3 {
    func findLUSlength(_ strs: [String]) -> Int {
        let strs = strs.sorted { $0.count > $1.count }
        
        for i in 0..<strs.count {
            var flag = true
            for j in 0..<strs.count {
                if i == j { continue }
                if isSubsequence(strs[i], strs[j]) {
                    flag = false
                    break
                }
            }

            if flag {
                return strs[i].count
            }
        }
        return -1
    }
    
    /// whether __x__ is a subsequence of __y__
    private func isSubsequence(_ x: String, _ y: String) -> Bool {
        let X = Array(x)
        let Y = Array(y)
        var i = 0
        var j = 0
        while i < x.count && j < y.count {
            if X[i] == Y[j] {
                i += 1
            }
            j += 1
        }
        return i == x.count
    }
}
