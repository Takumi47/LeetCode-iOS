//
//  778_SwimInRisingWater.swift
//  LeetCode
//
//  Created by xander on 2021/6/21.
//

import Foundation

class Xoo778 {
    func swimInWater(_ grid: [[Int]]) -> Int {
        let n = grid.count
        var lo = grid[0][0]
        var hi = n * n;
        
        while lo < hi {
            let mi = lo + (hi - lo) / 2;
            if (!possible(mi, grid)) {
                lo = mi + 1;
            } else {
                hi = mi;
            }
        }
        return lo;
    }
    
    func possible(_ t: Int, _ grid: [[Int]]) -> Bool {
        let n = grid.count
        var seen: Set<Int> = []
        seen.insert(0)
        let dr = [1, -1, 0, 0]
        let dc = [0, 0, 1, -1]
        let stack = Stack<Int>()
        stack.push(0)
        
        while let k = stack.pop() {
            let r = k / n
            let c = k % n
            if r == n - 1 && c == n - 1 { return true }
            for i in 0..<4 {
                let cr = r + dr[i]
                let cc = c + dc[i]
                let ck = cr * n + cc
                if cr >= 0 && cr < n && cc >= 0 && cc < n && !seen.contains(ck) && grid[cr][cc] <= t {
                    stack.push(ck)
                    seen.insert(ck)
                }
            }
        }
        return false
    }
}

//class Xoo778 {
//    func swimInWater(_ grid: [[Int]]) -> Int {
//        let n = grid.count
//        var seen: Set<Int> = []
//        let queue = PriorityQueue<Int> { grid[$0 / n][$0 % n] <= grid[$1 / n][$1 % n] }
//        queue.enqueue(0)
//        var ans = 0
//
//        let dr = [1, -1, 0, 0]
//        let dc = [0, 0, 1, -1]
//
//        while let k = queue.dequeue() {
//            let r = k / n
//            let c = k % n
//            ans = max(ans, grid[r][c])
//
//            if r == n - 1 && c == n - 1 { break }
//
//            for i in 0..<4 {
//                let cr = r + dr[i]
//                let cc = c + dc[i]
//                let ck = cr * n + cc
//                if cr >= 0 && cr < n && cc >= 0 && cc < n && !seen.contains(ck) {
//                    queue.enqueue(ck)
//                    seen.insert(ck)
//                }
//            }
//
//        }
//        return ans
//    }
//}
