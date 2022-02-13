//
//  899_OrderlyQueue.swift
//  LeetCode
//
//  Created by xander on 2021/9/5.
//

import Foundation

class Xoo899 {
    func orderlyQueue(_ s: String, _ k: Int) -> String {
        if k >= 2 { return String(s.sorted()) }
        let n = s.count
        var s = s
        var res = s
        for _ in 0..<s.count  {
            s = String(s.suffix(n - 1)) + s.prefix(1)
            if s < res {
                res = s
            }
        }
        return res
    }
}

// MARK: - 1. Mathematical

class Xoo899_1 {
    func orderlyQueue(_ s: String, _ k: Int) -> String {
        ""
    }
}
