//
//  1465_MaximumAreaOfAPieceOfCakeAfterHorizontalAndVerticalCuts.swift
//  LeetCode
//
//  Created by xander on 2021/6/3.
//

import Foundation

class Xoo1465 {
    func maxArea(_ h: Int, _ w: Int, _ horizontalCuts: [Int], _ verticalCuts: [Int]) -> Int {
        var hCuts = horizontalCuts
        hCuts.radixSort()
        var vCuts = verticalCuts
        vCuts.radixSort()
        
        var maxH = max(hCuts[0], h - hCuts[hCuts.count - 1])
        for i in 1..<hCuts.count {
            let diff = hCuts[i] - hCuts[i - 1]
            maxH = max(maxH, diff)
        }
        
        var maxW = max(vCuts[0], w - vCuts[vCuts.count - 1])
        for i in 1..<vCuts.count {
            let diff = vCuts[i] - vCuts[i - 1]
            maxW = max(maxW, diff)
        }
        
        return maxH * maxW % 1_000_000_007
    }
}
