//
//  213_HouseRobberII.swift
//  LeetCode
//
//  Created by xander on 2021/12/5.
//

import Foundation

class Xoo213 {
    func rob(_ nums: [Int]) -> Int {
        let n = nums.count
        guard n > 3 else { return nums.max()! }
        var ans = 0
        
        // NoRob: nums[0], N [ House Robber I ]
        var rob = nums[1]
        var norob = 0
        for i in 2..<n {
            let prev_rob = rob
            let prev_norob = norob
            rob = prev_norob + nums[i]
            norob = max(prev_rob, prev_norob)
        }
        ans = max(rob, norob)
        
        // Rob: nums[0], Y N [ House Robber I ] N
        rob = nums[0]
        norob = nums[0]
        for i in 2..<(n - 1) {
            let prev_rob = rob
            let prev_norob = norob
            rob = prev_norob + nums[i]
            norob = max(prev_rob, prev_norob)
        }
        ans = max(ans, max(rob, norob))
        
        return ans
    }
}

class Xoo213_A {
    func rob(_ nums: [Int]) -> Int {
        let n = nums.count
        guard n >= 2 else { return nums[0] }
        var ans = 0
        
        // 1. N [  ]
        var rob = 0
        var norob = 0
        for i in 1..<n {
            let prev_rob = rob
            let prev_norob = norob
            rob = prev_norob + nums[i]
            norob = max(prev_rob, prev_norob)
        }
        ans = max(rob, norob)
        
        // 2. [  ] N
        rob = 0
        norob = 0
        for i in 0..<(n - 1) {
            let prev_rob = rob
            let prev_norob = norob
            rob = prev_norob + nums[i]
            norob = max(prev_rob, prev_norob)
        }
        ans = max(ans, max(rob, norob))
        
        return ans
    }
}

class Xoo213_B {
    func rob(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        
        let n = nums.count
        var res = 0
        
        // 1. N []
        res = robI(nums, 1, n - 1)
        
        // 2. Y N [] N
        res = max(res, robI(nums, 2, n - 2) + nums[0])
        
        return res
    }
    
    private func robI(_ nums: [Int], _ l: Int, _ r: Int) -> Int {
        guard l <= r else { return 0 }
        var rob = 0
        var norob = 0
        for i in l...r {
            let rob_tmp = rob
            let norob_tmp = norob
            rob = norob_tmp + nums[i]
            norob = max(rob_tmp, norob_tmp)
        }
        return max(rob, norob)
    }
}

// MARK: - 1. Dynamic Programming

class Xoo213_1 {
    func rob(_ nums: [Int]) -> Int {
        0
    }
}
