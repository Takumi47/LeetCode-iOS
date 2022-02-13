//
//  838_PushDominoes.swift
//  LeetCode
//
//  Created by xander on 2021/7/21.
//

import Foundation

class Xoo838 {
    /**
     1，一旦变成L或R，就永远不会再更改了，因为题目说了“已经下降的不会对已经下降过的产生力”
     2，对于任何的“.”，只需要向左找“R”，并向右找“L”，看那边更近，更早传递力量来，就以它为准
     3，向左找“R”，但如果提前找到“L”，那就不要找了，因为更近的“L”会拦截掉；右边同理；
     作者：py-c
     链接：https://leetcode-cn.com/problems/push-dominoes/solution/yi-kai-shi-jiu-ke-yi-yu-jian-zhong-dian-pi0rf/
     来源：力扣（LeetCode）
     著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
     */
    func pushDominoes(_ dominoes: String) -> String {
        let n = dominoes.count
        var symbols = Array(dominoes)
        for i in 0..<n {
            guard symbols[i] == "." else { continue }
            
            var timeLeft = -1
            for j in (0..<i).reversed() {
                if symbols[j] == "L" { break }
                if symbols[j] == "R" {
                    timeLeft = i - j
                    break
                }
            }
            
            var timeRight = -1
            for j in (i + 1)..<n {
                if symbols[j] == "R" { break }
                if symbols[j] == "L" {
                    timeRight = j - i
                    break
                }
            }
            
            if timeLeft == -1 && timeRight == -1 { continue }
            if timeLeft >= 0 && timeRight >= 0 {
                if timeLeft > timeRight {
                    symbols[i] = "l"
                } else if timeLeft < timeRight {
                    symbols[i] = "r"
                }
                continue
            }
            if timeLeft >= 0 {
                symbols[i] = "r"
            } else if timeRight >= 0 {
                symbols[i] = "l"
            }
        }
        
        var ans = ""
        for symbol in symbols {
            ans.append(symbol.uppercased())
        }
        return ans
    }
}

// MARK: - 1. Adjacent Symbols

class Xoo838_1 {
    func pushDominoes(_ dominoes: String) -> String {
        ""
    }
}

// MARK: - 2. Calculate Force

class Xoo838_2 {
    func pushDominoes(_ dominoes: String) -> String {
        ""
    }
}
