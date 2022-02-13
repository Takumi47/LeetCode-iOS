//
//  415_AddStrings.swift
//  LeetCode
//
//  Created by xander on 2021/8/10.
//

import Foundation

class Xoo415 {
    func addStrings(_ num1: String, _ num2: String) -> String {
        let m = num1.count
        let n = num2.count
        let array1 = Array(num1)
        let array2 = Array(num2)
        
        var ans = ""
        var carry = 0
        var i = m - 1
        var j = n - 1
        
        while i >= 0 || j >= 0 || carry > 0 {
            let n1 = (i >= 0) ? Int(array1[i].asciiValue! - Character("0").asciiValue!) : 0
            let n2 = (j >= 0) ? Int(array2[j].asciiValue! - Character("0").asciiValue!) : 0
            
            let sum = n1 + n2 + carry
            ans = "\(sum % 10)" + ans
            carry = sum / 10
            
            i -= 1
            j -= 1
        }
        
        return ans
    }
}

// MARK: - 1. Elementary Math

class Xoo415_1 {
    func addStrings(_ num1: String, _ num2: String) -> String {
        ""
    }
}
