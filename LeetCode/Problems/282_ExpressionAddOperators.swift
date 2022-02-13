//
//  282_ExpressionAddOperators.swift
//  LeetCode
//
//  Created by xander on 2021/9/18.
//

import Foundation

/*
 1 <= num.length <= 10
 num consists of only digits
 -2^31 <= target <= 2^31 - 1
 2^31 = 2147483647
 */

class Xoo282 {
    func addOperators(_ num: String, _ target: Int) -> [String] {
        []
    }
}

// MARK: - 1. Backtracking

class Xoo282_1 {
    func addOperators(_ num: String, _ target: Int) -> [String] {
        guard !num.isEmpty else { return [] }
        let digits = Array(num)
        var ans: [String] = []
        recurse(digits, target, &ans, 0, 0, 0, 0, [])
        return ans
    }
    
    private func recurse(_ digits: [Character], _ target: Int, _ ans: inout [String], _ i: Int, _ prevOperand: Int, _ currOperand: Int, _ value: Int, _ ops: [String]) {
        let n = digits.count
        
        // Done processing all the digits in num
        guard i < n else {
            if value == target && currOperand == 0 {
                ans.append(ops[1...].joined())
            }
            return
        }
        
        // Extending the current operand by one digit
        let currOpd = currOperand * 10 + Int(digits[i].asciiValue! - Character("0").asciiValue!)
        
        // To avoid cases where we have 1 + 05 or 1 * 05 since 05 won't be a valid operand. Hence this check
        if currOpd > 0 {
            // NO OP recursion
            recurse(digits, target, &ans, i + 1, prevOperand, currOpd, value, ops)
        }
        
        // ADDITION
        var currOps = ops
        currOps.append("+")
        currOps.append("\(currOpd)")
        recurse(digits, target, &ans, i + 1, currOpd, 0, value + currOpd, currOps)
        currOps.removeLast(2)
        
        if !currOps.isEmpty {
            
            // SUBTRACTION
            currOps.append("-")
            currOps.append("\(currOpd)")
            recurse(digits, target, &ans, i + 1, -currOpd, 0, value - currOpd, currOps)
            currOps.removeLast(2)
            
            // MULTIPLICATION
            currOps.append("*")
            currOps.append("\(currOpd)")
            recurse(digits, target, &ans, i + 1, prevOperand * currOpd, 0, value - prevOperand + prevOperand * currOpd, currOps)
            currOps.removeLast(2)
        }
    }
}
