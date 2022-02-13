//
//  SegmentTree.swift
//  LeetCode
//
//  Created by xander on 2021/6/19.
//

import Foundation

/**
 1. A balanced binary tree
 2. Each leaf node (segment) represents an element in the array. Each non leaf node covers the union of  its children's range.
 */
class SegmentTree<T> {
    
    // MARK: - Properties
    
    private var value: T
    private let function: (T, T) -> T
    private let leftBound: Int
    private let rightBound: Int
    private var leftChild: SegmentTree?
    private var rightChild: SegmentTree?
    
    // MARK: - Lifecycle
    
    /** Building the tree: O(n) */
    init(_ array: [T], _ leftBound: Int, _ rightBound: Int, _ function: @escaping (T, T) -> T) {
        self.leftBound = leftBound
        self.rightBound = rightBound
        self.function = function
        
        if leftBound == rightBound {
            value = array[leftBound]
        } else {
            let middle = (leftBound + rightBound) / 2
            leftChild = SegmentTree(array, leftBound, middle, function)
            rightChild = SegmentTree(array, middle + 1, rightBound, function)
            value = function(leftChild!.value, rightChild!.value)
        }
    }
    
    convenience init(_ array: [T], _ function: @escaping (T, T) -> T) {
        self.init(array, 0, array.count - 1, function)
    }
    
    // MARK: - Query
    
    /** Querying the tree: O(log n) */
    func query(_ left: Int, _ right: Int) -> T {
        // 1.
        if leftBound == left && rightBound == right { return value }
        
        guard left <= right else { fatalError("Range requires lowerBound <= upperBound") }
        guard let leftChild = leftChild else { fatalError("leftChild should not be nil") }
        guard let rightChild = rightChild else { fatalError("rightChild should not be nil") }
        
        // 2.
        if leftChild.rightBound < left {
            return rightChild.query(left, right)
        
        // 3.
        } else if right < rightChild.leftBound {
            return leftChild.query(left, right)

        // 4.
        } else {
            let leftResult = leftChild.query(left, leftChild.rightBound)
            let rightResult = rightChild.query(rightChild.leftBound, right)
            return function(leftResult, rightResult)
        }
    }
    
    // MARK: - Replacing Items
    
    /** Replacing an item: O(log n) */
    func replaceItem(at index: Int, with item: T) {
        if leftBound == rightBound {
            value = item
        } else if let leftChild = leftChild, let rightChild = rightChild {
            if index <= leftChild.rightBound {
                leftChild.replaceItem(at: index, with: item)
            } else {
                rightChild.replaceItem(at: index, with: item)
            }
            value = function(leftChild.value, rightChild.value)
        }
    }
}
