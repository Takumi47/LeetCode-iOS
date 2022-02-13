//
//  1629_SlowestKey.swift
//  LeetCode
//
//  Created by xander on 2021/9/7.
//

import Foundation

class Xoo1629 {
    func slowestKey(_ releaseTimes: [Int], _ keysPressed: String) -> Character {
        let n = releaseTimes.count
        let keys = Array(keysPressed)
        var ans: (Character, Int) = (keys[0], releaseTimes[0])
        for i in 1..<n {
            let duration = releaseTimes[i] - releaseTimes[i - 1]
            if (duration > ans.1) || (duration == ans.1 && keys[i] > ans.0) {
                ans = (keys[i], duration)
            }
        }
        return ans.0
    }
}

// MARK: - 1. Using Map

class Xoo1629_1 {
    func slowestKey(_ releaseTimes: [Int], _ keysPressed: String) -> Character {
        Character("a")
    }
}

// MARK: - 2. Fixed Size Array

class Xoo1629_2 {
    func slowestKey(_ releaseTimes: [Int], _ keysPressed: String) -> Character {
        Character("a")
    }
}

// MARK: - 3. Constant Extra Space

class Xoo1629_3 {
    func slowestKey(_ releaseTimes: [Int], _ keysPressed: String) -> Character {
        Character("a")
    }
}
