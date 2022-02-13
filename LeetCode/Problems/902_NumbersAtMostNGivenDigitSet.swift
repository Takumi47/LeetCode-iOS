//
//  902_NumbersAtMostNGivenDigitSet.swift
//  LeetCode
//
//  Created by xander on 2021/12/18.
//

import Foundation

class Xoo902 {
    /**
     Part 1: less than k digits
     Part 2:
        case 1: first digit not in D
        case 2: first digit in D
     */
    func atMostNGivenDigitSet(_ digits: [String], _ n: Int) -> Int {
        let n = String(n).map { "\($0)" }
        var ans = 0
        
        // Part 1:
        for i in 1..<n.count {
            ans += power(digits.count, i)
        }
        
        // Part 2:
        for i in 0..<n.count {
            var prefix = false
            for d in digits {
                if d < n[i] {
                    ans += power(digits.count, n.count - i - 1)
                } else if d == n[i] {
                    prefix = true
                    break
                }
            }
            if !prefix { return ans }
        }
        return ans + 1
    }
    
    private func power(_ val: Int, _ pow: Int) -> Int {
        (0..<pow).reduce(1) { acc, _ in acc * val }
    }
}

class Xoo902_A {
    /**
     Part 1: less than k digits
     Part 2:
        case 1: first digit not in D
        case 2: first digit in D
     */
    func atMostNGivenDigitSet(_ digits: [String], _ n: Int) -> Int {
        let n = String(n)
        var ans = 0
        
        // Part 1:
        for i in 1..<n.count {
            ans += power(digits.count, i)
        }
        
        // Part 2:
        for i in 0..<n.count {
            ans += power(digits.count, n.count - i - 1) * digits.reduce(0) { acc, d in acc + (d < n[i] ? 1 : 0) }
            if !digits.contains(n[i]) { return ans }
        }
        return ans + 1
    }
    
    private func power(_ val: Int, _ pow: Int) -> Int {
        (0..<pow).reduce(1) { acc, _ in acc * val }
    }
}

// MARK: - 1. Dynamic Programming + Counting

class Xoo902_1 {
    func atMostNGivenDigitSet(_ digits: [String], _ n: Int) -> Int {
        0
    }
}

// MARK: - 2. Mathematical

class Xoo902_2 {
    func atMostNGivenDigitSet(_ digits: [String], _ n: Int) -> Int {
        0
    }
}
