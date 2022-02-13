//
//  1567_MaximumLengthOfSubarrayWithPositiveProduct.swift
//  LeetCode
//
//  Created by xander on 2022/2/11.
//

import Foundation

class Xoo1567 {
    func getMaxLen(_ nums: [Int]) -> Int {
        var maxLen = 0
        var posLen = 0
        var nagLen = 0
        
        for num in nums {
            let pos = posLen
            let nag = nagLen
            if num > 0 {
                posLen = pos + 1
                nagLen = nag == 0 ? 0 : nag + 1
            } else if num < 0 {
                posLen = nag == 0 ? 0 : nag + 1
                nagLen = pos + 1
            } else {
                posLen = 0
                nagLen = 0
            }
            maxLen = max(maxLen, posLen)
        }
        
        return maxLen
    }
}
