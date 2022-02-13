//
//  1383_MaximumPerformanceOfATeam.swift
//  LeetCode
//
//  Created by xander on 2021/6/5.
//

import Foundation

class Xoo1383 {
    func maxPerformance(_ n: Int, _ speed: [Int], _ efficiency: [Int], _ k: Int) -> Int {
        let candidates: [(Int, Int)] = zip(speed, efficiency).sorted { $0.1 > $1.1 }
        var speedQueue = PriorityQueue<Int> { $0 < $1 }
        
        var speedSum = 0
        var performance = 0
        for candidate in candidates {
            let currSpeed = candidate.0
            let currEfficiency = candidate.1
            
            if speedQueue.count > (k - 1), let s = speedQueue.dequeue() {
                speedSum -= s
            }
            
            speedQueue.enqueue(currSpeed)
            speedSum += currSpeed
            performance = max(performance, speedSum * currEfficiency)
        }
        return performance % 1_000_000_007
    }
}
