//
//  733_FloodFill.swift
//  LeetCode
//
//  Created by xander on 2022/1/18.
//

import Foundation

class Xoo733 {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        guard image[sr][sc] != newColor else { return image }
        let m = image.count
        let n = image[0].count
        var image = image
        dfs(&image, sr, sc, m, n, image[sr][sc], newColor)
        return image
    }
    
    private func dfs(_ image: inout [[Int]], _ r: Int, _ c: Int, _ m: Int, _ n: Int, _ orgColor: Int, _ newColor: Int) {
        guard r >= 0 && r < m && c >= 0 && c < n && image[r][c] == orgColor else { return }
        image[r][c] = newColor
        
        let dirs = [0, 1, 0, -1, 0]
        for i in 0..<4 {
            let nr = r + dirs[i]
            let nc = c + dirs[i + 1]
            dfs(&image, nr, nc, m, n, orgColor, newColor)
        }
    }
}

// MARK: - 1. Depth-First Search

class Xoo733_1 {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        []
    }
}
