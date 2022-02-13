//
//  String+.swift
//  LeetCode
//
//  Created by xander on 2021/6/2.
//

import Foundation

/*
 This way of accessing a Character is linear, not constant in Swift. O(N)
 */
extension String {
    subscript(_ i: Int) -> String {
        String(self[self.index(self.startIndex, offsetBy: i)])
    }
    
    subscript(_ rangeFrom: PartialRangeFrom<Int>) -> String {
        let start = self.index(self.startIndex, offsetBy: rangeFrom.lowerBound)
        return String(self[start...])
    }
    
    subscript(_ closedRange: ClosedRange<Int>) -> String {
        let start = self.index(self.startIndex, offsetBy: closedRange.lowerBound)
        let end = self.index(self.startIndex, offsetBy: closedRange.upperBound)
        return String(self[start...end])
    }
    
    subscript(_ range: Range<Int>) -> String {
        let start = self.index(self.startIndex, offsetBy: range.lowerBound)
        let end = self.index(self.startIndex, offsetBy: range.upperBound)
        return String(self[start..<end])
    }
}
