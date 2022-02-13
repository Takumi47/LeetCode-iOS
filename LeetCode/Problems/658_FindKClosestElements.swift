//
//  658_FindKClosestElements.swift
//  LeetCode
//
//  Created by xander on 2021/7/2.
//

import Foundation

class Xoo658 {
    func findClosestElements(_ arr: [Int], _ k: Int, _ x: Int) -> [Int] {
        []
    }
}

// MARK: - 1. Sort With Custom Comparator

class Xoo658_1 {
    func findClosestElements(_ arr: [Int], _ k: Int, _ x: Int) -> [Int] {
        let arr = arr.sorted { abs($0 - x) < abs($1 - x) }
        return Array(arr[0..<k].sorted())
    }
}

// MARK: - 2. Binary Search + Sliding Window

class Xoo658_2 {
    func findClosestElements(_ arr: [Int], _ k: Int, _ x: Int) -> [Int] {
        if arr.count == k { return arr }
        let mid = arr.binarySearch(for: x, between: 0, and: arr.count - 1)
        var left = mid
        var right = mid
        
        while right - left <= k {
            
            if left == -1 {
                right += 1
                continue
            }
            
            if right == arr.count || abs(arr[left] - x) <= abs(arr[right] - x){
                left -= 1
            } else {
                right += 1
            }
        }
        
        return Array(arr[(left + 1)...(right - 1)])
    }
}

// MARK: - 3. Binary Search To Find The Left Bound

class Xoo658_3 {
    func findClosestElements(_ arr: [Int], _ k: Int, _ x: Int) -> [Int] {
        var left = 0
        var right = arr.count - k
        
        while left < right {
            let mid = (left + right) / 2
            
//            if x <= arr[mid] {
//                right = mid
//            } else if x >= arr[mid + k] {
//                left = mid + 1
//            } else if x - arr[mid] <= arr[mid + k] - x {
//                right = mid
//            } else {
//                left = mid + 1
//            }
            
            if x - arr[mid] <= arr[mid + k] - x {
                right = mid
            } else {
                left = mid + 1
            }
        }
        
        return Array(arr[left..<(left + k)])
    }
}
