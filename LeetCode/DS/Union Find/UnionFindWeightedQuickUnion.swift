//
//  UnionFindWeightedQuickUnion.swift
//  LeetCode
//
//  Created by xander on 2021/6/26.
//

import Foundation

struct UnionFindWeightedQuickUnion<T: Hashable> {
    
    // MARK: - Properties
    
    /*
     index[element]: index of the element
     parents[i]: index of node i's parent
     size[i]: the count of nodes in the tree whose root is at index i
     */
    
    private var index: [T: Int] = [:]
    private var parents: [Int] = []
    private var size: [Int] = []
    
    // MARK: - Lifecycle
    
    init() {}
    
    // MARK: - Add Set
    
    mutating func addSetWith(_ element: T) {
        index[element] = parents.count
        parents.append(parents.count)
        size.append(1)
    }
    
    // MARK: - Path Compression
    
    private mutating func setByIndex(_ index: Int) -> Int {
        if parents[index] != index {
            /*
             we overwrite the parent of the current node with the index of root node, in effect reconnecting the node directly to the root of the tree.
             */
            parents[index] = setByIndex(parents[index])
        }
        return parents[index]
    }
    
    // MARK: - Find
    
    mutating func setOf(_ element: T) -> Int? {
        guard let indexOfElement = index[element] else { return nil }
        return setByIndex(indexOfElement)
    }
    
    mutating func inSameSet(_ firstElement: T, and secondElement: T) -> Bool {
        guard let firstSet = setOf(firstElement),
              let secondSet = setOf(secondElement) else { return false }
        return firstSet == secondSet
    }
    
    // MARK: - Union (Weighted)
    
    mutating func unionSetsContaining(_ firstElement: T, and secondElement: T) {
        guard let firstSet = setOf(firstElement),
              let secondSet = setOf(secondElement) else { return }
        if firstSet != secondSet {
            if size[firstSet] < size[secondSet] {
                parents[firstSet] = secondSet
                size[secondSet] += size[firstSet]
            } else {
                parents[secondSet] = firstSet
                size[firstSet] += size[secondSet]
            }
        }
    }
}

// MARK: - Description

extension UnionFindWeightedQuickUnion: CustomStringConvertible {
    var description: String { "parent: \(parents), size: \(size)" }
}
