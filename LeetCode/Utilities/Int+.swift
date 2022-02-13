//
//  Int+.swift
//  LeetCode
//
//  Created by xander on 2021/6/10.
//

import Foundation

extension Int {
    func log2Ceiling() -> Int {
        Int(ceil(log2(Double(self))))
    }
    
    func log2Floor() -> Int {
        Int(floor(log2(Double(self))))
    }
}
