//
//  UnionFindSet.swift
//  LeetCode
//
//  Created by xander on 2022/1/16.
//

import Foundation

class UnionFindSet {
    
    // MARK: - Properties
    
    private var parents: [Int]
    private var ranks: [Int]
    
    // MARK: - Lifecycle
    
    init(_ n: Int) {
        parents = Array(repeating: 0, count: n)
        ranks = Array(repeating: 0, count: n)
        
        for i in 0..<parents.count {
            parents[i] = i
        }
    }
    
    // MARK: - Methods
    
    func find(_ id: Int) -> Int {
        if parents[id] != id {
            parents[id] = find(parents[id])
        }
        return parents[id]
    }
    
    @discardableResult
    func union(_ u: Int, _ v: Int) -> Bool {
        let pu = find(u)
        let pv = find(v)
        guard pu != pv else { return false }
        
        if ranks[pu] > ranks[pv] {
            parents[pv] = pu
        } else if ranks[pu] < ranks[pv] {
            parents[pu] = pv
        } else {
            parents[pu] = pv
            ranks[pv] += 1
        }
        return true
    }
}
