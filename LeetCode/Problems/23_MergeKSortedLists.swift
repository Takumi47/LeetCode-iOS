//
//  23_MergeKSortedLists.swift
//  LeetCode
//
//  Created by xander on 2022/2/5.
//

import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

class Xoo23 {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        nil
    }
}

// MARK: - 1. Brute Force

class Xoo23_1 {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        guard !lists.isEmpty else { return nil }
        
        var values: [Int] = []
        for list in lists {
            var node = list
            while let n = node {
                values.append(n.val)
                node = n.next
            }
        }
        
        let head: ListNode? = ListNode(0)
        var node = head
        for val in values.sorted(by: <) {
            node?.next = ListNode(val)
            node = node?.next
        }
        return head?.next
    }
}

// MARK: - 2. Compare one by one

class Xoo23_2 {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        nil
    }
}

// MARK: - 3. Optimize Approach 2 by Priority Queue

class Xoo23_3 {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        let lists = lists.compactMap { $0 }
        guard !lists.isEmpty else { return nil }
        let queue = PriorityQueue(lists) { $0.val < $1.val }
        
        let head: ListNode? = ListNode(0)
        var node = head
        while let n = queue.dequeue() {
            node?.next = n
            node = node?.next
            
            if let next = n.next {
                queue.enqueue(next)
            }
        }
        
        return head?.next
    }
}

// MARK: - 4. Merge lists one by one

class Xoo23_4 {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        nil
    }
}

// MARK: - 5. Merge with Divide And Conquer

class Xoo23_5 {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        return merge(lists, 0, lists.count - 1)
    }
    
    private func merge(_ lists: [ListNode?], _ l: Int, _ r: Int) -> ListNode? {
        guard l <= r else { return nil }
        if l == r { return lists[l] }
        if l + 1 == r { return mergeTwoLists(lists[l], lists[r]) }
        
        let m = (l + r) / 2
        let left = merge(lists, l, m)
        let right = merge(lists, m + 1, r)
        return mergeTwoLists(left, right)
    }
    
    /** 21. Merge Two Sorted Lists */
    private func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        let head: ListNode? = .init(0)
        var node = head
        var l1 = list1
        var l2 = list2
        while let n1 = l1, let n2 = l2 {
            if n1.val <= n2.val {
                node?.next = n1
                l1 = l1?.next
            } else {
                node?.next = n2
                l2 = l2?.next
            }
            node = node?.next
        }
        node?.next = l1 == nil ? l2 : l1
        return head?.next
    }
}
