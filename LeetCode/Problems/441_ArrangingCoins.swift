//
//  441_ArrangingCoins.swift
//  LeetCode
//
//  Created by xander on 2021/11/5.
//

import Foundation

/*
 1. k*(k + 1) / 2 <= n < (k + 1)*(k + 2) / 2
 
 2. k*(k + 1) <= 2n < (k + 1)*(k + 2)
 
 3. k^2 < 2n < (k + 2)^2
 
 4. sqrt(2n) - 2 < k < sqrt(2n)
 */

class Xoo441 {
    func arrangeCoins(_ n: Int) -> Int {
        let upper = Int(sqrt(Double(2 * n)))
        let lower = upper - 2
        for k in lower...upper {
            if k * (k + 1) <= 2 * n && 2 * n < (k + 1) * (k + 2) {
                return k
            }
        }
        return -1
    }
}

// MARK: - 1. Binary Search

class Xoo441_1 {
    func arrangeCoins(_ n: Int) -> Int {
        var left = 0
        var right = n
        while left <= right {
            let k = (left + right) / 2
            let val = k * (k + 1) / 2
            
            if val == n { return k }
            
            if val < n {
                left = k + 1
            } else {
                right = k - 1
            }
        }
        return right
    }
}

// MARK: - 2. Math (Completing the square) (配方法)

class Xoo441_2 {
    
    /*
     1. k*(k + 1) <= 2*n
     
     2. (k + 1/2)^2 - 1/4 <= 2*n
     */
    func arrangeCoins(_ n: Int) -> Int {
        Int(sqrt(Double(2 * n) + 0.25) - 0.5)
    }
}
