//
//  8_StringToInteger_atoi.swift
//  LeetCode
//
//  Created by xander on 2022/1/15.
//

import Foundation

class Xoo8 {
    func myAtoi(_ s: String) -> Int {
        0
    }
}

// MARK: - 1. Follow the Rules

class Xoo8_1 {
    func myAtoi(_ s: String) -> Int {
        let MAX = (1 << 31) - 1 // 2147483647
        let MIN = -(1 << 31) // -2147483648
        let n = s.count
        let s = s.map(String.init)
        var sign = 1
        var res = 0
        var i = 0
        
        // 1. Skip all leading whitespaces
        while i < n && s[i] == " " { i += 1 }
        
        // 2. Check if the current character is a '+' or '-' sign
        if i < n && s[i] == "+" {
            sign = 1
            i += 1
        } else if i < n && s[i] == "-" {
            sign = -1
            i += 1
        }
        
        // 3. Traverse next digits of input and stop if it is not a digit
        while i < n, let digit = Int(s[i]) {
            if (res > MAX / 10) || (res == MAX / 10 && digit > MAX % 10) {
                return sign == 1 ? MAX : MIN
            }
            
            res = 10 * res + digit
            i += 1
        }
        
        return sign * res
    }
}

// MARK: - 2. Deterministic Finite Automaton (DFA)

/*
 S = { q0, q1, q2, qd }
 q0: initial state
 q1: first sign character
 q2: previous character was a digit
 qd: dead state
 */

enum XState: String {
    case q0 = "Initial"
    case q1 = "Sign"
    case q2 = "Digit"
    case qd = "Dead"
}

class XStateMachine {
    
    // MARK: - Properties
    
    static let MAX: Int = (1 << 31) - 1
    static let MIN: Int = -(1 << 31)
    
    private var state: XState = .q0
    private var sign: Int = 1
    private var result: Int = 0
    
    // MARK: - Methods
    
    func transition(_ str: String) {
        switch state {
        case .q0:
            if str == " " { return }
            if str == "+" || str == "-" {
                toQ1(str)
            } else if let digit = Int(str) {
                toQ2(digit)
            } else {
                toQd()
            }
            
        case .q1, .q2:
            if let digit = Int(str) {
                toQ2(digit)
            } else {
                toQd()
            }
            
        case .qd:
            break
        }
    }
    
    func getState() -> XState { state }
    func getInteger() -> Int { sign * result }
    
    // MARK: - Private Implementation
    
    private func toQ1(_ str: String) {
        state = .q1
        sign = (str == "-") ? -1 : 1
    }
    
    private func toQ2(_ digit: Int) {
        state = .q2
        addDigit(digit)
    }
    
    private func toQd() {
        state = .qd
    }
    
    private func addDigit(_ digit: Int) {
        if (result > Self.MAX / 10) || (result == Self.MAX / 10 && digit > Self.MAX % 10) {
            if sign == 1 {
                result = Self.MAX
            } else {
                sign = 1
                result = Self.MIN
            }
            toQd()
        } else {
            result = result * 10 + digit
        }
    }
}

class Xoo8_2 {
    func myAtoi(_ s: String) -> Int {
        let s = s.map(String.init)
        let q = XStateMachine()
        for x in s where q.getState() != .qd {
            q.transition(x)
        }
        return q.getInteger()
    }
}
