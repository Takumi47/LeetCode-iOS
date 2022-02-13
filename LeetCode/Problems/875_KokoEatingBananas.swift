//
//  875_KokoEatingBananas.swift
//  LeetCode
//
//  Created by xander on 2022/1/20.
//

import Foundation

class Xoo875 {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        var left = 1
        var right = piles.max()!
        while left < right {
            let middle = (left + right) / 2
            if eat(piles, middle) > h {
                left = middle + 1
            } else {
                right = middle
            }
        }
        return left
    }
    
    private func eat(_ piles: [Int], _ speed: Int) -> Int {
        var hourSpent = 0
        for pile in piles {
            if pile % speed == 0 {
                hourSpent += pile / speed
            } else {
                hourSpent += pile / speed + 1
            }
        }
        return hourSpent
    }
}

// MARK: - 1. Brute Force

class Xoo875_1 {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        var speed = 1
        while true {
            var hourSpent = 0
            for pile in piles {
                hourSpent += Int(ceil(Double(pile) / Double(speed)))
                if hourSpent > h { break }
            }
            
            if hourSpent > h {
                speed += 1
            } else {
                return speed
            }
        }
    }
}

// MARK: - 2. Binary Search

class Xoo875_2 {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        var left = 1
        var right = piles.max()!
        
        while left < right {
            let middle = (left + right) / 2
            var hourSpent = 0
            for pile in piles {
                hourSpent += Int(ceil(Double(pile) / Double(middle)))
            }
            
            if hourSpent > h {
                left = middle + 1
            } else {
                right = middle
            }
        }
        
        return left
    }
}
