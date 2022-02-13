//
//  FastPower.swift
//  LeetCode
//
//  Created by xander on 2021/7/5.
//

import Foundation

/*
 3^43 = 3^(1 + 2 + 8 + 32)
      = 3^1 * 3^2 * 3^8 * 3^32
 */
func fastPow(_ x: Int, _ pow: Int) -> Int {
    var x = x
    var pow = pow - 1
    var ans = x
    while pow > 0 {
        if pow % 2 == 1 { ans *= x }
        x *= x
        pow = pow >> 1
    }
    return ans
}
