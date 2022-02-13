//
//  118_PascalsTriangle.swift
//  LeetCode
//
//  Created by xander on 2021/6/21.
//

import Foundation

class Xoo118 {
    func generate(_ numRows: Int) -> [[Int]] {
        []
    }
}

// MARK: - 1. Dynamic Programming

class Xoo118_1 {
    func generate(_ numRows: Int) -> [[Int]] {
        var triangle: [[Int]] = [[1]]
        
        for rowNum in 1..<numRows {
            var row: [Int] = [1]
            let prevRow = triangle[rowNum - 1]
            
            for i in 1..<prevRow.count {
                row.append(prevRow[i - 1] + prevRow[i])
            }
            
            row.append(1)
            triangle.append(row)
        }
        
        return triangle
    }
}
