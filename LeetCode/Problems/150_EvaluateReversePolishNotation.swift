//
//  150_EvaluateReversePolishNotation.swift
//  LeetCode
//
//  Created by xander on 2022/1/14.
//

import Foundation

class Xoo150 {
    func evalRPN(_ tokens: [String]) -> Int {
        let stack = Stack<Int>()
        for token in tokens {
            if let n = Int(token) {
                stack.push(n)
            } else {
                guard let n2 = stack.pop(),
                      let n1 = stack.pop() else { continue }
                switch token {
                case "+": stack.push(n1 + n2)
                case "-": stack.push(n1 - n2)
                case "*": stack.push(n1 * n2)
                case "/": stack.push(n1 / n2)
                default: break
                }
            }
        }
        return stack.pop()!
    }
}

// MARK: - 1. Reducing the List In-place

class Xoo150_1 {
    enum Op {
        case operand(Int)
        case operation((Int, Int) -> Int)
        
        static func transfer(_ token: String) -> Op {
            switch token {
            case "+": return operation(+)
            case "-": return operation(-)
            case "*": return operation(*)
            case "/": return operation(/)
            default : return operand(Int(token)!)
            }
        }
    }
    
    func evalRPN(_ tokens: [String]) -> Int {
        let stack = Stack<Int>()
        for token in tokens {
            let op = Op.transfer(token)
            switch op {
            case .operand(let n):
                stack.push(n)
            case .operation(let op):
                guard let n2 = stack.pop(), let n1 = stack.pop() else { continue }
                stack.push(op(n1, n2))
            }
        }
        return stack.pop() ?? 0
    }
}

// MARK: - 2. Evaluate with Stack

class Xoo150_2 {
    func evalRPN(_ tokens: [String]) -> Int {
        0
    }
}
