//
//  1291_SequentialDigits.swift
//  LeetCode
//
//  Created by xander on 2022/1/23.
//

import Foundation

class Xoo1291 {
    func sequentialDigits(_ low: Int, _ high: Int) -> [Int] {
        []
    }
}

// MARK: - 1. Sliding Window

class Xoo1291_1 {
    func sequentialDigits(_ low: Int, _ high: Int) -> [Int] {
        let sample = Array("123456789")
        let n = 10
        var nums: [Int] = []
        let lowLen = String(low).count
        let highLen = String(high).count
        for length in lowLen...highLen {
            for i in 0..<(n - length) {
                let str = String(sample[i..<(i + length)])
                if let num = Int(str), num >= low, num <= high {
                    nums.append(num)
                }
            }
        }
        return nums
    }
}

// MARK: - 2. Precomputation

class Seq {
    var nums: [Int] = []
    
    init() {
        let sample = Array("123456789")
        let n = 10
        for len in 2..<n {
            for i in 0..<(n - len) {
                let str = String(sample[i..<(i + len)])
                if let num = Int(str) {
                    nums.append(num)
                }
            }
        }
    }
}

class Xoo1291_2 {
    func sequentialDigits(_ low: Int, _ high: Int) -> [Int] {
        var ans: [Int] = []
        let seq = Seq()
        for num in seq.nums {
            if num >= low && num <= high {
                ans.append(num)
            }
        }
        return ans
    }
}
