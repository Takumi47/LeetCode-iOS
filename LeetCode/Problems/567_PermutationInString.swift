//
//  567_PermutationInString.swift
//  LeetCode
//
//  Created by xander on 2022/2/12.
//

import Foundation

class Xoo567 {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        let l1 = s1.count
        let l2 = s2.count
        var c1 = Array(repeating: 0, count: 26)
        var c2 = Array(repeating: 0, count: 26)
        
        for c in s1 { c1[index(of: c)] += 1 }
        
        let s2 = Array(s2)
        for i in 0..<l2 {
            c2[index(of: s2[i])] += 1
            
            if i >= l1 {
                c2[index(of: s2[i - l1])] -= 1
            }
            
            if matches(c1, c2) {
                return true
            }
        }
        return false
    }
    
    private func index(of c: Character) -> Int {
        Int(c.asciiValue! - Character("a").asciiValue!)
    }
    
    private func matches(_ c1: [Int], _ c2: [Int]) -> Bool {
        for i in 0..<26 {
            if c1[i] != c2[i] {
                return false
            }
        }
        return true
    }
}

// MARK: - 1. Brute Force (TLE)

class Xoo567_1 {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        var res = false
        permute(s1, s2, 0, &res)
        return res
    }
    
    private func swap(_ s: String, _ i: Int, _ j: Int) -> String {
        var s = Array(s)
        s.swapAt(i, j)
        return String(s)
    }
    
    private func permute(_ s1: String, _ s2: String, _ idx: Int, _ res: inout Bool) {
        guard idx < s1.count else {
            if s2.contains(s1) { res = true }
            return
        }
        
        for i in idx..<s1.count {
            let s = swap(s1, idx, i)
            permute(s, s2, i + 1, &res)
        }
    }
}

// MARK: - 2. Using sorting (TLE)

class Xoo567_2 {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        let m = s1.count
        let n = s2.count
        guard m <= n else { return false }
        
        let s1 = s1.sorted()
        let s2 = Array(s2)
        for i in 0...(n - m) {
            let s = String(s2[i..<(i + m)]).sorted()
            if s == s1 {
                return true
            }
        }
        return false
    }
}

// MARK: - 3. Using Hashmap (TLE)

class Xoo567_3 {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        false
    }
}

// MARK: - 4. Using Array

class Xoo567_4 {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        false
    }
}

// MARK: - 5. Sliding Window

class Xoo567_5 {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        false
    }
}

// MARK: - 6. Optimized Sliding Window

class Xoo567_6 {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        false
    }
}
