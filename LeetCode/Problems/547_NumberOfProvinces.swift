//
//  547_NumberOfProvinces.swift
//  LeetCode
//
//  Created by xander on 2022/1/16.
//

import Foundation

class Xoo547 {
    func findCircleNum(_ isConnected: [[Int]]) -> Int {
        let n = isConnected.count
        let set = UnionFindSet(n)
        for i in 0..<n {
            for j in (i + 1)..<n {
                if isConnected[i][j] == 1 {
                    set.union(i, j)
                }
            }
        }
        
        var circles: Set<Int> = []
        for i in 0..<n {
            circles.insert(set.find(i))
        }
        return circles.count
    }
}

// MARK: - 1. Using Depth First Search

class Xoo547_1 {
    func findCircleNum(_ isConnected: [[Int]]) -> Int {
        0
    }
}

// MARK: - 2. Using Breadth First Search

class Xoo547_2 {
    func findCircleNum(_ isConnected: [[Int]]) -> Int {
        0
    }
}

// MARK: - 3. Using Union-Find Method

class Xoo547_3 {
    func findCircleNum(_ isConnected: [[Int]]) -> Int {
        0
    }
}
