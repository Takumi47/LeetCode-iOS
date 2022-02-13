//
//  452_MinimumNumberOfArrowsToBurstBalloons.swift
//  LeetCode
//
//  Created by xander on 2022/1/13.
//

import Foundation

class Xoo452 {
    func findMinArrowShots(_ points: [[Int]]) -> Int {
        0
    }
}

// MARK: - 1. Greedy

/*
 The idea of greedy algorithm is to pick the locally optimal move at each step,
 that will lead to the globally optimal solution.
 */

class Xoo452_1 {
    func findMinArrowShots(_ points: [[Int]]) -> Int {
        guard !points.isEmpty else { return 0 }
        let points = points.sorted { $0[1] < $1[1] }
        
        var arrows = 1
        var currEnd = points[0][1]
        for point in points {
            let start = point[0]
            let end = point[1]
            if currEnd < start {
                arrows += 1
                currEnd = end
            }
        }
        return arrows
    }
}
