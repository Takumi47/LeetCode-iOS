//
//  205_IsomorphicStrings.swift
//  LeetCode
//
//  Created by xander on 2021/7/12.
//

import Foundation

class Xoo205 {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        let sTot = test(s, t)
        let tTos = test(t, s)
        return sTot && tTos
    }
    
    private func test(_ s1: String, _ s2: String) -> Bool {
        var str = ""
        let array1 = Array(s1)
        let array2 = Array(s2)
        var map: [Character: Character] = [:]
        for i in 0..<s1.count {
            let c1 = array1[i]
            let c2 = array2[i]
            if let m = map[c1] {
                str.append(m)
            } else {
                map[c1] = c2
                str.append(c2)
            }
        }
        return str == s2
    }
}

// MARK: - 1. Character Mapping with Dictionary

class Xoo205_1 {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        let a1 = Array(s)
        let a2 = Array(t)
        var mappingStoT: [Character: Character] = [:]
        var mappingTtoS: [Character: Character] = [:]
        
        for i in 0..<s.count {
            let c1 = a1[i]
            let c2 = a2[i]
            
            if mappingStoT[c1] == nil && mappingTtoS[c2] == nil {
                mappingStoT[c1] = c2
                mappingTtoS[c2] = c1
            } else if !(mappingStoT[c1] == c2 && mappingTtoS[c2] == c1) {
                return false
            }
        }
        return true
    }
}

// MARK: - 2. First occurence transformation

class Xoo205_2 {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        transform(s) == transform(t)
    }
    
    private func transform(_ s: String) -> String {
        var res = ""
        var indexMapping: [Character: Int] = [:]
        for (i, c) in s.enumerated() {
            if let index = indexMapping[c] {
                res.append("\(index)")
            } else {
                indexMapping[c] = i
                res.append("\(i)")
            }
        }
        return res
    }
}
