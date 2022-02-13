//
//  1041_RobotBoundedInCircle.swift
//  LeetCode
//
//  Created by xander on 2022/1/9.
//

import Foundation

class Xoo1041 {
    func isRobotBounded(_ instructions: String) -> Bool {
        false
    }
}

// MARK: - One Pass

class Xoo1041_1 {
    /*
     0: North, 1: East, 2: South, 3: West
     First, if the robot returns to the initial point after one cycle, that's the limit cycle trajectory.
     Second, if the robot doesn't face north at the end of the first cycle, that's the limit cycle trajectory. Once again, that's the consequence of the plane symmetry for the repeated cycles.
     */
    func isRobotBounded(_ instructions: String) -> Bool {
        let directions = [0, 1, 0, -1, 0]
        var (x, y) = (0, 0)
        var idx = 0
        for instruction in instructions {
            if instruction == "L" {
                idx = (idx + 3) % 4
            } else if instruction == "R" {
                idx = (idx + 1) % 4
            } else {
                (x, y) = (x + directions[idx], y + directions[idx + 1])
            }
        }
        return (x == 0 && y == 0) || idx != 0
    }
}
