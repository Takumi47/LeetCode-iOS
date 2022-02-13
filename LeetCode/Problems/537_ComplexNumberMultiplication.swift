//
//  537_ComplexNumberMultiplication.swift
//  LeetCode
//
//  Created by xander on 2021/8/25.
//

import Foundation

class Xoo537 {
    func complexNumberMultiply(_ num1: String, _ num2: String) -> String {
        let num1 = num1.prefix(num1.count - 1)
        let num2 = num2.prefix(num2.count - 1)
        
        let n1 = num1.components(separatedBy: "+").compactMap(Int.init)
        let n2 = num2.components(separatedBy: "+").compactMap(Int.init)
        
        return "\(n1[0] * n2[0] - n1[1] * n2[1])+\(n1[0] * n2[1] + n1[1] * n2[0])i"
    }
}

// MARK: - 1. Simple Solution

class Xoo537_1 {
    func complexNumberMultiply(_ num1: String, _ num2: String) -> String {
        ""
    }
}
