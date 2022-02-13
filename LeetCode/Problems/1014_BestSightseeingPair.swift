//
//  1014_BestSightseeingPair.swift
//  LeetCode
//
//  Created by xander on 2022/2/12.
//

import Foundation

/**
 score = values[i] + values[j] + i - j = (values[i] + i) + (values[j] - j), i < j
 */
class Xoo1014 {
    func maxScoreSightseeingPair(_ values: [Int]) -> Int {
        let n = values.count
        var dp: [(maxVal: Int, maxScore: Int)] = Array(repeating: (0, 0), count: n)
        
        let baseMaxVal = max(values[0] + 0, values[1] + 1)
        let baseMaxScore = values[0] + 0 + values[1] - 1 // score = (values[i] + i) + (values[j] - j)
        dp[1] = (baseMaxVal, baseMaxScore)
        
        for i in 2..<n {
            let val = max(dp[i - 1].maxVal, values[i] + i)
            let score = max(dp[i - 1].maxScore, dp[i - 1].maxVal + values[i] - i)
            dp[i] = (val, score)
        }
        
        return dp[n - 1].maxScore
    }
}
