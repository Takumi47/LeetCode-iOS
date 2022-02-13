//
//  633_SumOfSquareNumbers.swift
//  LeetCode
//
//  Created by xander on 2021/8/25.
//

import Foundation

class Xoo633 {
    func judgeSquareSum(_ c: Int) -> Bool {
        let m = Int(sqrt(Double(c)))
        for a in 0...m {
            let b = round(sqrt(Double(c - a * a)))
            if a * a + Int(b * b) == c {
                return true
            }
        }
        return false
    }
}

// MARK: - 1. Brute Force

class Xoo633_1 {
    
    // both a and b can lie within the range [0,sqrt(c)]
    func judgeSquareSum(_ c: Int) -> Bool {
        for a in 0...c where a * a <= c {
            for b in 0...c where b * b <= c {
                if a * a + b * b == c {
                    return true
                }
            }
        }
        return false
    }
}

// MARK: - 2. Better Brute Force

// https://www.youtube.com/watch?v=IJ0EQCkJCTc
class Xoo633_2 {
    func judgeSquareSum(_ c: Int) -> Bool {
        for a in 0...c where a * a <= c {
            let squareB = c - (a * a)
            
            var sum = 0
            var i = 1
            while sum < squareB {
                sum += i
                i += 2
            }
            
            if sum == squareB {
                return true
            }
        }
        return false
    }
}

// MARK: - 3. Using Sqrt Function

class Xoo633_3 {
    func judgeSquareSum(_ c: Int) -> Bool {
        for a in 0...c where a * a <= c {
            let b = sqrt(Double(c - a * a))
            if b == Double(Int(b)) {
                return true
            }
        }
        return false
    }
}

// MARK: - 4. Binary Search

class Xoo633_4 {
    func judgeSquareSum(_ c: Int) -> Bool {
        for a in 0...c {
            guard a * a <= c else { break }
            let squareB = c - (a * a)
            if binarySearch(0, squareB, squareB) {
                return true
            }
        }
        return false
    }
    
    private func binarySearch(_ start: Int, _ end: Int, _ target: Int) -> Bool {
        guard start <= end else { return false }
        let mid = (start + end) / 2
        if mid * mid == target {
            return true
        } else if mid * mid > target {
            return binarySearch(start, mid - 1, target)
        } else {
            return binarySearch(mid + 1, end, target)
        }
    }
}

// MARK: - 5. Fermat Theorem

class Xoo633_5 {
    func judgeSquareSum(_ c: Int) -> Bool {
        false
    }
}
