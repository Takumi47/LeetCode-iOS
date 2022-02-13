//
//  384_ShuffleAnArray.swift
//  LeetCode
//
//  Created by xander on 2021/7/20.
//

import Foundation

class Xoo384 {
    
    private let nums: [Int]
    private var shuffled: [Int] = []
    
    init(_ nums: [Int]) {
        self.nums = nums
    }
    
    func reset() -> [Int] {
        shuffled = nums
        return shuffled
    }
    
    func shuffle() -> [Int] {
        var aux = nums
        shuffled = []
        for _ in 0..<nums.count {
            let rand = Int.random(in: 0..<aux.count)
            shuffled.append(aux[rand])
            aux.remove(at: rand)
        }
        return shuffled
    }
}

// MARK: - 1. Brute Force

class Xoo384_1 {
    init(_ nums: [Int]) {
    }
    
    func reset() -> [Int] {
        []
    }
    
    func shuffle() -> [Int] {
        []
    }
}


// MARK: - 2. Fisher-Yates Algorithm

class Xoo384_2 {
    
    private let nums: [Int]
    
    init(_ nums: [Int]) {
        self.nums = nums
    }
    
    func reset() -> [Int] {
        nums
    }
    
    func shuffle() -> [Int] {
        let n = nums.count
        var copy = nums
        for i in 0..<n {
            let j = Int.random(in: i..<n)
            copy.swapAt(i, j)
        }
        return copy
    }
}
