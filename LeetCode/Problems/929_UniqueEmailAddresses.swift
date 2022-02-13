//
//  929_UniqueEmailAddresses.swift
//  LeetCode
//
//  Created by xander on 2021/9/28.
//

import Foundation

class Xoo929 {
    func numUniqueEmails(_ emails: [String]) -> Int {
        var addresses: Set<String> = []
        
        for email in emails {
            let components = email.components(separatedBy: "@")
            let domain = components[1]
            let local = components[0]
                .replacingOccurrences(of: ".", with: "")
                .components(separatedBy: "+")[0]
            addresses.insert("\(local)@\(domain)")
        }
        
        return addresses.count
    }
}

class Xoo929_A {
    func numUniqueEmails(_ emails: [String]) -> Int {
        Set(emails.map { transform($0) }).count
    }
    
    private func transform(_ email: String) -> String {
        var res = ""
        var foundAt = false
        var foundPlus = false
        for c in email {
            if foundAt {
                res.append(c)
            } else if c == "@" {
                foundAt = true
                res.append(c)
            } else if c == "+" {
                foundPlus = true
            } else if !foundPlus && c != "." {
                res.append(c)
            }
        }
        return res
    }
}

// MARK: - 1. Linear Iteration

class Xoo929_1 {
    func numUniqueEmails(_ emails: [String]) -> Int {
        0
    }
}

// MARK: - 2. Using String Split Method

class Xoo929_2 {
    func numUniqueEmails(_ emails: [String]) -> Int {
        0
    }
}
