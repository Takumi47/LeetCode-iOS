//
//  295_Find MedianFromDataStream.swift
//  LeetCode
//
//  Created by xander on 2021/7/11.
//

import Foundation

// MARK: - Balanced Binary Search Tree

class MedianFinder {
    
    init() {
    }
    
    func addNum(_ num: Int) {
    }
    
    func findMedian() -> Double {
        0
    }
}

// MARK: - 1. Simple Sorting

class MedianFinder_1 {
    
    private var store: [Int] = []
    
    init() {
    }
    
    func addNum(_ num: Int) {
        store.append(num)
    }
    
    func findMedian() -> Double {
        let n = store.count
        store.sort()
        if n % 2 == 1 {
            return Double(store[n / 2])
        } else {
            return Double(store[n / 2 - 1] + store[n / 2]) * 0.5
        }
    }
}

// MARK: - 2. Insertion Sort

class MedianFinder_2 {
    
    private var nums: [Int] = []
    
    init() {
    }
    
    func addNum(_ num: Int) {
        if nums.isEmpty {
            nums.append(num)
        } else {
            let i = binarySearch(nums, num)
            nums.insert(num, at: i)
        }
    }
    
    func findMedian() -> Double {
        let n = nums.count
        if n % 2 == 1 {
            return Double(nums[n / 2])
        } else {
            return Double(nums[n / 2 - 1] + nums[n / 2]) * 0.5
        }
    }
    
    private func binarySearch(_ nums: [Int], _ target: Int) -> Int {
        var lo = 0
        var hi = nums.count
        while lo < hi {
            let mid = (lo + hi) / 2
            if nums[mid] == target {
                return mid
            } else if nums[mid] > target {
                hi = mid
            } else {
                lo = mid + 1
            }
        }
        return lo
    }
}

// MARK: - 3. Two Heaps

class MedianFinder_3 {
    
    private let maxHeap = Heap<Int>([], >) // left half
    private let minHeap = Heap<Int>([], <) // right half
    
    init() {
    }
    
    func addNum(_ num: Int) {
        if maxHeap.isEmpty || num <= maxHeap.peek! {
            maxHeap.insert(num)
        } else {
            minHeap.insert(num)
        }
        
        // Balance left & right
        if maxHeap.count < minHeap.count {
            
            print("😶‍🌫️\(maxHeap.count), \(minHeap.count)")
            
            maxHeap.insert(minHeap.remove()!)
        } else if maxHeap.count - minHeap.count == 2 {
            minHeap.insert(maxHeap.remove()!)
        }
    }
    
    func findMedian() -> Double {
        if maxHeap.count > minHeap.count {
            return Double(maxHeap.peek!)
        } else {
            return Double(maxHeap.peek! + minHeap.peek!) / 2
        }
    }
}

// MARK: - 4.

class MedianFinder_4 {
    
    init() {
    }
    
    func addNum(_ num: Int) {
    }
    
    func findMedian() -> Double {
        0
    }
}
