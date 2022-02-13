//
//  739_DailyTemperatures.swift
//  LeetCode
//
//  Created by xander on 2022/1/12.
//

import Foundation

class Xoo739 {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        let n = temperatures.count
        var res: [Int] = Array(repeating: 0, count: n)
        let stack = Stack<Int>()
        for i in 0..<n {
            if stack.isEmpty {
                stack.push(i)
                continue
            }
            if temperatures[stack.peek!] >= temperatures[i] {
                stack.push(i)
            } else {
                while !stack.isEmpty && temperatures[stack.peek!] < temperatures[i] {
                    let prev = stack.peek!
                    res[prev] = i - prev
                    _ = stack.pop()
                }
                stack.push(i)
            }
        }
        return res
    }
}

// MARK: - 1. Monotonic Stack

class Xoo739_1 {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        []
    }
}

// MARK: - 2. Array, Optimized Space

class Xoo739_2 {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        []
    }
}
