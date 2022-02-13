//
//  227_BasicCalculatorII.swift
//  LeetCode
//
//  Created by xander on 2021/12/25.
//

import Foundation

class Xoo227 {
    func calculate(_ s: String) -> Int {
        let s = Array(s.replacingOccurrences(of: " ", with: ""))
        guard !s.isEmpty else { return 0 }
        
        let stack = Stack<Int>()
        var currNum = 0
        var currOp = Character("+")
        for i in 0..<s.count {
            let c = s[i]
            if let n = Int("\(c)") {
                currNum = currNum * 10 + n
            }
            
            if i == s.count - 1 || Int("\(c)") == nil {
                if currOp == "+" {
                    stack.push(currNum)
                } else if currOp == "-" {
                    stack.push(-currNum)
                } else if currOp == "*" {
                    guard let n = stack.pop() else { continue }
                    stack.push(n * currNum)
                } else if currOp == "/" {
                    guard let n = stack.pop() else { continue }
                    stack.push(n / currNum)
                }
                currNum = 0
                currOp = c
            }
        }
        
        var res = 0
        while let n = stack.pop() {
            res += n
        }
        return res
    }
}

class Xoo227_A {
    func calculate(_ s: String) -> Int {
        var ans = 0
        var currSum = 0
        var currNum = 0
        var currOp = Character("+")
        for c in s + "+" {
            if c == " " { continue }
            
            if c.isNumber {
                currNum = currNum * 10 + Int("\(c)")!
                continue
            }
            
            if currOp == "+" {
                ans += currSum
                currSum = currNum
            } else if currOp == "-" {
                ans += currSum
                currSum = -currNum
            } else if currOp == "*" {
                currSum *= currNum
            } else if currOp == "/" {
                currSum /= currNum
            }
            currNum = 0
            currOp = c
        }
        return ans + currSum
    }
}

// MARK: - 1. Using Stack

class Xoo227_1 {
    func calculate(_ s: String) -> Int {
        guard !s.isEmpty else { return 0 }
        
        let s = s.map { "\($0)" }
        let stack = Stack<Int>()
        var currNum = 0
        var currOp = "+"
        for i in 0..<s.count {
            let o = s[i]
            if let n = Int(o) {
                currNum = 10 * currNum + n
            }
            if (Int(o) == nil) && o != " " || i == s.count - 1 {
                if currOp == "+" {
                    stack.push(currNum)
                } else if currOp == "-" {
                    stack.push(-currNum)
                } else if currOp == "*" {
                    guard let n = stack.pop() else { continue }
                    stack.push(n * currNum)
                } else if currOp == "/" {
                    guard let n = stack.pop() else { continue }
                    stack.push(n / currNum)
                }
                currNum = 0
                currOp = o
            }
        }
        var res = 0
        while let n = stack.pop() {
            res += n
        }
        return res
    }
}

// MARK: - 2. Optimised Approach without the stack

class Xoo227_2 {
    func calculate(_ s: String) -> Int {
        0
    }
}
