//
//  135_Candy.swift
//  LeetCode
//
//  Created by xander on 2021/6/27.
//

import Foundation

class Xoo135 {
    func candy(_ ratings: [Int]) -> Int {
        0
    }
}

// MARK: - 1. Brute Force

class Xoo135_1 {
    func candy(_ ratings: [Int]) -> Int {
        var candies: [Int] = Array(repeating: 1, count: ratings.count)
        var hasChanged = true
        while hasChanged {
            hasChanged = false
            for i in 0..<ratings.count {
                if i < (ratings.count - 1) && ratings[i] > ratings[i + 1] && candies[i] <= candies[i + 1] {
                    candies[i] = candies[i + 1] + 1
                    hasChanged = true
                }
                if i > 0 && ratings[i] > ratings[i - 1] && candies[i] <= candies[i - 1] {
                    candies[i] = candies[i - 1] + 1
                    hasChanged = true
                }
            }
        }
        let sum = candies.reduce(0, +)
        return sum
    }
}

// MARK: - 2. Using two arrays

class Xoo135_2 {
    func candy(_ ratings: [Int]) -> Int {
        let n = ratings.count
        
        var left2Right: [Int] = Array(repeating: 1, count: n)
        for i in 0..<n where i > 0 {
            if ratings[i] > ratings[i - 1] {
                left2Right[i] = left2Right[i - 1] + 1
            }
        }
        
        var right2Left: [Int] = Array(repeating: 1, count: n)
        for i in (0..<n).reversed() where i < n - 1 {
            if ratings[i] > ratings[i + 1] {
                right2Left[i] = right2Left[i + 1] + 1
            }
        }
        
        var sum = 0
        for i in 0..<n {
            sum += max(left2Right[i], right2Left[i])
        }
        return sum
    }
}

// MARK: - 3. Using one array

class Xoo135_3 {
    func candy(_ ratings: [Int]) -> Int {
        0
    }
}

// MARK: - 4. Single Pass Approach with Constant Space

class Xoo135_4 {
    func candy(_ ratings: [Int]) -> Int {
        0
    }
}
