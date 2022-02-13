//
//  76_MinimumWindowSubstring.swift
//  LeetCode
//
//  Created by xander on 2021/8/16.
//

import Foundation

class Xoo76 {
    func minWindow(_ s: String, _ t: String) -> String {
        let m = s.count
        let n = t.count
        guard m >= n else { return "" }
        let arrayS = Array(s)
        var mapS: [Character: Int] = [:]
        var mapT: [Character: Int] = [:]
        var count = 0
        var start = 0
        var res = ""
        
        for c in s {
            mapS[c] = 0
            mapT[c] = 0
        }
        
        t.forEach { mapT[$0, default: 0] += 1 }
        
        for i in 0..<m {
            let c1 = arrayS[i]
            if let freq = mapT[c1], freq > 0 {
                mapS[c1]! += 1
                
                if mapT[c1]! >= mapS[c1]! {
                    count += 1
                }
                
                if count == n {
                    var c2 = arrayS[start]
                    while let f1 = mapT[c2], let f2 = mapS[c2], f1 < f2 || f1 == 0 {
                        if f1 < f2 {
                            mapS[c2] = f2 - 1
                        }
                        start += 1
                        c2 = arrayS[start]
                    }
                    
                    if res.isEmpty || (i - start + 1) < res.count {
                        res = arrayS[start...i].map(String.init).joined()
                    }
                }
            }
        }
        
        return res
    }
}

// MARK: - 1. Sliding Window

class Xoo76_1 {
    func minWindow(_ s: String, _ t: String) -> String {
        guard !s.isEmpty && !t.isEmpty else { return "" }
        
        let m = s.count
        let n = t.count
        let arrayS = Array(s)
        let arrayT = Array(t)
        
        var mapT: [Character: Int] = [:]
        for i in 0..<n {
            let char = arrayT[i]
            mapT[char, default: 0] += 1
        }
        
        let required = mapT.count
        
        var l = 0
        var r = 0
        
        var formed = 0
        var mapW: [Character: Int] = [:]
        var ans = (length: -1, left: 0, right: 0)
        
        while r < m {
            let cr = arrayS[r]
            mapW[cr, default: 0] += 1
            
            if mapT.keys.contains(cr) && mapT[cr]! == mapW[cr]! { formed += 1 }
            
            while l <= r && formed == required {
                let cl = arrayS[l]
                if ans.0 == -1 || r - l + 1 < ans.0 {
                    ans = (r - l + 1, l, r)
                }
                
                if let count = mapW[cl] {
                    mapW[cl] = count - 1
                    
                    if mapT.keys.contains(cl) && mapW[cl]! < mapT[cl]! {
                        formed -= 1
                    }
                    l += 1
                }
            }
            
            r += 1
        }
        
        return ans.0 == -1 ? "" : arrayS[ans.1...ans.2].map(String.init).joined()
    }
}

// MARK: - 2. Optimized Sliding Window

class Xoo76_2 {
    func minWindow(_ s: String, _ t: String) -> String {
        ""
    }
}
