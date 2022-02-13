//
//  729_MyCalendarI.swift
//  LeetCode
//
//  Created by xander on 2021/6/10.
//

import Foundation

// MARK: - 0.

class MyCalendar {
    private var calendar: [Range<Int>] = []
    
    init() {
    }
    
    func book(_ start: Int, _ end: Int) -> Bool {
        let newEvent = start..<end
        for event in calendar {
            if event.overlaps(newEvent) { return false }
        }
        calendar.append(newEvent)
        return true
    }
}

// MARK: - 1. Brute Force

class MyCalendar_1 {
    private var calendar: [(start: Int, end: Int)] = []
    
    init() {
    }
    
    func book(_ start: Int, _ end: Int) -> Bool {
        for event in calendar {
            if start < event.end && event.start < end { return false }
        }
        calendar.append((start, end))
        return true
    }
}

// MARK: - 2. Balanced Tree

class IntervalNode {
    var start: Int
    var end: Int
    var left: IntervalNode?
    var right: IntervalNode?
    
    init(_ start: Int, _ end: Int) {
        self.start = start
        self.end = end
    }
    
    func insert(_ s: Int, _ e: Int) -> Bool {
        if e <= start {
            if let l = left {
                return l.insert(s, e)
            } else {
                left = IntervalNode(s, e)
                return true
            }
        }
        
        if end <= s {
            if let r = right {
                return r.insert(s, e)
            } else {
                right = IntervalNode(s, e)
                return true
            }
        }
        return false
    }
}

class MyCalendar_2 {
    private var root: IntervalNode?
    
    init() {
    }
    
    func book(_ start: Int, _ end: Int) -> Bool {
        guard let r = root else {
            root = IntervalNode(start, end)
            return true
        }
        return r.insert(start, end)
    }
}
