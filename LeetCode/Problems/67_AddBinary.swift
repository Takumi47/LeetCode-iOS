//
//  67_AddBinary.swift
//  LeetCode
//
//  Created by xander on 2021/12/31.
//

import Foundation

class Xoo67 {
    func addBinary(_ a: String, _ b: String) -> String {
        var n = a.count - 1
        var m = b.count - 1
        let a = a.map(String.init)
        let b = b.map(String.init)
        
        var ans = ""
        var carry = "0"
        while n >= 0 || m >= 0 || carry == "1" {
            let x = n >= 0 ? (Int(a[n]) ?? 0) : 0
            let y = m >= 0 ? (Int(b[m]) ?? 0) : 0
            let c = Int(carry) ?? 0
            
            ans = "\(x ^ y ^ c)" + ans
            if c == 1 {
                carry = "\(x | y)"
            } else {
                carry = "\(x & y)"
            }
            
            n -= 1
            m -= 1
        }
        return ans
    }
}

class Xoo67_A {
    func addBinary(_ a: String, _ b: String) -> String {
        var a = a.map(String.init)
        var b = b.map(String.init)
        var res = ""
        var carry = 0
        while !a.isEmpty || !b.isEmpty || carry > 0 {
            let x = Int(a.isEmpty ? "0" : a.removeLast())!
            let y = Int(b.isEmpty ? "0" : b.removeLast())!
            let sum = x + y + carry
            res = String(sum % 2) + res
            carry = sum / 2
        }
        return res
    }
}

// MARK: - 1. Bit-by-Bit Computation

class Xoo67_1 {
    func addBinary(_ a: String, _ b: String) -> String {
        ""
    }
}

// MARK: - 2. Bit Manipulation

class Xoo67_2 {
    func addBinary(_ a: String, _ b: String) -> String {
        ""
    }
}
