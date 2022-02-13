//
//  WordNode.swift
//  LeetCode
//
//  Created by xander on 2022/1/29.
//

import Foundation

class WordNode {
    var isWord = false
    var children: [WordNode?] = Array(repeating: nil, count: 26)
    var count = 0 // ⭐️⭐️⭐️ #212. Word Search II
}
