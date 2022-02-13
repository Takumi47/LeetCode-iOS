//
//  1696_JumpGameVI.swift
//  LeetCode
//
//  Created by xander on 2021/6/9.
//

import Foundation

class Xoo1696 {
    func maxResult(_ nums: [Int], _ k: Int) -> Int {
        guard !nums.isEmpty else { return 0 }
        let n = nums.count
        var score: [Int] = Array(repeating: 0, count: n)
        var biggest = 0
        var secondBiggest = 0
        for i in 0..<n {
            if biggest < i - k {
                biggest = secondBiggest
                secondBiggest += 1
            }
            
            score[i] = nums[i] + score[biggest]
            
            if score[i] >= score[biggest] {
                biggest = i
                secondBiggest = i + 1
            } else if score[i] >= score[secondBiggest] {
                secondBiggest = i
            }
        }
        return score[n - 1]
    }
}

/**
 
 !!!!!!!!!! Local Best not Global Best !!!!!!!!!!
 
 */
//class Xoo1696 {
//    func maxResult(_ nums: [Int], _ k: Int) -> Int {
//        guard !nums.isEmpty else { return 0 }
//        var sum = nums[0]
//        var currIndex = 0
//        while currIndex + 1 < nums.count {
//            var nextIndex = currIndex + 1
//            var nextValue = nums[nextIndex]
//            for j in 1...min(k, nums.count - currIndex - 1) {
//                if nums[currIndex + j] > 0 {
//                    nextIndex = currIndex + j
//                    nextValue = nums[currIndex + j]
//                    break
//                }
//                if nums[currIndex + j] > nextValue {
//                    nextIndex = currIndex + j
//                    nextValue = nums[currIndex + j]
//                }
//            }
//            currIndex = nextIndex
//            sum += nextValue
//        }
//        return sum
//    }
//}

// MARK: - 1. Dynamic Programming + Deque

/**
 - Step 1: Initialize a dp array *score*, where *score[i]* represents the max score starting at *nums[0]* and ending at *nums[i]*.
 - Step 2: Initialize a deque array *dp* storing indexes of *nums* such that the corresponding value are monotonically decreasing.
 - Step 3: Iterate over *nums*. For each element *nums[i]*:
        - Pop all the indexes smaller than *i-k* out of *dq* from left.
        - Update *score[i]* to *score[dq.peekFirst()] + nums[i]*.
        - If the corresponding score of the rightmost index in *dq* (i.e., *score[dq.peekLast()]*) is smaller than *score[i]*, pop it from the right to make corresponding values monotonically decreasing. Repeat.
        - Push *i* into the right of *dq*.
 - Step 4: Return the last elementj of *score*.
 */
class Xoo1696_1 {
    func maxResult(_ nums: [Int], _ k: Int) -> Int {
        guard !nums.isEmpty else { return 0 }
        let n = nums.count
        
        var score: [Int] = Array(repeating: 0, count: n)
        score[0] = nums[0]
        
        var dq: [Int] = [0]
        
        for i in 1..<n {
            while let j = dq.first, j < i - k { dq.removeFirst() }
            
            score[i] = nums[i] + score[dq.first!]
            
            while let j = dq.last, score[j] <= score[i] { dq.removeLast() }
            
            dq.append(i)
        }
        
        return score[n - 1]
    }
}

// MARK: - 2. Dynamic Programming + Priority Queue

/**
 - Step 1: Initialize a dp array *score*, where *score[i]* represents the max score starting at *nums[0]* and ending at *nums[i]*.
 - Step 2: Initialize a max-heap *priority_queue*.
 - Step 3: Iterate over *nums*. For each element *nums[i]*:
        - If the index of top of *priority_queue* is less than *i-k*, pop the top. Repeat.
        - Update *score[i]* to the sum of corresponding score of the index of top of *priority_queue* and *nums[i]* (i.e., *score[priority_queue.peek()[1]] + nums[i]*).
        - Push pair (*score[i]*, *i*) into *priority_queue*.
 - Step 4: Return the last element of *score*.
 */
class Xoo1696_2 {
    func maxResult(_ nums: [Int], _ k: Int) -> Int {
        guard !nums.isEmpty else { return 0 }
        let n = nums.count
        
        var score: [Int] = Array(repeating: 0, count: n)
        score[0] = nums[0]
        
        let queue = PriorityQueue([[nums[0], 0]]) { $0[0] > $1[0] }
        
        for i in 1..<n {
            while let j = queue.peek?[1], j < i - k { _ = queue.dequeue() }
            
            score[i] = nums[i] + (queue.peek?[0] ?? 0)
            queue.enqueue([score[i], i])
        }
        
        return score[n - 1]
    }
}

// MARK: - 3. Segment Tree

/**
 - Step 1: Implement the Segment Tree. Since the tree is initialized to all zeros, only *update* and *query* need to be implemented.
 - Step 2: Iterate over *nums*. For each element *nums[i]*:
        - *query* the maximum from index *i-k* to index *i*.
        - *update* value of index *i* to that maximum plus *nums[i]*.
 - Step 3: Return the last element of the segment tree.
 */
class Xoo1696_3 {
    func maxResult(_ nums: [Int], _ k: Int) -> Int {
        0
    }
}

// MARK: - 4. Dynamic Programming + Deque (Compressed)

/**
 - Step 1: Initialize an integer *score*.
 - Step 2: Initialize a deque array *dq*.
 - Step 3: Iterate over *nums*. For each element *nums[i]*:
        - Pop all the indexes smaller than *i-k* out of *dq* from left.
        - Update *score* to *dq.peekFirst()[1] + nums[i]*.
        - If the corresponding score of the rightmost index in *dq* (i.e., *dq.peekLast()[1]*) is smaller than *score*, pop it from the right to make corresponding values monotonically decreasing. Repeat.
        - Push *(i, score)* into the right of *dq*.
 - Step 4: Return *score*.
 */
class Xoo1696_4 {
    func maxResult(_ nums: [Int], _ k: Int) -> Int {
        guard !nums.isEmpty else { return 0 }
        let n = nums.count
        var score = nums[0]
        var dq: [(Int, Int)] = [(0, score)]
        for i in 1..<n {
            while let j = dq.first?.0, j < i - k { dq.removeFirst() }
            score = nums[i] + (dq.first?.1 ?? 0)
            while let s = dq.last?.1, s <= score { dq.removeLast() }
            dq.append((i, score))
        }
        return score
    }
}

// MARK: - 5. Dynamic Programming + Priority Queue (Compressed)

/**
 - Step 1: Initialize an integer *score*.
 - Step 2: Initialize a max-heap *priority_queue*.
 - Step 3: Iterate over nums. For each element *nums[i]*:
        - If the index of top of *priority_queue* is less than *i-k*, pop the top. Repeat.
        - Update *score* to the sum of corresponding score of the index of top of *priority_queue* and *nums[i]* (i.e., *priority_queue.peek()[0] + nums[i]*).
        - Push pair *(score, i)* into *priority_queue*.
 - Step 4: Return *score*.
 */
class Xoo1696_5 {
    func maxResult(_ nums: [Int], _ k: Int) -> Int {
        guard !nums.isEmpty else { return 0 }
        let n = nums.count
        var score = nums[0]
        let queue = PriorityQueue([[nums[0], 0]]) { $0[0] > $1[0] }
        for i in 1..<n {
            while let j = queue.peek?[1], j < i - k { _ = queue.dequeue() }
            score = nums[i] + (queue.peek?[0] ?? 0)
            queue.enqueue([score, i])
        }
        return score
    }
}
