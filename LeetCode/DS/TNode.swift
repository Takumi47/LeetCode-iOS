//
//  TNode.swift
//  LeetCode
//
//  Created by xander on 2021/8/8.
//

import Foundation

class TNode {
    var val: Int
    var children: [TNode]
    
    init(_ val: Int) {
        self.val = val
        self.children = []
    }
}
