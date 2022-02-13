//
//  1235_MaximumProfitInJobScheduling.swift
//  LeetCode
//
//  Created by xander on 2021/8/28.
//

import Foundation

/*
 1. sort by ending points: max number of non-overlapping intervals
 2. dp[t]: by the time of t, the max profit
 */
class Xoo1235 {
    func jobScheduling(_ startTime: [Int], _ endTime: [Int], _ profit: [Int]) -> Int {
        0
    }
}

//class Xoo1235 {
//    func jobScheduling(_ startTime: [Int], _ endTime: [Int], _ profit: [Int]) -> Int {
//        let n = startTime.count
//        var graph: [Int: [(Int, Int)]] = [:]
//        var seen: Set<Int> = []
//
//        for i in 0..<n {
//            graph[startTime[i], default: []].append((endTime[i], profit[i]))
//        }
//
//        var ans = 0
//        for s in graph.keys {
//            ans = max(ans, dfs(graph, s, 0, &seen))
//        }
//
//        return ans
//    }
//
//    private func dfs(_ graph: [Int: [(Int, Int)]], _ start: Int, _ currProfit: Int, _ seen: inout Set<Int>) -> Int {
//        guard let points = graph[start], !seen.contains(start) else { return currProfit }
//        seen.insert(start)
//
//        var maxProfit = 0
//        for (end, profit) in points {
//            let total = dfs(graph, end, profit + currProfit, &seen)
//            maxProfit = max(maxProfit, total)
//        }
//        return maxProfit
//    }
//}

// MARK: - 1. Top-Down Dynamic Programming + Binary Search

class Xoo1235_1 {
    func jobScheduling(_ startTime: [Int], _ endTime: [Int], _ profit: [Int]) -> Int {
        0
    }
}

// MARK: - 2. Bottom-Up Dynamic Programming + Binary Search

class Xoo1235_2 {
    func jobScheduling(_ startTime: [Int], _ endTime: [Int], _ profit: [Int]) -> Int {
        0
    }
}

// MARK: - 3. Sorting + Priority Queue

class Xoo1235_3 {
    func jobScheduling(_ startTime: [Int], _ endTime: [Int], _ profit: [Int]) -> Int {
        0
    }
}
