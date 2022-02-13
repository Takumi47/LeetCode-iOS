//
//  871_MinimumNumberOfRefuelingStops.swift
//  LeetCode
//
//  Created by xander on 2021/6/12.
//

import Foundation

class Xoo871 {
    func minRefuelStops(_ target: Int, _ startFuel: Int, _ stations: [[Int]]) -> Int {
        var tank = startFuel
        var stops = 0
        let queue = PriorityQueue<Int>([], >)
        var i = 0
        while true {
            if tank >= target { return stops }
            
            while i < stations.count && stations[i][0] <= tank {
                queue.enqueue(stations[i][1])
                i += 1
            }
            
            if queue.isEmpty { break }
            tank += queue.dequeue()!
            stops += 1
        }
        return -1
    }
}

// MARK: - 1. Dynamic Programming

/**
 - *dp[i]*: the farthest location we can get to using *i* refueling stops.
 */
class Xoo871_1 {
    func minRefuelStops(_ target: Int, _ startFuel: Int, _ stations: [[Int]]) -> Int {
        let n = stations.count
        var dp: [Int] = Array(repeating: 0, count: n + 1) // dp[i]: max distance to go with i stops.
        dp[0] = startFuel
  
        // For each station
        for i in 0..<n {
            // For j stops, start from high to low to avoid reusing station i
            for j in (1...(i + 1)).reversed() {
                if dp[j - 1] >= stations[i][0] {
                    dp[j] = max(dp[j], dp[j - 1] + stations[i][1])
                }
            }
        }
        
        for i in 0...n {
            if dp[i] >= target { return i }
        }
        
        return -1
    }
}

// MARK: - 2. Heap

class Xoo871_2 {
    func minRefuelStops(_ target: Int, _ startFuel: Int, _ stations: [[Int]]) -> Int {
        var stops = 0
        var tank = startFuel
        var queue: [Int] = []
        
        for station in stations {
            let location = station[0]
            let capacity = station[1]
            
            while tank < location {
                guard !queue.isEmpty else { return -1 }
                tank += queue.removeLast()
                stops += 1
            }
            
            insert(&queue, capacity)
        }
        
        while tank < target {
            guard !queue.isEmpty else { return -1 }
            tank += queue.removeLast()
            stops += 1
        }
        
        return stops
    }
    
    private func insert(_ queue: inout [Int], _ target: Int) {
        var low = 0
        var high = queue.count
        while low < high {
            let mid = (low + high) / 2
            
            if queue[mid] >= target {
                high = mid
            } else {
                low = mid + 1
            }
        }
        queue.insert(target, at: low)
    }
}
