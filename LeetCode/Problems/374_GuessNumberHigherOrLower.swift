//
//  374_GuessNumberHigherOrLower.swift
//  LeetCode
//
//  Created by xander on 2021/10/12.
//

import Foundation

/**
 * Forward declaration of guess API.
 * @param  num -> your guess number
 * @return          -1 if the picked number is lower than your guess number
 *                  1 if the picked number is higher than your guess number
 *               otherwise return 0
 * func guess(_ num: Int) -> Int
 */

class GuessGame {
    private let picked: Int
    
    init(_ picked: Int) {
        self.picked = picked
    }
    
    func guess(_ i: Int) -> Int {
        if picked == i {
            return 0
        } else if picked < i {
            return -1
        } else {
            return 1
        }
    }
}

class Xoo374 : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        0
    }
}

// MARK: - 1. Brute Force

class Xoo374_1 : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        for i in 1..<n {
            if guess(i) == 0 {
                return i
            }
        }
        return n
    }
}

// MARK: - 2. Using Binary Search

class Xoo374_2 : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var lo = 1
        var hi = n
        while lo <= hi {
            let mid = (lo + hi) / 2
            let res = guess(mid)
            
            if res == 0 {
                return mid
            } else if res == -1 {
                hi = mid - 1
            } else {
                lo = mid + 1
            }
        }
        return -1
    }
}

// MARK: - 3. Ternary Search

class Xoo374_3 : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var lo = 1
        var hi = n
        while lo <= hi {
            let mid1 = lo + (hi - lo) / 3
            let mid2 = hi - (hi - lo) / 3
            let res1 = guess(mid1)
            let res2 = guess(mid2)
            
            if res1 == 0 { return mid1 }
            if res2 == 0 { return mid2 }
            
            if res1 == -1 {
                hi = mid1 - 1
            } else if res2 == 1 {
                lo = mid2 + 1
            } else {
                lo = mid1 + 1
                hi = mid2 - 1
            }
        }
        return -1
    }
}
