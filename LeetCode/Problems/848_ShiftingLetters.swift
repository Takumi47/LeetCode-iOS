//
//  848_ShiftingLetters.swift
//  LeetCode
//
//  Created by xander on 2021/9/9.
//

import Foundation

class Xoo848 {
    func shiftingLetters(_ s: String, _ shifts: [Int]) -> String {
        let n = s.count
        let s = Array(s)
        
        var shifts = shifts
        for i in (0..<n).reversed() {
            if i == n - 1 {
                shifts[i] = shifts[i] % 26
            } else {
                shifts[i] = (shifts[i] + shifts[i + 1]) % 26
            }
        }
        
        var res = ""
        for i in 0..<n {
            let start = Character("a").asciiValue!
            let code = (s[i].asciiValue! - start + UInt8(shifts[i])) % 26 + start
            res.append(Character(Unicode.Scalar(code)))
        }
        
        return res
    }
}

class Xoo848_A {
    func shiftingLetters(_ s: String, _ shifts: [Int]) -> String {
        let n = s.count
        var s = Array(s)
        var shift = 0
        for i in (0..<n).reversed() {
            shift += shifts[i] % 26
            
            let start = Int(Character("a").asciiValue!)
            let code = (Int(s[i].asciiValue!) - start + shift) % 26 + start
            s[i] = Character(Unicode.Scalar(code)!)
        }
        return String(s)
    }
}

// MARK: - 1. Prefix Sum (RE)

class Xoo848_1 {
    func shiftingLetters(_ s: String, _ shifts: [Int]) -> String {
        let n = s.count
        let s = Array(s)
        var x = shifts.reduce(0) { ($0 + $1) % 26 }
        
        var ans = ""
        for i in 0..<n {
            let start = Character("a").asciiValue!
            let code = (Int(s[i].asciiValue! - start) + x % 26) % 26 + Int(start)
            ans.append(Character(Unicode.Scalar(code)!))
            x = (x + (26 - shifts[i] % 26)) % 26
        }
        
        return ans
    }
}
