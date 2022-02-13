//
//  1710_MaximumUnitsOnATruck.swift
//  LeetCode
//
//  Created by xander on 2021/6/14.
//

import Foundation

// MARK: -

class Xoo1710 {
    func maximumUnits(_ boxTypes: [[Int]], _ truckSize: Int) -> Int {
        0
    }
}

// MARK: - 1. Brute Force

class Xoo1710_1 {
    func maximumUnits(_ boxTypes: [[Int]], _ truckSize: Int) -> Int {
        var boxTypes = boxTypes
        
        var unitCount = 0
        var remainingTruckSize = truckSize
        while remainingTruckSize > 0 {
            guard let i = findMaxUnitBox(boxTypes) else { break }
            let boxCount = min(remainingTruckSize, boxTypes[i][0])
            unitCount += boxCount * boxTypes[i][1]
            remainingTruckSize -= boxCount
            boxTypes[i][1] = -1
        }
        return unitCount
    }
    
    private func findMaxUnitBox(_ boxTypes: [[Int]]) -> Int? {
        var maxUnitBoxIndex: Int?
        var maxUnit = 0
        for (i, type) in boxTypes.enumerated() {
            if type[1] > maxUnit {
                maxUnit = type[1]
                maxUnitBoxIndex = i
            }
        }
        return maxUnitBoxIndex
    }
}

// MARK: - 2. Using Array Sort

class Xoo1710_2 {
    func maximumUnits(_ boxTypes: [[Int]], _ truckSize: Int) -> Int {
        let boxTypes = boxTypes.sorted { $0[1] > $1[1] }
        var unitCount = 0
        var remainingTruckSize = truckSize
        for type in boxTypes {
            guard remainingTruckSize != 0 else { break }
            let boxCount = min(remainingTruckSize, type[0])
            unitCount += boxCount * type[1]
            remainingTruckSize -= boxCount
        }
        return unitCount
    }
}

// MARK: - 3. Using Priority Queue

class Xoo1710_3 {
    func maximumUnits(_ boxTypes: [[Int]], _ truckSize: Int) -> Int {
        let queue = PriorityQueue(boxTypes) { $0[1] > $1[1] }
        var unitCount = 0
        var remainingTruckSize = truckSize
        while let type = queue.dequeue(), remainingTruckSize > 0 {
            let boxCount = min(remainingTruckSize, type[0])
            unitCount += boxCount * type[1]
            remainingTruckSize -= boxCount
        }
        return unitCount
    }
}
