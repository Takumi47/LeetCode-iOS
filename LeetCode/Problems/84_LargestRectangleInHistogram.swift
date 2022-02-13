//
//  84_LargestRectangleInHistogram.swift
//  LeetCode
//
//  Created by xander on 2022/1/29.
//

import Foundation

class Xoo84 {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        let n = heights.count
        var s = [-1]
        var maxArea = 0
        for i in 0..<n {
            while let last = s.last, last != -1, heights[last] >= heights[i] {
                let h = heights[s.removeLast()]
                let w = i - s.last! - 1
                maxArea = max(maxArea, h * w)
            }
            s.append(i)
        }
        while let last = s.last, last != -1 {
            let h = heights[s.removeLast()]
            let w = n - s.last! - 1
            maxArea = max(maxArea, h * w)
        }
        return maxArea
    }
}

// MARK: - 1. Brute Force

class Xoo84_1 {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        let n = heights.count
        var maxArea = 0
        for i in 0..<n {
            for j in i..<n {
                var minH = Int.max
                for k in i...j {
                    minH = min(minH, heights[k])
                }
                maxArea = max(maxArea, (j - i + 1) * minH)
            }
        }
        return maxArea
    }
}

// MARK: - 2. Better Brute Force

class Xoo84_2 {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        let n = heights.count
        var maxArea = 0
        for i in 0..<n {
            var minH = Int.max
            for j in i..<n {
                minH = min(minH, heights[j])
                maxArea = max(maxArea, (j - i + 1) * minH)
            }
        }
        return maxArea
    }
}

// MARK: - 3. Divide and Conquer Approach (TLE)

class Xoo84_3 {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        return calculateArea(heights, 0, heights.count - 1)
    }
    
    private func calculateArea(_ heights: [Int], _ start: Int, _ end: Int) -> Int {
        guard start <= end else { return 0 }
        
        var minIndex = start
        for i in start...end {
            if heights[i] < heights[minIndex] {
                minIndex = i
            }
        }
        
        return max((end - start + 1) * heights[minIndex],
                   calculateArea(heights, start, minIndex - 1),
                   calculateArea(heights, minIndex + 1, end))
    }
}

// MARK: - 4. Better Divide and Conquer (Segment Tree)

class Xoo84_4 {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        let n = heights.count
        let segmentTree = SegmentTree(Array(0..<n)) { heights[$0] < heights[$1] ? $0 : $1 }
        return calculateArea(heights, segmentTree, 0, n - 1)
    }
    
    private func calculateArea(_ heights: [Int], _ segmentTree: SegmentTree<Int>, _ start: Int, _ end: Int) -> Int {
        guard start <= end else { return 0 }
        
        let minIndex = segmentTree.query(start, end)
        return max((end - start + 1) * heights[minIndex],
                   calculateArea(heights, segmentTree, start, minIndex - 1),
                   calculateArea(heights, segmentTree, minIndex + 1, end))
    }
}

// MARK: - 5. Using Stack

class Xoo84_5 {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        let n = heights.count
        let s = Stack<Int>()
        s.push(-1)
        var maxArea = 0
        for i in 0..<n {
            while let idx = s.peek, idx != -1, heights[idx] >= heights[i] {
                if let i1 = s.pop(), let i2 = s.peek {
                    let h = heights[i1]
                    let w = i - i2 - 1
                    maxArea = max(maxArea, h * w)
                }
            }
            s.push(i)
        }
        while let idx = s.peek, idx != -1 {
            if let i1 = s.pop(), let i2 = s.peek {
                let h = heights[i1]
                let w = n - i2 - 1
                maxArea = max(maxArea, h * w)
            }
        }
        return maxArea
    }
}
