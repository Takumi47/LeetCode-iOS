//
//  932_BeautifulArray.swift
//  LeetCode
//
//  Created by xander on 2021/7/29.
//

import Foundation

// https://www.cnblogs.com/grandyang/p/12287146.html
class Xoo932 {
    func beautifulArray(_ n: Int) -> [Int] {
        var res: [Int] = [1]
        while res.count < n {
            var temp: [Int] = []
            for num in res {
                if 2 * num - 1 <= n { temp.append(2 * num - 1) }
            }
            for num in res {
                if 2 * num <= n { temp.append(2 * num) }
            }
            res = temp
        }
        return res
    }
}

// MARK: - 1. Divide and Conquer

class Xoo932_1 {
    func beautifulArray(_ n: Int) -> [Int] {
        var memo: [Int: [Int]] = [1: [1]]
        return dc(n, &memo)
    }
    
    private func dc(_ n: Int, _ memo: inout [Int: [Int]]) -> [Int] {
        if let array = memo[n] { return array }
        
        var ans: [Int] = Array(repeating: 0, count: n)
        var t = 0
        
        for x in dc((n + 1) / 2, &memo) {
            ans[t] = 2 * x - 1
            t += 1
        }
        
        for x in dc(n / 2, &memo) {
            ans[t] = 2 * x
            t += 1
        }
        
        memo[n] = ans
        return ans
    }
}
