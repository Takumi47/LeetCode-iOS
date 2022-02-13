//
//  587_ErectTheFence.swift
//  LeetCode
//
//  Created by xander on 2021/9/3.
//

import Foundation

// MARK: - Convex Hull Problems

class Xoo587 {
    func outerTrees(_ trees: [[Int]]) -> [[Int]] {
        guard trees.count > 2 else { return trees }
        var trees = trees.sorted { $0[0] < $1[0] }
        trees = trees.sorted(by: ascendingY)
        
        let p0 = trees[0]
        
        let left = trees[1...].filter { $0[0] <= p0[0] }.sorted { angle(p0, $0) <= angle(p0, $1) }
        let right = trees[1...].filter { $0[0] > p0[0] }.sorted { angle(p0, $0) < angle(p0, $1) }
        
        //print("🆚\(p0)")
        print("🆚\(left), \(angle(p0, [3,0])), \(angle(p0, [2,0]))")
        print("🆚\(right)")
        
        trees = trees[1...].sorted { angle(p0, $0) <= angle(p0, $1) }

        //trees = trees[1...].sorted { angle(p0, $0) < angle(p0, $1) }
        
        //print("🆚\(trees)")
        //print("🆚\(angle(p0, [0, 3])), \(angle(p0, [2, 1])), \(angle(p0, [1, 2]))")
        
        let stack = Stack<[Int]>()
        stack.push(p0)
        
        var i = 0
        while i < right.count {
            let p = right[i]
            if stack.count < 3 {
                stack.push(p)
                i += 1
                //print("🆚\(i)")
            } else {
                //print("🆚\(stack.count)")
                let p2 = stack.pop()!
                let p1 = stack.pop()!
                let flag = isLeftTrun(p1, p2, p)
                
                //print("🆚\(flag), \(p1), \(p2), \(p)")
                if flag {
                    [p1, p2, p].forEach { stack.push($0) }
                    i += 1
                } else {
                    stack.push(p1)
                }
            }
        }
        
        i = 0
        while i < left.count {
            let p = left[i]
            if stack.count < 3 {
                stack.push(p)
                i += 1
                //print("🆚\(i)")
            } else {
                //print("🆚\(stack.count)")
                let p2 = stack.pop()!
                let p1 = stack.pop()!
                let flag = isLeftTrun(p1, p2, p)
                
                //print("🆚\(flag), \(p1), \(p2), \(p)")
                if flag {
                    [p1, p2, p].forEach { stack.push($0) }
                    i += 1
                } else {
                    stack.push(p1)
                }
            }
        }
        
        
        //print(trees)
        
//        var i = 0
//        while i < trees.count {
//            let p = trees[i]
//            if stack.count < 3 {
//                stack.push(p)
//                i += 1
//                //print("🆚\(i)")
//            } else {
//                //print("🆚\(stack.count)")
//                let p2 = stack.pop()!
//                let p1 = stack.pop()!
//                let flag = isLeftTrun(p1, p2, p)
//
//                //print("🆚\(flag), \(p1), \(p2), \(p)")
//                if flag {
//                    [p1, p2, p].forEach { stack.push($0) }
//                    i += 1
//                } else {
//                    stack.push(p1)
//                }
//            }
//        }
        
        //print("🆚\(stack.toArray())")
        
        
        return stack.toArray()
    }
    
    private func ascendingY(_ p1: [Int], _ p2: [Int]) -> Bool {
        p1[1] < p2[1]
    }
    
    private func angle(_ p0: [Int], _ p1: [Int]) -> Float {
        let v1: [Float] = [Float(p1[0] - p0[0]), 0]//CGVector(dx: p1[0] - p0[0], dy: 0)
        let v2: [Float] = [Float(p1[0] - p0[0]), Float(p1[1] - p0[1])]//CGVector(dx: p1[0] - p0[0], dy: p1[1] - p0[1])
        let angle = atan2(v2[1], v2[0]) - atan2(v1[1], v1[0])
        let degree = angle * Float(180.0 / .pi)
        return degree < 0 ? (degree + 180) : degree
    }
    
    private func isLeftTrun(_ p1: [Int], _ p2: [Int], _ p3: [Int]) -> Bool {
//        let d = (p3[1] - p1[1]) * (p2[0] - p1[0]) - (p2[1] - p1[1]) * (p3[0] - p1[0])
//        print("✴️㊙️㊙️\(sin(Double(d)))")
//        return sin(Double(d)) >= 0
        
        //let m0 = Double(p2[1] - p1[1]) / Double(p2[0] - p1[0])
        //let m1 = Double(p3[1] - p1[1]) / Double(p3[0] - p1[0])
        
        //print("㊙️m0: \(m0), m1: \(m1)")
        //print("㊙️m0: \(sin(m0)), m1: \(sin(m1))")
        //return m1 >= m0
        
//        if m0 >= 0 {
//            return m1 < 0 || m1 >= m0
//        } else {
//            return m1 > 0 || m1 < m0
//        }
        
        // 𝑑=(𝑥−𝑥1)(𝑦2−𝑦1)−(𝑦−𝑦1)(𝑥2−𝑥1)
        
        let d = (p3[0] - p1[0]) * (p2[1] - p1[1]) - (p3[1] - p1[1]) * (p2[0] - p1[0])
        //print("㊙️\(d)")
        return d <= 0
    }
}

// MARK: - 1. Jarvis Algorithm

class Xoo587_1 {
    struct Point: Hashable {
        let x: Int
        let y: Int
        
        init(_ location: [Int]) {
            self.x = location[0]
            self.y = location[1]
        }
    }
    
    func outerTrees(_ trees: [[Int]]) -> [[Int]] {
        guard trees.count >= 4 else { return trees }
        
        let N = trees.count
        let points = trees.map(Point.init)
        var hull: Set<Point> = []
        
        var leftMostIndex = 0
        for i in 0..<N {
            if points[i].x < points[leftMostIndex].x {
                leftMostIndex = i
            }
        }
        
        var p = leftMostIndex
        repeat {
            
            // Find q, the most counterclockwise relative to p than all the other points
            var q = (p + 1) % N
            for i in 0..<N {
                if orientation(points[p], points[i], points[q]) < 0 {
                    q = i
                }
            }
            
            for i in 0..<N where i != p && i != q {
                if orientation(points[p], points[i], points[q]) == 0 && inBetween(points[p], points[i], points[q]) {
                    hull.insert(points[i])
                }
            }
            
            hull.insert(points[q])
            p = q
        } while p != leftMostIndex
        
        let fence = hull.map { [$0.x, $0.y] }
        return fence
    }
    
    /// Cross product: vector(pq) x vector(qr) > 0
    private func orientation(_ p: Point, _ q: Point, _ r: Point) -> Int {
        (q.y - p.y) * (r.x - q.x) - (q.x - p.x) * (r.y - q.y) // (-): counterclockwise, (+): clockwise
    }
    
    private func inBetween(_ p: Point, _ i: Point, _ q: Point) -> Bool {
        let x = (i.x >= p.x && i.x <= q.x) || (i.x <= p.x && i.x >= q.x)
        let y = (i.y >= p.y && i.y <= q.y) || (i.y <= p.y && i.y >= q.y)
        return x && y
    }
}

// MARK: - 2. Graham Scan

class Xoo587_2 {
    func outerTrees(_ trees: [[Int]]) -> [[Int]] {
        []
    }
}

// MARK: - 3. Monotone Chain

class Xoo587_3 {
    func outerTrees(_ trees: [[Int]]) -> [[Int]] {
        []
    }
}
