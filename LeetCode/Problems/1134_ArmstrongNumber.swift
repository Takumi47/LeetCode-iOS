//
//  1134_ArmstrongNumber.swift
//  LeetCode
//
//  Created by xander on 2021/6/29.
//

import Foundation

class Xoo1134 {
    func isArmstrong(_ n: Int) -> Bool {
        var nums: [Int] = []
        var k = 0
        var remaining = n
        while remaining > 0 {
            let digit = remaining % 10
            remaining /= 10
            nums.append(digit)
            k += 1
        }
        
        let sum = nums.reduce(0) { $0 + Int(pow(Float($1), Float(k))) }
        return sum == n
    }
}

// MARK: - 1. Calculate k by Converting to String

class Xoo1134_1 {
    func isArmstrong(_ n: Int) -> Bool {
        let k = String(n).count
        return getSumOfKthPowerOfDigits(n, k) == n
    }
    
    private func getSumOfKthPowerOfDigits(_ n: Int, _ k: Int) -> Int {
        var sum = 0
        for c in String(n) {
            guard let d = Int("\(c)") else { continue }
            sum += Int(pow(Double(d), Double(k)))
        }
        return sum
    }
}

// MARK: - 2. Calculate k by Using Log

class Xoo1134_2 {
    func isArmstrong(_ n: Int) -> Bool {
        false
    }
}

// MARK: - 3. Calculate k Without Build-in Methods

class Xoo1134_3 {
    func isArmstrong(_ n: Int) -> Bool {
        false
    }
}
