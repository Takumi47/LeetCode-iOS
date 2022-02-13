//
//  918_MaximumSumCircularSubarray.swift
//  LeetCode
//
//  Created by xander on 2022/2/10.
//

import Foundation

class Xoo918 {
    func maxSubarraySumCircular(_ nums: [Int]) -> Int {
        var sum = 0
        var currMax = 0
        var maxSoFar = Int.min
        var currMin = 0
        var minSoFar = Int.max
        
        for num in nums {
            currMax = num + max(currMax, 0)
            maxSoFar = max(maxSoFar, currMax)
            
            currMin = num + min(currMin, 0)
            minSoFar = min(minSoFar, currMin)
            
            sum += num
        }
        
        
        return maxSoFar > 0 ? max(maxSoFar, sum - minSoFar) : maxSoFar
    }
}

// MARK: - 1. Next Array

class Xoo918_1 {
    func maxSubarraySumCircular(_ nums: [Int]) -> Int {
        0
    }
}

// MARK: - 2. Prefix Sums + Monoqueue

class Xoo918_2 {
    func maxSubarraySumCircular(_ nums: [Int]) -> Int {
        0
    }
}

// MARK: - 3. Kadane's (Sign Variant)

class Xoo918_3 {
    func maxSubarraySumCircular(_ nums: [Int]) -> Int {
        0
    }
}

// MARK: - 4. Kadane's (Min Variant)

class Xoo918_4 {
    func maxSubarraySumCircular(_ nums: [Int]) -> Int {
        0
    }
}
