//
//  Node.swift
//  LeetCode
//
//  Created by xander on 2021/7/23.
//

import Foundation

class Node<T> {
    
    var val: T
    var next: Node<T>?
    
    init(_ val: T, _ next: Node? = nil) {
        self.val = val
        self.next = next
    }
}

extension Node: CustomStringConvertible {
    var description: String {
        guard let next = next else { return "\(val)" }
        return "\(val) -> \(next)"
    }
}

public class Node1 {
    public var val: Int
    public var children: [Node1]
    
    public init(_ val: Int) {
        self.val = val
        self.children = []
    }
}

public class Node2 {
    public var val: Int
    public var left: Node2?
    public var right: Node2?
    public var next: Node2?
    
    public init(_ val: Int, _ left: Node2? = nil, _ right: Node2? = nil, _ next: Node2? = nil) {
        self.val = val
        self.left = left
        self.right = right
        self.next = next
    }
}

extension Node2: CustomStringConvertible {
    public var description: String { diagram(for: self) }
    
    private func diagram(for node: Node2?,
                         _ top: String = "",
                         _ root: String = "",
                         _ bottom: String = "") -> String {
        guard let node = node else { return root + "nil\n" }
        
        if node.left == nil && node.right == nil {
            return root + "\(node.val)\n"
        }
        
        return diagram(for: node.right, top + " ", top + "┌──", top + "│ ")
            + root
            + "\(node.val)\n"
            + diagram(for: node.left, bottom + "│ ", bottom + "└──", bottom + " ")
    }
}

public class Node3 {
    public var val: Int
    public var neighbors: [Node3?]
    public init(_ val: Int) {
        self.val = val
        self.neighbors = []
    }
}
