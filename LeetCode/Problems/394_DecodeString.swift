//
//  394_DecodeString.swift
//  LeetCode
//
//  Created by xander on 2021/12/19.
//

import Foundation

class Xoo394 {
    func decodeString(_ s: String) -> String {
        ""
    }
}

// MARK: - 1. Using Stack

class Xoo394_1 {
    func decodeString(_ s: String) -> String {
        let stack = Stack<Character>()
        for char in s {
            guard char == "]" else {
                stack.push(char)
                continue
            }
            
            var decodedStr: [Character] = []
            while let c = stack.pop(), c != "[" {
                decodedStr.append(c)
            }
            
            var base = 1
            var k = 0
            while let c = stack.peek, let num = Int("\(c)") {
                _ = stack.pop()
                k = k + num * base
                base *= 10
            }
            
            while k != 0 {
                for i in (0..<decodedStr.count).reversed() {
                    stack.push(decodedStr[i])
                }
                k -= 1
            }
        }
        
        var res = ""
        while let c = stack.pop() {
            res = "\(c)" + res
        }
        return res
    }
}

// MARK: - 2. Using 2 Stack

class Xoo394_2 {
    func decodeString(_ s: String) -> String {
        ""
    }
}

// MARK: - 3. Using Recursion

class Xoo394_3 {
    func decodeString(_ s: String) -> String {
        ""
    }
}
