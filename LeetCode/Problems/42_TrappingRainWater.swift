//
//  42_TrappingRainWater.swift
//  LeetCode
//
//  Created by xander on 2021/7/31.
//

import Foundation

class Xoo42 {
    func trap(_ height: [Int]) -> Int {
        guard !height.isEmpty else { return 0 }
        
        let n = height.count
        var peakIndex = 0
        for i in 0..<n {
            if height[i] > height[peakIndex] {
                peakIndex = i
            }
        }
        
        var water = 0
        
        var maxL = 0
        for i in 0..<peakIndex {
            if height[i] > maxL {
                maxL = height[i]
            } else {
                water += maxL - height[i]
            }
        }
        
        var maxR = 0
        for i in ((peakIndex + 1)..<n).reversed() {
            if height[i] > maxR {
                maxR = height[i]
            } else {
                water += maxR - height[i]
            }
        }
        
        return water
    }
}

// MARK: - 1. Brute Force

class Xoo42_1 {
    func trap(_ height: [Int]) -> Int {
        let n = height.count
        var ans = 0
        for i in 0..<n {
            var maxL = 0
            var maxR = 0
            for j in 0..<i { maxL = max(maxL, height[j]) }
            for j in (i + 1)..<n { maxR = max(maxR, height[j]) }
            
            ans += max(min(maxL, maxR) - height[i], 0)
        }
        return ans
    }
}

// MARK: - 2. Dynamic Programming

class Xoo42_2 {
    func trap(_ height: [Int]) -> Int {
        guard !height.isEmpty else { return 0 }
        
        let n = height.count
        var maxL: [Int] = Array(repeating: 0, count: n) // max(h[0] ~ h[i])
        var maxR: [Int] = Array(repeating: 0, count: n) // max(h[i] ~ h[n - 1])
        
        maxL[0] = height[0]
        for i in 1..<n {
            maxL[i] = max(height[i], maxL[i - 1])
        }
        
        maxR[n - 1] = height[n - 1]
        for i in (0..<(n - 1)).reversed() {
            maxR[i] = max(height[i], maxR[i + 1])
        }
        
        var ans = 0
        for i in 0..<n {
            let left = maxL[i]
            let right = maxR[i]
            ans += min(left, right) - height[i]
        }
        return ans
    }
}

// MARK: - 3. Using Stacks

class Xoo42_3 {
    func trap(_ height: [Int]) -> Int {
        0
    }
}

// MARK: - 4. Using 2 Pointers

class Xoo42_4 {
    func trap(_ height: [Int]) -> Int {
        let n = height.count
        var left = 0
        var right = n - 1
        var leftMax = 0
        var rightMax = 0
        
        var ans = 0
        while left < right {
            if height[left] < height[right] {
                leftMax = max(leftMax, height[left])
                ans += leftMax - height[left]
                left += 1
            } else {
                rightMax = max(rightMax, height[right])
                ans += rightMax - height[right]
                right -= 1
            }
        }
        return ans
    }
}
