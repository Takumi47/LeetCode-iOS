//
//  224_BasicCalculator.swift
//  LeetCode
//
//  Created by xander on 2021/9/12.
//

import Foundation

class Xoo224 {
    func calculate(_ s: String) -> Int {
        0
    }
}

// MARK: - 1. Stack and String Reversal

class Xoo224_1 {
    func calculate(_ s: String) -> Int {
        let s = s.map { "\($0)" }
        let stack = Stack<String>()
        var operand = 0
        var base = 0
        for o in s.reversed() {
            if let n = Int("\(o)") {
                operand += Int(pow(10, Double(base))) * n
                base += 1
            } else if o != " " {
                if base != 0 {
                    stack.push("\(operand)")
                    operand = 0
                    base = 0
                }
                
                if o == "(" {
                    let res = evaluate(stack)
                    stack.push("\(res)")
                } else {
                    stack.push(o)
                }
            }
        }
        
        if base != 0 {
            stack.push("\(operand)")
        }
        
        return evaluate(stack)
    }
    
    private func evaluate(_ stack: Stack<String>) -> Int {
        guard !stack.isEmpty else { return 0 }

        var res = 0
        if let o = stack.peek, let n = Int(o) {
            res = n
            _ = stack.pop()
        }

        while let sign = stack.pop(), sign != ")" {
            guard let o = stack.pop(), let n = Int(o) else { continue }
            if sign == "+" {
                res += n
            } else {
                res -= n
            }
        }
        return res
    }
}

// MARK: - 2. Stack and No String Reversal

class Xoo224_2 {
    func calculate(_ s: String) -> Int {
        0
    }
}
