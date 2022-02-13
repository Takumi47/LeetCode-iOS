//
//  576_OutOfBoundaryPaths.swift
//  LeetCode
//
//  Created by xander on 2021/6/24.
//

import Foundation

class Xoo576_3D {
    func findPaths(_ m: Int, _ n: Int, _ maxMove: Int, _ startRow: Int, _ startColumn: Int) -> Int {
        let M = 1_000_000_007
        var dp: [[[Int]]] = Array(repeating: Array(repeating: Array(repeating: 0, count: n), count: m), count: maxMove + 1)
        let directions = [-1, 0, 1, 0, -1]
        for s in 1...maxMove {
            for x in 0..<m {
                for y in 0..<n {
                    for d in 0..<4 {
                        let tx = x + directions[d]
                        let ty = y + directions[d + 1]
                        
                        if tx >= 0 && tx < m && ty >= 0 && ty < n {
                            dp[s][x][y] = (dp[s][x][y] + dp[s - 1][tx][ty]) % M
                        } else {
                            dp[s][x][y] += 1
                        }
                    }
                }
            }
        }
        return dp[maxMove][startRow][startColumn]
    }
}

class Xoo576_2D {
    func findPaths(_ m: Int, _ n: Int, _ maxMove: Int, _ startRow: Int, _ startColumn: Int) -> Int {
        let M = 1_000_000_007
        var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: m)
        let directions = [-1, 0, 1, 0, -1]
        for _ in 1..<(maxMove + 1) {
            var tmp: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: m)
            for x in 0..<m {
                for y in 0..<n {
                    for d in 0..<4 {
                        let tx = x + directions[d]
                        let ty = y + directions[d + 1]
                        
                        if tx >= 0 && tx < m && ty >= 0 && ty < n {
                            tmp[x][y] = (tmp[x][y] + dp[tx][ty]) % M
                        } else {
                            tmp[x][y] += 1
                        }
                    }
                }
            }
            dp = tmp
        }
        return dp[startRow][startColumn]
    }
}

// MARK: - 1. Brute Force

class Xoo576_1 {
    func findPaths(_ m: Int, _ n: Int, _ maxMove: Int, _ startRow: Int, _ startColumn: Int) -> Int {
        guard startRow >= 0 && startRow < m && startColumn >= 0 && startColumn < n else { return 1 }
        if maxMove == 0 { return 0 }
        return findPaths(m, n, maxMove - 1, startRow - 1, startColumn)
            + findPaths(m, n, maxMove - 1, startRow + 1, startColumn)
            + findPaths(m, n, maxMove - 1, startRow, startColumn - 1)
            + findPaths(m, n, maxMove - 1, startRow, startColumn + 1)
    }
}

// MARK: - 2. Recursion with Memoization

class Xoo576_2 {
    func findPaths(_ m: Int, _ n: Int, _ maxMove: Int, _ startRow: Int, _ startColumn: Int) -> Int {
        /*
         memo[i][j][k] is used to store the number of possible moves leading to a path out of the boundary if the current position is given by the indices (i,j) and number of moves left is k.
         */
        var memo: [[[Int]]] = Array(repeating: Array(repeating: Array(repeating: -1, count: maxMove + 1), count: n), count: m)
        return findPaths(m, n, maxMove, startRow, startColumn, &memo)
    }
    
    private func findPaths(_ m: Int, _ n: Int, _ maxMove: Int, _ r: Int, _ c: Int, _ memo: inout [[[Int]]]) -> Int {
        guard r >= 0 && r < m && c >= 0 && c < n else { return 1 }
        if maxMove == 0 { return 0 }
        if memo[r][c][maxMove] >= 0 { return memo[r][c][maxMove] }
        
        memo[r][c][maxMove] = (findPaths(m, n, maxMove - 1, r - 1, c, &memo)
            + findPaths(m, n, maxMove - 1, r + 1, c, &memo)
            + findPaths(m, n, maxMove - 1, r, c - 1, &memo)
            + findPaths(m, n, maxMove - 1, r, c + 1, &memo)) % 1_000_000_007
        return memo[r][c][maxMove]
    }
}

// MARK: - 3. Dynamic Programming

class Xoo576_3 {
    func findPaths(_ m: Int, _ n: Int, _ maxMove: Int, _ startRow: Int, _ startColumn: Int) -> Int {
        let M = 1_000_000_007
        var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: m)
        dp[startRow][startColumn] = 1
        var count = 0
        for _ in 1...maxMove {
            var temp: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: m)
            
            for i in 0..<m {
                for j in 0..<n {
                    if i == m - 1 { count = (count + dp[i][j]) % M }
                    if j == n - 1 { count = (count + dp[i][j]) % M }
                    if i == 0 { count = (count + dp[i][j]) % M }
                    if j == 0 { count = (count + dp[i][j]) % M }
                    
                    if i > 0 { temp[i][j] = (temp[i][j] + dp[i - 1][j]) % M }
                    if i < m - 1 { temp[i][j] = (temp[i][j] + dp[i + 1][j]) % M}
                    if j > 0 { temp[i][j] = (temp[i][j] + dp[i][j - 1]) % M}
                    if j < n - 1 { temp[i][j] = (temp[i][j] + dp[i][j + 1]) % M }
                    
//                    temp[i][j] = (((i > 0 ? dp[i - 1][j] : 0) + (i < m - 1 ? dp[i + 1][j] : 0)) % M + ((j > 0 ? dp[i][j - 1] : 0) + (j < n - 1 ? dp[i][j + 1] : 0)) % M) % M
                    
                }
            }
            
            dp = temp
        }
        return count
    }
}
