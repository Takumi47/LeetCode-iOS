//
//  973_KClosestPointsToOrigin.swift
//  LeetCode
//
//  Created by xander on 2021/12/26.
//

import Foundation

class Xoo973 {
    func kClosest(_ points: [[Int]], _ k: Int) -> [[Int]] {
        var infos: [(index: Int, dist: Int)] = []
        for i in 0..<points.count {
            let dist = squaredDistance(points[i])
            infos.append((i, dist))
        }
        
        var ans: [[Int]] = []
        while ans.count < k, !infos.isEmpty {
            var min = 0
            for i in 0..<infos.count {
                if infos[i].dist < infos[min].1 {
                    min = i
                }
            }
            ans.append(points[infos[min].0])
            infos.remove(at: min)
        }
        return ans
    }
    
    private func squaredDistance(_ p: [Int]) -> Int {
        return p[0] * p[0] + p[1] * p[1]
    }
}

// MARK: - 1. Sort with Custom Comparator

class Xoo973_1 {
    func kClosest(_ points: [[Int]], _ k: Int) -> [[Int]] {
        let points = points.sorted(by: squaredDistAscending)
        return Array(points.prefix(k))
    }
    
    private func squaredDistAscending(_ p1: [Int], _ p2: [Int]) -> Bool {
        let dist1 = p1[0] * p1[0] + p1[1] * p1[1]
        let dist2 = p2[0] * p2[0] + p2[1] * p2[1]
        return dist1 < dist2
    }
}

// MARK: - 2. Max Heap or Max Priority Queue

class Xoo973_2 {
    func kClosest(_ points: [[Int]], _ k: Int) -> [[Int]] {
        let priorityQueue = PriorityQueue<[Int]> {
            self.squaredDistance($0) > self.squaredDistance($1)
        }
        
        for point in points {
            if priorityQueue.count < k {
                priorityQueue.enqueue(point)
            } else if let p = priorityQueue.peek, squaredDistance(point) < squaredDistance(p) {
                _ = priorityQueue.dequeue()
                priorityQueue.enqueue(point)
            }
        }
        
        var ans: [[Int]] = []
        while let p = priorityQueue.dequeue() {
            ans.append(p)
        }
        return ans
    }
    
    private func squaredDistance(_ p: [Int]) -> Int {
        return p[0] * p[0] + p[1] * p[1]
    }
}

// MARK: - 3. Binary Search

class Xoo973_3 {
    func kClosest(_ points: [[Int]], _ k: Int) -> [[Int]] {
        []
    }
}

// MARK: - 4. QuickSelect

class Xoo973_4 {
    func kClosest(_ points: [[Int]], _ k: Int) -> [[Int]] {
        []
    }
}
