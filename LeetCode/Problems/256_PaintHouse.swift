//
//  256_PaintHouse.swift
//  LeetCode
//
//  Created by xander on 2021/6/1.
//

import Foundation

class Xoo256 {
}

// MARK: - 3. Memoization

class Xoo256_3 {
    private struct PaintKey: Hashable {
        let house: Int
        let color: Int
        
        init(_ house: Int, _ color: Int) {
            self.house = house
            self.color = color
        }
    }
    
    /**
     0: Red, 1: Green, 2: Blue
     */
    func minCost(_ costs: [[Int]]) -> Int {
        guard !costs.isEmpty else { return 0 }
        var memo: [PaintKey: Int] = [:]
        return min(paintCost(costs, &memo, 0, 0),
                   paintCost(costs, &memo, 0, 1),
                   paintCost(costs, &memo, 0, 2))
    }
    
    private func paintCost(_ costs: [[Int]], _ memo: inout [PaintKey: Int], _ house: Int, _ color: Int) -> Int {
        if let cost = memo[PaintKey(house, color)] { return cost }
        
        var totalCost = costs[house][color]
        if house == costs.count - 1 { return totalCost }
        
        switch color {
        case 0: totalCost += min(paintCost(costs, &memo, house + 1, 1), paintCost(costs, &memo, house + 1, 2))
        case 1: totalCost += min(paintCost(costs, &memo, house + 1, 0), paintCost(costs, &memo, house + 1, 2))
        case 2: totalCost += min(paintCost(costs, &memo, house + 1, 0), paintCost(costs, &memo, house + 1, 1))
        default: break
        }
        
        memo[PaintKey(house, color)] = totalCost
        return totalCost
    }
}

// MARK: - 5. Dynamic Programming with Optimized Space Complexity

class Xoo256_5 {
    /**
     0: Red, 1: Green, 2: Blue
     */
    func minCost(_ costs: [[Int]]) -> Int {
        guard !costs.isEmpty else { return 0 }
        
        var previous = costs[costs.count - 1]
        for n in (0..<(costs.count - 1)).reversed() {
            var current = costs[n]
            current[0] += min(previous[1], previous[2])
            current[1] += min(previous[0], previous[2])
            current[2] += min(previous[0], previous[1])
            previous = current
        }
        return previous.min()!
    }
}
