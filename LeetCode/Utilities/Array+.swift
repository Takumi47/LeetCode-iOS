//
//  Array+.swift
//  LeetCode
//
//  Created by xander on 2021/6/3.
//

import Foundation

extension Array where Element == Int {
    mutating func radixSort() {
        let base = 10
        var digits = 1
        var done = false
        while !done {
            done = true
            
            var buckets = [[Int]](repeating: [], count: base)
            forEach { num in
                let remainingPart = num / digits
                let digit = remainingPart % base
                buckets[digit].append(num)
                
                if remainingPart > 0 { done = false }
            }
            
            digits *= base
            self = buckets.flatMap { $0 }
        }
    }
    
    func binarySearch(for val: Int, between low: Int, and high: Int) -> Int {
        guard low < high else { return low }
        let mid = (low + high) / 2
        
        if val < self[mid] {
            return binarySearch(for: val, between: low, and: mid)
        } else if val > self[mid] {
            return binarySearch(for: val, between: mid + 1, and: high)
        } else {
            return mid
        }
    }
}

extension Array {
    subscript(safe index: Int) -> Element? {
        indices ~= index ? self[index] : nil
    }
}
