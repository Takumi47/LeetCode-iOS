//
//  main.swift
//  LeetCode
//
//  Created by xander on 2021/6/1.
//

import Foundation

//Example.of(.easy, "1. Two Sum") {
//    let t1 = (nums: [2,7,11,15], target: 9, output: [0,1])
//    let t2 = (nums: [3,2,4], target: 6, output: [1,2])
//    let t3 = (nums: [3,3], target: 6, output: [0,1])
//    let t4 = (nums: [1,0,-1,3,-2,4], target: 0, output: [0,2])
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo1_2().twoSum(t.0, t.1)
//        print("\(result)")
//        if Set(result) != Set(t.2) { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "7. Reverse Integer") {
//    let t1 = (x: 123, output: 321)
//    let t2 = (x: -123, output: -321)
//    let t3 = (x: 120, output: 21)
//    let t4 = (x: 0, output: 0)
//    let t5 = (x: 1534236469, output: 0)
//    [t1, t2, t3, t4, t5].forEach { t in
//        let result = Xoo7().reverse(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "8. String to Integer (atoi)") {
//    let t1 = (s: "42", output: 42)
//    let t2 = (s: "   -42", output: -42)
//    let t3 = (s: "4193 with words", output: 4193)
//    let t4 = (s: "-9223372036854775800", output: -2147483648)
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo8_2().myAtoi(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "9. Palindrome Number") {
//    let t1 = (x: 121, output: true)
//    let t2 = (x: -121, output: false)
//    let t3 = (x: 10, output: false)
//    let t4 = (x: -101, output: false)
//    let t5 = (x: 2147483648, output: false)
//    [t1, t2, t3, t4, t5].forEach { t in
//        let result = Xoo9().isPalindrome(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "13. Roman to Integer") {
//    let t1 = (s: "III", output: 3)
//    let t2 = (s: "LVIII", output: 58)
//    let t3 = (s: "MCMXCIV", output: 1994)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo13().romanToInt(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "14. ") {
//    let t1 = (strs: ["flower","flow","flight"], output: "fl")
//    let t2 = (strs: ["dog","racecar","car"], output: "")
//    [t1, t2].forEach { t in
//        let result = Xoo14_1().longestCommonPrefix(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "15. 3Sum") {
//    let t1 = (nums: [-1,0,1,2,-1,-4], output: [[-1,-1,2],[-1,0,1]])
//    let t2 = (nums: [Int](), output: [[Int]]())
//    let t3 = (nums: [0], output: [[Int]]())
//    let t4 = (nums: [-1,-1,-1,1,1,1,0], output: [[-1,0,1]])
//    let t5 = (nums: [0,0,0], output: [[0,0,0]])
//    [t1, t2, t3, t4, t5].forEach { t in
//        let result = Xoo15_B().threeSum(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "16. 3Sum Closest") {
//    let t1 = (nums: [-1,2,1,-4], target: 1, output: 2)
//    let t2 = (nums: [-1,2,1,1,-4], target: 1, output: 1)
//    [t1, t2].forEach { t in
//        let result = Xoo16_1().threeSumClosest(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "18. 4Sum") {
//    let t1 = (nums: [1,0,-1,0,-2,2], target: 0, output: [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]])
//    let t2 = (nums: [2,2,2,2,2], target: 8, output: [[2,2,2,2]])
//    let t3 = (nums: [0,0,0,0,1,-1], target: 0, output: [[0,0,0,0], [-1,0,0,1]])
//    [t1, t2, t3].forEach { t in
//        let result = Xoo18().fourSum(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "20. Valid Parentheses") {
//    let t1 = (s: "()", output: true)
//    let t2 = (s: "()[]{}", output: true)
//    let t3 = (s: "(]", output: false)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo20_1().isValid(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "21. Merge Two Sorted Lists") {
//    let a3 = ListNode(4)
//    let a2 = ListNode(2, a3)
//    let a1 = ListNode(1, a2)
//    let b3 = ListNode(4)
//    let b2 = ListNode(3, b3)
//    let b1 = ListNode(1, b2)
//    let c1 = ListNode(0)
//
//    let t1: (ListNode?, ListNode?) = (a1, b1)
//    let t2: (ListNode?, ListNode?) = (nil, nil)
//    let t3: (ListNode?, ListNode?) = (nil, c1)
//    
//    [t1, t2, t3].forEach { t in
//        let result = Xoo21_2().mergeTwoLists(t.0, t.1)
//        if let n = result { print("\(n)") } else { print("Empty list") }
//    }
//}

//Example.of(.medium, "22. Generate Parentheses") {
//    let t1 = (n: 3, output: ["((()))","(()())","(())()","()(())","()()()"])
//    let t2 = (n: 1, output: ["()"])
//    [t1, t2].enumerated().forEach { i, t in
//        let result = Xoo22_3().generateParenthesis(t.0)
//        print("\(result)")
//        assert(Set(result) == Set(t.1), "❌\(i)")
//    }
//}

//Example.of(.hard, "23. Merge k Sorted Lists") {
//    let a3 = ListNode(5)
//    let a2 = ListNode(4, a3)
//    let a1 = ListNode(1, a2)
//    let b3 = ListNode(4)
//    let b2 = ListNode(3, b3)
//    let b1 = ListNode(1, b2)
//    let c2 = ListNode(6)
//    let c1 = ListNode(2, c2)
//
//    let t1: [ListNode?] = [a1, b1, c1]
//    let t2: [ListNode?] = []
//    let t3: [ListNode?] = [nil]
//
//    [t1, t2, t3].forEach { t in
//        let result = Xoo23_5().mergeKLists(t)
//        if let n = result { print("\(n)") } else { print("Empty list") }
//    }
//}

//Example.of(.hard, "25. Reverse Nodes in k-Group") {
//    let a5 = ListNode(5)
//    let a4 = ListNode(4, a5)
//    let a3 = ListNode(3, a4)
//    let a2 = ListNode(2, a3)
//    let a1 = ListNode(1, a2)
//    let t1 = (head: a1, k: 2)
//
//    let b5 = ListNode(5)
//    let b4 = ListNode(4, b5)
//    let b3 = ListNode(3, b4)
//    let b2 = ListNode(2, b3)
//    let b1 = ListNode(1, b2)
//    let t2 = (head: b1, k: 3)
//
//    let c5 = ListNode(5)
//    let c4 = ListNode(4, c5)
//    let c3 = ListNode(3, c4)
//    let c2 = ListNode(2, c3)
//    let c1 = ListNode(1, c2)
//    let t3 = (head: c1, k: 1)
//
//    let d1 = ListNode(1)
//    let t4 = (head: d1, k: 1)
//
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo25().reverseKGroup(t.0, t.1)
//        print(String(describing: result))
//    }
//}

//Example.of(.easy, "35. Search Insert Position") {
//    let t1 = (nums: [1,3,5,6], target: 5, output: 2)
//    let t2 = (nums: [1,3,5,6], target: 2, output: 1)
//    let t3 = (nums: [1,3,5,6], target: 7, output: 4)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo35_1().searchInsert(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "36. Valid Sudoku") {
//    let t1 = (board:
//                [[Character("5"),"3",".",".","7",".",".",".","."]
//                ,["6",".",".","1","9","5",".",".","."]
//                ,[".","9","8",".",".",".",".","6","."]
//                ,["8",".",".",".","6",".",".",".","3"]
//                ,["4",".",".","8",".","3",".",".","1"]
//                ,["7",".",".",".","2",".",".",".","6"]
//                ,[".","6",".",".",".",".","2","8","."]
//                ,[".",".",".","4","1","9",".",".","5"]
//                ,[".",".",".",".","8",".",".","7","9"]], output: true)
//    let t2 = (board:
//                [[Character("8"),"3",".",".","7",".",".",".","."]
//                ,["6",".",".","1","9","5",".",".","."]
//                ,[".","9","8",".",".",".",".","6","."]
//                ,["8",".",".",".","6",".",".",".","3"]
//                ,["4",".",".","8",".","3",".",".","1"]
//                ,["7",".",".",".","2",".",".",".","6"]
//                ,[".","6",".",".",".",".","2","8","."]
//                ,[".",".",".","4","1","9",".",".","5"]
//                ,[".",".",".",".","8",".",".","7","9"]], output: false)
//    [t1, t2].forEach { t in
//        let result = Xoo36_A().isValidSudoku(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "37. Sudoku Solver") {
//    let t1 = (
//        board: [[Character("5"),"3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]],
//        output: [[Character("5"),"3","4","6","7","8","9","1","2"],["6","7","2","1","9","5","3","4","8"],["1","9","8","3","4","2","5","6","7"],["8","5","9","7","6","1","4","2","3"],["4","2","6","8","5","3","7","9","1"],["7","1","3","9","2","4","8","5","6"],["9","6","1","5","3","7","2","8","4"],["2","8","7","4","1","9","6","3","5"],["3","4","5","2","8","6","1","7","9"]])
//    [t1].forEach { t in
//        var t = t
//        Xoo37().solveSudoku(&t.0)
//        print("\(t.0)")
//        if t.0 != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "42. Trapping Rain Water") {
//    let t1 = (height: [0,1,0,2,1,0,1,3,2,1,2,1], output: 6)
//    let t2 = (height: [4,2,0,3,2,5], output: 9)
//    let t3 = (height: [0,10,0], output: 0)
//    let t4 = (height: [Int](), output: 0)
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo42().trap(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.medium, "43. Multiply Strings") {
    let t1 = (num1: "2", num2: "3", output: "6")
    let t2 = (num1: "123", num2: "456", output: "56088")
    [t1, t2].forEach { t in
        let result = Xoo43().multiply(t.0, t.1)
        print("\(result)")
        if result != t.2 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.medium, "45. Jump Game II") {
//    let t1 = (nums: [2,3,1,1,4], output: 2)
//    let t2 = (nums: [2,3,0,1,4], output: 2)
//    let t3 = (nums: [2,3,1], output: 1)
//    let t4 = (nums: [7,0,9,6,9,6,1,7,9,0,1,2,9,0,3], output: 2)
//    let t5 = (nums: [1], output: 0)
//    [t1, t2, t3, t4, t5].forEach { t in
//        let result = Xoo45().jump(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.medium, "49. Group Anagrams") {
    let t1 = (strs: ["eat","tea","tan","ate","nat","bat"], output: [["bat"],["nat","tan"],["ate","eat","tea"]])
    let t2 = (strs: [""], output: [[""]])
    let t3 = (strs: ["a"], output: [["a"]])
    [t1, t2, t3].forEach { t in
        let result = Xoo49().groupAnagrams(t.0)
        print("\(result)")
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.easy, "53. Maximum Subarray") {
//    let t1 = (nums: [-2,1,-3,4,-1,2,1,-5,4], output: 6)
//    let t2 = (nums: [1], output: 1)
//    let t3 = (nums: [5,4,-1,7,8], output: 23)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo53_A().maxSubArray(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "54. Spiral Matrix") {
//    let t1 = (matrix: [[1,2,3],[4,5,6],[7,8,9]], output: [1,2,3,6,9,8,7,4,5])
//    let t2 = (matrix: [[1,2,3,4],[5,6,7,8],[9,10,11,12]], output: [1,2,3,4,8,12,11,10,9,5,6,7])
//    [t1, t2].forEach { t in
//        let result = Xoo54().spiralOrder(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "55. Jump Game") {
//    let t1 = (nums: [2,3,1,1,4], output: true)
//    let t2 = (nums: [3,2,1,0,4], output: false)
//    [t1, t2].forEach { t in
//        let result = Xoo55().canJump(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "56. Merge Intervals") {
//    let t1 = (intervals: [[1,3],[2,6],[8,10],[15,18]], output: [[1,6],[8,10],[15,18]])
//    let t2 = (intervals: [[1,4],[4,5]], output: [[1,5]])
//    [t1, t2].forEach { t in
//        let result = Xoo56().merge(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "58. Length of Last Word") {
//    let t1 = (s: "Hello World", output: 5)
//    let t2 = (s: "   fly me   to   the moon  ", output: 4)
//    let t3 = (s: "luffy is still joyboy", output: 6)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo58_1().lengthOfLastWord(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "62. Unique Paths") {
//    let t1 = (m: 3, n: 7, output: 28)
//    let t2 = (m: 3, n: 2, output: 3)
//    let t3 = (m: 7, n: 3, output: 28)
//    let t4 = (m: 3, n: 3, output: 6)
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo62().uniquePaths(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "63. Unique Paths II") {
//    let t1 = (obstacleGrid: [[0,0,0],[0,1,0],[0,0,0]], output: 2)
//    let t2 = (obstacleGrid: [[0,1],[0,0]], output: 1)
//    [t1, t2].forEach { t in
//        let result = Xoo63().uniquePathsWithObstacles(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "66. Plus One") {
//    let t1 = (digits: [1,2,3], output: [1,2,4])
//    let t2 = (digits: [4,3,2,1], output: [4,3,2,2])
//    let t3 = (digits: [9], output: [1,0])
//    let t4 = (digits: [7,2,8,5,0,9,1,2,9,5,3,6,6,7,3,2,8,4,3,7,9,5,7,7,4,7,4,9,4,7,0,1,1,1,7,4,0,0,6], output: [7,2,8,5,0,9,1,2,9,5,3,6,6,7,3,2,8,4,3,7,9,5,7,7,4,7,4,9,4,7,0,1,1,1,7,4,0,0,7])
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo66().plusOne(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "67. Add Binary") {
//    let t1 = (a: "11", b: "1", output: "100")
//    let t2 = (a: "1010", b: "1011", output: "10101")
//    let t3 = (a: "10100000100100110110010000010101111011011001101110111111111101000000101111001110001111100001101", b: "110101001011101110001111100110001010100001101011101010000011011011001011101111001100000011011110011", output: "110111101100010011000101110110100000011101000101011001000011011000001100011110011010010011000000000")
//    [t1, t2, t3].forEach { t in
//        let result = Xoo67_A().addBinary(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "70. Climbing Stairs") {
//    let t1 = (n: 2, output: 2)
//    let t2 = (n: 3, output: 3)
//    [t1, t2].forEach { t in
//        let result = Xoo70_3().climbStairs(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.medium, "73. Set Matrix Zeroes") {
    let t1 = (matrix: [[1,1,1],[1,0,1],[1,1,1]], output: [[1,0,1],[0,0,0],[1,0,1]])
    let t2 = (matrix: [[0,1,2,0],[3,4,5,2],[1,3,1,5]], output: [[0,0,0,0],[0,4,5,0],[0,3,1,0]])
    [t1, t2].forEach { (a, b) in
        var a = a
        Xoo73().setZeroes(&a)
        print("\(a)")
        if a != b { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.medium, "75. Sort Colors") {
//    let t1 = (nums: [2,0,2,1,1,0], output: [0,0,1,1,2,2])
//    let t2 = (nums: [2,0,1], output: [0,1,2])
//    let t3 = (nums: [0], output: [0])
//    let t4 = (nums: [1], output: [1])
//    [t1, t2, t3, t4].forEach { t in
//        var x = t.0
//        Xoo75().sortColors(&x)
//        print("\(x)")
//        if x != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.hard, "76. Minimum Window Substring") {
    let t1 = (s: "ADOBECODEBANC", t: "ABC", output: "BANC")
    let t2 = (s: "a", t: "a", output: "a")
    let t3 = (s: "a", t: "aa", output: "")
    let t4 = (s: "a", t: "b", output: "")
    [t1, t2, t3, t4].forEach { t in
        let result = Xoo76_1().minWindow(t.0, t.1)
        print("\(result)")
        if result != t.2 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.medium, "78. Subsets") {
//    let t1 = (nums: [1,2,3], output: [[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]])
//    let t2 = (nums: [0], output: [[],[0]])
//    [t1, t2].forEach { t in
//        let result = Xoo78_3().subsets(t.0)
//        print("\(result)")
//        if Set(result) != Set(t.1) { print("❌❌❌❌❌\n")}
//    }
//}

Example.of(.medium, "79. Word Search") {
    let t1 = (board: [[Character("A"),"B","C","E"],["S","F","C","S"],["A","D","E","E"]], word: "ABCCED", output: true)
    let t2 = (board: [[Character("A"),"B","C","E"],["S","F","C","S"],["A","D","E","E"]], word: "SEE", output: true)
    let t3 = (board: [[Character("A"),"B","C","E"],["S","F","C","S"],["A","D","E","E"]], word: "ABCB", output: false)
    [t1, t2, t3].forEach { t in
        let result = Xoo79().exist(t.0, t.1)
        print("\(result)")
        if result != t.2 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.medium, "80. Remove Duplicates from Sorted Array II") {
//    let t1 = (nums: [1,1,1,2,2,3], output: 5)
//    let t2 = (nums: [0,0,1,1,1,1,2,3,3], output: 7)
//    let t3 = (nums: [1,2,3,4,5], output: 5)
//    [t1, t2, t3].forEach { t in
//        var t = t
//        let result = Xoo80_2().removeDuplicates(&t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.hard, "84. Largest Rectangle in Histogram") {
    let t1 = (heights: [2,1,5,6,2,3], output: 10)
    let t2 = (heights: [2,4], output: 4)
    [t1, t2].forEach { t in
        let result = Xoo84_4().largestRectangleArea(t.0)
        print("\(result)")
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.easy, "88. Merge Sorted Array") {
//    let t1 = (nums1: [1,2,3,0,0,0], m: 3, nums2: [2,5,6], n: 3, output: [1,2,2,3,5,6])
//    let t2 = (nums1: [1], m: 1, nums2: [Int](), n: 0, output: [1])
//    let t3 = (nums1: [0], m: 0, nums2: [1], n: 1, output: [1])
//    [t1, t2, t3].forEach { t in
//        var t = t
//        Xoo88_2().merge(&t.0, t.1, t.2, t.3)
//        print("\(t.0)")
//        if t.0 != t.4 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "89. Gray Code") {
//    let t1 = (n: 2, output: [0, 1, 3, 2])
//    let t2 = (n: 1, output: [0, 1])
//    [t1, t2].forEach { t in
//        let result = Xoo89_A().grayCode(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n")}
//    }
//}

//Example.of(.medium, "90. Subsets II") {
//    let t1 = (nums: [1,2,2], output: [[],[1],[1,2],[1,2,2],[2],[2,2]])
//    let t2 = (nums: [0], output: [[],[0]])
//    [t1, t2].forEach { t in
//        let result = Xoo90().subsetsWithDup(t.0)
//        print("\(result)")
//        if Set(result) != Set(t.1) { print("❌❌❌❌❌\n")}
//    }
//}

Example.of(.medium, "91. Decode Ways") {
    let t1 = (s: "12", output: 2)
    let t2 = (s: "226", output: 3)
    let t3 = (s: "0", output: 0)
    let t4 = (s: "06", output: 0)
    let t5 = (s: "10", output: 1)
    [t1, t2, t3, t4, t5].forEach { t in
        let result = Xoo91().numDecodings(t.0)
        print("\(result)")
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.medium, "92. Reverse Linked List II") {
//    let t1 = (head: [1,2,3,4,5], left: 2, right: 4, output: [1,4,3,2,5])
//    let t2 = (head: [5], left: 1, right: 1, output: [5])
//    let t3 = (head: [7,9,2,10,1,8,6], left: 3, right: 6, output: [7,9,8,1,10,2,6])
//    let t4 = (head: [3,5], left: 1, right: 2, output: [5, 3])
//    let t5 = (head: [9,8,7,6,5,4,3,2,1,0], left: 1, right: 10, output: [0,1,2,3,4,5,6,7,8,9])
//
//    func buildList(_ vals: [Int]) -> ListNode? {
//        guard let first = vals.first else { return nil }
//        let head = ListNode(first)
//        var current: ListNode? = head
//        for i in 1..<vals.count {
//            current?.next = ListNode(vals[i])
//            current = current?.next
//        }
//        return head
//    }
//
//    [t1, t2, t3, t4, t5].enumerated().forEach { i, t in
//        let node = Xoo92().reverseBetween(buildList(t.0), t.1, t.2)
//        var result: [Int] = []
//        var curr = node
//        while let n = curr {
//            result.append(n.val)
//            curr = n.next
//        }
//        print("\(result)")
//        assert(result == t.3, "❌\(i)")
//    }
//}

//Example.of(.easy, "94. Binary Tree Inorder Traversal") {
//    let a3 = TreeNode(3)
//    let a2 = TreeNode(2, a3, nil)
//    let a1 = TreeNode(1, nil, a2)
//    let t1 = (root: a1, output: [1, 3, 2])
//    let t2: (TreeNode?, [Int]) = (root: nil, output: [])
//    let c1 = TreeNode(1)
//    let t3 = (root: c1, output: [1])
//    [t1, t2, t3].forEach { t in
//        let result = Xoo94_3().inorderTraversal(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.medium, "95. Unique Binary Search Trees II") {
    let t1 = (n: 3, output: 5)
    let t2 = (n: 1, output: 1)
    [t1, t2].forEach { t in
        let result = Xoo96().numTrees(t.0)
        print("\(result)")
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.medium, "96. Unique Binary Search Trees") {
//    let t1 = (n: 3, output: 5)
//    let t2 = (n: 1, output: 1)
//    let t3 = (n: 19, output: 1767263190)
//    let t4 = (n: 17, output: 129644790)
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo96_B().numTrees(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of("97. Interleaving String") {
//    let t1 = ("aabcc", "dbbca", "aadbbcbcac") // true
//    let t2 = ("aabcc", "dbbca", "aadbbbaccc") // false
//    let t3 = ("", "", "") // true
//    [t1, t2, t3].forEach {
//        print("\(Xoo97_4().isInterleave($0.0, $0.1, $0.2))")
//    }
//}

//Example.of("105. Construct Binary Tree from Preorder and Inorder Traversal") {
//    let t1 = (preorder: [3,9,20,15,7], inorder: [9,3,15,20,7]) // [3,9,20,null,null,15,7]
//    let t2 = (preorder: [-1], inorder: [-1]) // [-1]
//    [t1, t2].forEach {
//        print("\(Xoo105().buildTree($0.0, $0.1) ?? TreeNode())")
//    }
//}

//Example.of(.easy, "108. Convert Sorted Array to Binary Search Tree") {
//    let t1 = [-10,-3,0,5,9]
//    let t2 = [1,3]
//    [t1, t2].forEach { t in
//        let node = Xoo108().sortedArrayToBST(t)
//        print(String(describing: node))
//    }
//}

//Example.of(.easy, "112. Path Sum") {
//    let a9 = TreeNode(1)
//    let a8 = TreeNode(2)
//    let a7 = TreeNode(7)
//    let a6 = TreeNode(4, nil , a9)
//    let a5 = TreeNode(13)
//    let a4 = TreeNode(11, a7, a8)
//    let a3 = TreeNode(8, a5, a6)
//    let a2 = TreeNode(4, a4, nil)
//    let a1 = TreeNode(5, a2, a3)
//    let t1 = (root: a1, targetSum: 22, output: true)
//
//    let b3 = TreeNode(3)
//    let b2 = TreeNode(2)
//    let b1 = TreeNode(1, b2, b3)
//    let t2 = (root: b1, targetSum: 5, output: false)
//
//    let c2 = TreeNode(2)
//    let c1 = TreeNode(1, c2, nil)
//    let t3 = (root: c1, targetSum: 0, output: false)
//
//    [t1, t2, t3].forEach { t in
//        let result = Xoo112().hasPathSum(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n")}
//    }
//}

Example.of(.medium, "113. Path Sum II") {
    let a10 = TreeNode(1)
    let a9 = TreeNode(5)
    let a8 = TreeNode(2)
    let a7 = TreeNode(7)
    let a6 = TreeNode(4, a9, a10)
    let a5 = TreeNode(13)
    let a4 = TreeNode(11, a7, a8)
    let a3 = TreeNode(8, a5, a6)
    let a2 = TreeNode(4, a4, nil)
    let a1 = TreeNode(5, a2, a3)
    let t1 = (root: a1, targetSum: 22, output: [[5,4,11,2],[5,8,4,5]])
    
    let b3 = TreeNode(3)
    let b2 = TreeNode(2)
    let b1 = TreeNode(1, b2, b3)
    let t2 = (root: b1, targetSum: 5, output: [[Int]]())
    
    let c2 = TreeNode(2)
    let c1 = TreeNode(1, c2, nil)
    let t3 = (root: c1, targetSum: 0, output: [[Int]]())
    
    [t1, t2, t3].forEach { t in
        let result = Xoo113().pathSum(t.0, t.1)
        print("\(result)")
        if Set(result) != Set(t.2) { print("❌❌❌❌❌\n")}
    }
}

//Example.of(.medium, "116. Populating Next Right Pointers in Each Node") {
//    let a7 = Node2(7)
//    let a6 = Node2(6)
//    let a5 = Node2(5)
//    let a4 = Node2(4)
//    let a3 = Node2(3, a6, a7)
//    let a2 = Node2(2, a4, a5)
//    let a1 = Node2(1, a2, a3)
//
//    [a1].forEach { t in
//        let result = Xoo116().connect(t)
//        print("\(result)")
//    }
//}

//Example.of(.hard, "118. Pascal's Triangle") {
//    let t1 = (numRows: 5, output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]])
//    let t2 = (numRows: 1, output: [[1]])
//    let t3 = (numRows: 30, output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1],[1,5,10,10,5,1],[1,6,15,20,15,6,1],[1,7,21,35,35,21,7,1],[1,8,28,56,70,56,28,8,1],[1,9,36,84,126,126,84,36,9,1],[1,10,45,120,210,252,210,120,45,10,1],[1,11,55,165,330,462,462,330,165,55,11,1],[1,12,66,220,495,792,924,792,495,220,66,12,1],[1,13,78,286,715,1287,1716,1716,1287,715,286,78,13,1],[1,14,91,364,1001,2002,3003,3432,3003,2002,1001,364,91,14,1],[1,15,105,455,1365,3003,5005,6435,6435,5005,3003,1365,455,105,15,1],[1,16,120,560,1820,4368,8008,11440,12870,11440,8008,4368,1820,560,120,16,1],[1,17,136,680,2380,6188,12376,19448,24310,24310,19448,12376,6188,2380,680,136,17,1],[1,18,153,816,3060,8568,18564,31824,43758,48620,43758,31824,18564,8568,3060,816,153,18,1],[1,19,171,969,3876,11628,27132,50388,75582,92378,92378,75582,50388,27132,11628,3876,969,171,19,1],[1,20,190,1140,4845,15504,38760,77520,125970,167960,184756,167960,125970,77520,38760,15504,4845,1140,190,20,1],[1,21,210,1330,5985,20349,54264,116280,203490,293930,352716,352716,293930,203490,116280,54264,20349,5985,1330,210,21,1],[1,22,231,1540,7315,26334,74613,170544,319770,497420,646646,705432,646646,497420,319770,170544,74613,26334,7315,1540,231,22,1],[1,23,253,1771,8855,33649,100947,245157,490314,817190,1144066,1352078,1352078,1144066,817190,490314,245157,100947,33649,8855,1771,253,23,1],[1,24,276,2024,10626,42504,134596,346104,735471,1307504,1961256,2496144,2704156,2496144,1961256,1307504,735471,346104,134596,42504,10626,2024,276,24,1],[1,25,300,2300,12650,53130,177100,480700,1081575,2042975,3268760,4457400,5200300,5200300,4457400,3268760,2042975,1081575,480700,177100,53130,12650,2300,300,25,1],[1,26,325,2600,14950,65780,230230,657800,1562275,3124550,5311735,7726160,9657700,10400600,9657700,7726160,5311735,3124550,1562275,657800,230230,65780,14950,2600,325,26,1],[1,27,351,2925,17550,80730,296010,888030,2220075,4686825,8436285,13037895,17383860,20058300,20058300,17383860,13037895,8436285,4686825,2220075,888030,296010,80730,17550,2925,351,27,1],[1,28,378,3276,20475,98280,376740,1184040,3108105,6906900,13123110,21474180,30421755,37442160,40116600,37442160,30421755,21474180,13123110,6906900,3108105,1184040,376740,98280,20475,3276,378,28,1],[1,29,406,3654,23751,118755,475020,1560780,4292145,10015005,20030010,34597290,51895935,67863915,77558760,77558760,67863915,51895935,34597290,20030010,10015005,4292145,1560780,475020,118755,23751,3654,406,29,1]]
//)
//    [t1, t2, t3].enumerated().forEach { i, t in
//        let result = Xoo118_1().generate(t.0)
//        print("\(result)")
//        assert(result == t.1, "❌\(i)")
//    }
//}

Example.of(.easy, "121. Best Time to Buy and Sell Stock") {
    let t1 = (prices: [7,1,5,3,6,4], output: 5)
    let t2 = (prices: [7,6,4,3,1], output: 0)
    [t1, t2].forEach { t in
        let result = Xoo121_C().maxProfit(t.0)
        print("\(result)")
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.easy, "122. Best Time to Buy and Sell Stock II") {
//    let t1 = (prices: [7,1,5,3,6,4], output: 7)
//    let t2 = (prices: [1,2,3,4,5], output: 4)
//    let t3 = (prices: [7,6,4,3,1], output: 0)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo122_3().maxProfit(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "125. Valid Palindrome") {
//    let t1 = (s: "A man, a plan, a canal: Panama", output: true)
//    let t2 = (s: "race a car", output: false)
//    let t3 = (s: " ", output: true)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo125().isPalindrome(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "126. Word Ladder II") {
//    let t1 = (beginWord: "hit", endWord: "cog", wordList: ["hot","dot","dog","lot","log","cog"], output: [["hit","hot","dot","dog","cog"],["hit","hot","lot","log","cog"]])
//    let t2 = (beginWord: "hit", endWord: "cog", wordList: ["hot","dot","dog","lot","log"], output: [[String]]())
//    [t1, t2].forEach { t in
//        let result = Xoo126().findLadders(t.0, t.1, t.2)
//        print("\(result)")
//        if Set(result) != Set(t.3) { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "127. Word Ladder") {
//    let t1 = (beginWord: "hit", endWord: "cog", wordList: ["hot","dot","dog","lot","log","cog"], output: 5)
//    let t2 = (beginWord: "hit", endWord: "cog", wordList: ["hot","dot","dog","lot","log"], output: 0)
//    let t3 = (beginWord: "hot", endWord: "dog", wordList: ["hot","dog"], output: 0)
//    let t4 = (beginWord: "hit", endWord: "cog", wordList: ["hot","dot","tog","cog"], output: 0)
//    let t5 = (beginWord: "hit", endWord: "hat", wordList: ["hat"], output: 2)
//    [t1, t2, t3, t4, t5].forEach { t in
//        let result = Xoo127_B().ladderLength(t.0, t.1, t.2)
//        print("\(result)")
//        if result != t.3 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of("128. Longest Consecutive Sequence") {
//    let t1 = [100,4,200,1,3,2] // 4
//    let t2 = [0,3,7,2,5,8,4,6,0,1] // 9
//    let t3 = [1,0,-1] // 3
//    [t1, t2, t3].forEach {
//        print("\(Xoo128_3().longestConsecutive($0))")
//    }
//}

Example.of(.medium, "129. Sum Root to Leaf Numbers") {
    let a3 = TreeNode(3)
    let a2 = TreeNode(2)
    let a1 = TreeNode(1, a2, a3)
    let t1 = (root: a1, output: 25)
    
    let b5 = TreeNode(1)
    let b4 = TreeNode(5)
    let b3 = TreeNode(0)
    let b2 = TreeNode(9, b4, b5)
    let b1 = TreeNode(4, b2, b3)
    let t2 = (root: b1, output: 1026)
    
    [t1, t2].forEach { t in
        let result = Xoo129_2().sumNumbers(t.0)
        print("\(result)")
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.medium, "130. Surrounded Regions") {
//    let t1 = (board: [[Character("X"),"X","X","X"],["X","O","O","X"],["X","X","O","X"],["X","O","X","X"]], output: [[Character("X"),"X","X","X"],["X","X","X","X"],["X","X","X","X"],["X","O","X","X"]])
//    let t2 = (board: [[Character("X")]], output: [[Character("X")]])
//    [t1, t2].forEach { t in
//        var board = t.0
//        Xoo130_1().solve(&board)
//        print("\(board)")
//        if board != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "131. Palindrome Partitioning") {
//    let t1 = (s: "aab", output: [["a","a","b"],["aa","b"]])
//    let t2 = (s: "a", output: [["a"]])
//    [t1, t2].forEach { t in
//        let result = Xoo131().partition(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.hard, "132. Palindrome Partitioning II") {
    let t1 = (s: "aab", output: 1)
    let t2 = (s: "a", output: 0)
    let t3 = (s: "ab", output: 1)
    [t1, t2, t3].forEach { t in
        let result = Xoo132().minCut(t.0)
        print("\(result)")
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.medium, "133. Clone Graph") {
//}

//Example.of(.medium, "134. Gas Station") {
//    let t1 = (gas: [1,2,3,4,5], cost: [3,4,5,1,2], output: 3)
//    let t2 = (gas: [2,3,4], cost: [3,4,3], output: -1)
//    [t1, t2].forEach { t in
//        let result = Xoo134_1().canCompleteCircuit(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "135. Candy") {
//    let t1 = (ratings: [1,0,2], output: 5)
//    let t2 = (ratings: [1,2,2], output: 4)
//    [t1, t2].enumerated().forEach { i, t in
//        let result = Xoo135_2().candy(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\(i)") }
//    }
//}

//Example.of(.easy, "136. Single Number") {
//    let t1 = (nums: [2,2,1], output: 1)
//    let t2 = (nums: [4,1,2,1,2], output: 4)
//    let t3 = (nums: [1], output: 1)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo136_4().singleNumber(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "137. Single Number II") {
//    let t1 = (nums: [2,2,3,2], output: 3)
//    let t2 = (nums: [0,1,0,1,0,1,99], output: 99)
//    let t3 = (nums: [-2,-2,1,1,4,1,4,4,-4,-2], output: -4)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo137_3().singleNumber(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "139. Word Break") {
//    let t1 = (s: "leetcode", wordDict: ["leet","code"], output: true)
//    let t2 = (s: "applepenapple", wordDict: ["apple","pen"], output: true)
//    let t3 = (s: "catsandog", wordDict: ["cats","dog","sand","and","cat"], output: false)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo139().wordBreak(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "141. Linked List Cycle") {
//    let a4 = ListNode(-4)
//    let a3 = ListNode(0, a4)
//    let a2 = ListNode(2, a3)
//    let a1 = ListNode(3, a2)
//    a4.next = a2
//    let t1 = (head: a1, pos: 1, output: true)
//    
//    let b2 = ListNode(2)
//    let b1 = ListNode(1, b2)
//    b2.next = b1
//    let t2 = (head: b1, pos: 0, output: true)
//    
//    let c1 = ListNode(1)
//    let t3 = (head: c1, pos: -1, output: false)
//    
//    [t1, t2, t3].forEach { t in
//        let result = Xoo141_2().hasCycle(t.0)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "142. Linked List Cycle II") {
//    let a4 = ListNode(-4)
//    let a3 = ListNode(0, a4)
//    let a2 = ListNode(2, a3)
//    let a1 = ListNode(3, a2)
//    a4.next = a2
//    let t1 = (head: a1, pos: 1, output: a2)
//    
//    let b2 = ListNode(2)
//    let b1 = ListNode(1, b2)
//    b2.next = b1
//    let t2 = (head: b1, pos: 0, output: b1)
//    
//    let c1 = ListNode(1)
//    let t3: (ListNode, Int, ListNode?) = (head: c1, pos: -1, output: nil)
//    
//    [t1].forEach { t in
//        let result = Xoo142_2().detectCycle(t.0)
//        print("\(result)")
//        if result !== t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "143. Reorder List") {
//    let a4 = ListNode(4)
//    let a3 = ListNode(3, a4)
//    let a2 = ListNode(2, a3)
//    let a1 = ListNode(1, a2)
//    let t1 = (head: a1, output: a1)
//
//    let b5 = ListNode(5)
//    let b4 = ListNode(4, b5)
//    let b3 = ListNode(3, b4)
//    let b2 = ListNode(2, b3)
//    let b1 = ListNode(1, b2)
//    let t2 = (head: b1, output: b1)
//    [t1, t2].forEach { t in
//        Xoo143_1().reorderList(t.0)
//        print("\(t.1)")
//    }
//}

Example.of(.medium, "147. Insertion Sort List") {
    let a4 = ListNode(3)
    let a3 = ListNode(1, a4)
    let a2 = ListNode(2, a3)
    let a1 = ListNode(4, a2)
    let aa4 = ListNode(4)
    let aa3 = ListNode(3, aa4)
    let aa2 = ListNode(2, aa3)
    let aa1 = ListNode(1, aa2)
    let t1 = (head: a1, output: aa1)
    
    let b5 = ListNode(0)
    let b4 = ListNode(4, b5)
    let b3 = ListNode(3, b4)
    let b2 = ListNode(5, b3)
    let b1 = ListNode(-1, b2)
    let bb5 = ListNode(5)
    let bb4 = ListNode(4, bb5)
    let bb3 = ListNode(3, bb4)
    let bb2 = ListNode(0, bb3)
    let bb1 = ListNode(-1, bb2)
    let t2 = (head: b1, output: bb1)
    
    [t1, t2].forEach { t in
        let result = Xoo147_1().insertionSortList(t.0)
        if let res = result { print("\(res)") }
    }
}

//Example.of(.medium, "150. Evaluate Reverse Polish Notation") {
//    let t1 = (tokens: ["2","1","+","3","*"], output: 9)
//    let t2 = (tokens: ["4","13","5","/","+"], output: 6)
//    let t3 = (tokens: ["10","6","9","3","+","-11","*","/","*","17","+","5","+"], output: 22)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo150_1().evalRPN(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "151. Reverse Words in a String") {
//    let t1 = (s: "the sky is blue", output: "blue is sky the")
//    let t2 = (s: "  hello world  ", output: "world hello")
//    let t3 = (s: "a good   example", output: "example good a")
//    let t4 = (s: "  Bob    Loves  Alice   ", output: "Alice Loves Bob")
//    let t5 = (s: "Alice does not even like bob", output: "bob like even not does Alice")
//    [t1, t2, t3, t4, t5].forEach { t in
//        let result = Xoo151().reverseWords(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "152. Maximum Product Subarray") {
//    let t1 = (nums: [2,3,-2,4], output: 6)
//    let t2 = (nums: [-2,0,-1], output: 0)
//    let t3 = (nums: [-2,3,-2,4], output: 48)
//    let t4 = (nums: [-2], output: -2)
//    let t5 = (nums: [-4,-3,-2], output: 12)
//    [t1, t2, t3, t4, t5].forEach { t in
//        let result = Xoo152().maxProduct(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "155. Min Stack") {
//    let minStack = MinStack_2()
//    minStack.push(-2)
//    minStack.push(0)
//    minStack.push(-3)
//    let t1 = minStack.getMin() // -3
//    minStack.pop()
//    let t2 = minStack.top() // 0
//    let t3 = minStack.getMin() // -2
//
//    if (t1, t2, t3) != (-3, 0, -2) { print("❌❌❌❌❌\n") }
//}

//Example.of(.medium, "162. Find Peak Element") {
//    let t1 = (nums: [1,2,3,1], output: 2) // 2
//    let t2 = (nums: [1,2,1,3,5,6,4], output: 5) // 1 or 5
//    let t3 = (nums: [1], output: 0) // 0
//    let t4 = (nums: [2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,2,3,100], output: 18) // 1 or 7 or 18
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo162_3().findPeakElement(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "186. Reverse Words in a String II") {
//    let t1 = (s: ["t","h","e"," ","s","k","y"," ","i","s"," ","b","l","u","e"], output: ["b","l","u","e"," ","i","s"," ","s","k","y"," ","t","h","e"])
//    let t2 = (s: ["a"], output: ["a"])
//    [t1, t2].forEach { t in
//        var x = t.0.map { Character($0) }
//        let y = t.1.map { Character($0) }
//        Xoo186_A().reverseWords(&x)
//        print("\(x)")
//        if x != y { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "189. Rotate Array") {
//    let t1 = (nums: [1,2,3,4,5,6,7], k: 3, output: [5,6,7,1,2,3,4])
//    let t2 = (nums: [-1,-100,3,99], k: 2, output: [3,99,-1,-100])
//    [t1, t2].forEach { t in
//        var nums = t.0
//        Xoo189_3().rotate(&nums, t.1)
//        print("\(nums)")
//        if nums != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "198. House Robber") {
//    let t1 = (nums: [1,2,3,1], output: 4)
//    let t2 = (nums: [2,7,9,3,1], output: 12)
//    [t1, t2].forEach { t in
//        let result = Xoo198_3().rob(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "200. Number of Islands") {
//    let t1: ([[Character]], Int) = (grid: [
//        ["1","1","1","1","0"],
//        ["1","1","0","1","0"],
//        ["1","1","0","0","0"],
//        ["0","0","0","0","0"]
//      ], output: 1)
//    let t2: ([[Character]], Int) = (grid: [
//        ["1","1","0","0","0"],
//        ["1","1","0","0","0"],
//        ["0","0","1","0","0"],
//        ["0","0","0","1","1"]
//      ], output: 3)
//    [t1, t2].forEach { t in
//        let result = Xoo200().numIslands(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "205. Isomorphic Strings") {
//    let t1 = (s: "egg", t: "add", output: true)
//    let t2 = (s: "foo", t: "bar", output: false)
//    let t3 = (s: "paper", t: "title", output: true)
//    let t4 = (s: "ab", t: "aa", output: false)
//    let t5 = (s: "aa", t: "ab", output: false)
//    let t6 = (s: "cbc", t: "aba", output: true)
//    [t1, t2, t3, t4, t5, t6].forEach { t in
//        let result = Xoo205_2().isIsomorphic(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "206. Reverse Linked List") {
//    let a5 = ListNode(5)
//    let a4 = ListNode(4, a5)
//    let a3 = ListNode(3, a4)
//    let a2 = ListNode(2, a3)
//    let a1 = ListNode(1, a2)
//
//    let aa5 = ListNode(1)
//    let aa4 = ListNode(2, aa5)
//    let aa3 = ListNode(3, aa4)
//    let aa2 = ListNode(4, aa3)
//    let aa1 = ListNode(5, aa2)
//
//    let b2 = ListNode(2)
//    let b1 = ListNode(1, b2)
//
//    let bb2 = ListNode(1)
//    let bb1 = ListNode(2, bb2)
//
//    let t1 = (head: a1, output: aa1)
//    let t2 = (head: b1, output: bb1)
//    let t3: (ListNode?, ListNode?) = (head: nil, output: nil)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo206().reverseList(t.0)
//        print("\(result)")
//        if "\(result)" != "\(t.1)" { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "207. Course Schedule") {
//    let t1 = (numCourses: 2, prerequisites: [[1,0]], output: true)
//    let t2 = (numCourses: 2, prerequisites: [[1,0],[0,1]], output: false)
//    let t3 = (numCourses: 8, prerequisites: [[1,0],[2,6],[1,7],[5,1],[6,4],[7,0],[0,5]], output: false)
//    let t4 = (numCourses: 8, prerequisites: [[1,0],[2,6],[1,7],[6,4],[7,0],[0,5]], output: true)
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo207().canFinish(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "208. Implement Trie (Prefix Tree)") {
//    let trie = Trie208()
//
//    let r0 = trie.startsWith("a")
//    print(r0)
//
//    trie.insert("apple")
//    let r1 = trie.search("apple") // true
//    let r2 = trie.search("app") // false
//    let r3 = trie.startsWith("app") // true
//    trie.insert("app")
//    let r4 = trie.search("app") // true
//    print(r1)
//    print(r2)
//    print(r3)
//    print(r4)
//    if (r0, r1, r2, r3, r4) != (false, true, false , true, true) { print("❌❌❌❌❌\n") }
//}

//Example.of(.medium, "210. Course Schedule II") {
//    let t1 = (numCourses: 2, prerequisites: [[1,0]], output: [0,1])
//    let t2 = (numCourses: 4, prerequisites: [[1,0],[2,0],[3,1],[3,2]], output: [0,2,1,3])
//    let t3 = (numCourses: 1, prerequisites: [[Int]](), output: [0])
//    [t1, t2, t3].forEach { t in
//        let result = Xoo210().findOrder(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "211. Design Add and Search Words Data Structure") {
//    let obj = WordDictionary_1()
//    obj.addWord("bad")
//    obj.addWord("dad")
//    obj.addWord("mad")
//    let a = obj.search("pad")
//    let b = obj.search("bad")
//    let c = obj.search(".ad")
//    let d = obj.search("b..")
//
//    [a, b, c, d].forEach { t in
//        print("\(t)")
//    }
//}

Example.of(.hard, "212. Word Wearch II") {
    let t1 = (board: [[Character("o"),"a","a","n"],["e","t","a","e"],["i","h","k","r"],["i","f","l","v"]], words: ["oath","pea","eat","rain"], output: ["eat","oath"])
    let t2 = (board: [[Character("a"),"b"],["c","d"]], words: ["abcb"], output: [String]())
    [t1, t2].forEach { t in
        let result = Xoo212_B().findWords(t.0, t.1)
        print("\(result)")
        if Set(result) != Set(t.2) { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.medium, "213. House Robber II") {
//    let t1 = (nums: [2,3,2], output: 3)
//    let t2 = (nums: [1,2,3,1], output: 4)
//    let t3 = (nums: [1,2,3], output: 3)
//    let t4 = (nums: [2], output: 2)
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo213_B().rob(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "217. Contains Duplicate") {
//    let t1 = (nums: [1,2,3,1], output: true)
//    let t2 = (nums: [1,2,3,4], output: false)
//    let t3 = (nums: [1,1,1,3,3,4,3,2,4,2], output: true)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo217().containsDuplicate(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.medium, "223. Rectangle Area") {
    let t1 = (ax1: -3, ay1: 0, ax2: 3, ay2: 4, bx1: 0, by1: -1, bx2: 9, by2: 2, output: 45)
    let t2 = (ax1: -2, ay1: -2, ax2: 2, ay2: 2, bx1: -2, by1: -2, bx2: 2, by2: 2, output: 16)
    [t1, t2].forEach { t in
        let result = Xoo223().computeArea(t.0, t.1, t.2, t.3, t.4, t.5, t.6, t.7)
        print("\(result)")
        if result != t.8 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.hard, "224. Basic Calculator") {
//    let t1 = (s: "1 + 1", output: 2)
//    let t2 = (s: " 2-1 + 2 ", output: 3)
//    let t3 = (s: "(1+(4+5+2)-3)+(6+8)", output: 23)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo224_1().calculate(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "225. Implement Stack using Queues") {
//    let myStack = MyStack()
//    myStack.push(1)
//    myStack.push(2)
//    let a = myStack.top()
//    let b = myStack.pop()
//    let c = myStack.empty()
//    print("a: \(a)")
//    print("b: \(b)")
//    print("c: \(c)")
//}

//Example.of(.easy, "226. Invert Binary Tree") {
//    let a7 = TreeNode(9)
//    let a6 = TreeNode(6)
//    let a5 = TreeNode(3)
//    let a4 = TreeNode(1)
//    let a3 = TreeNode(7, a6, a7)
//    let a2 = TreeNode(2, a4, a5)
//    let a1 = TreeNode(4, a2, a3)
//    
//    let b3 = TreeNode(3)
//    let b2 = TreeNode(1)
//    let b1 = TreeNode(2, b2, b3)
//
//    [a1, b1].forEach { t in
//        guard let result = Xoo226_1().invertTree(t) else { return }
//        print("\(result)")
//    }
//}

//Example.of(.medium, "227. Basic Calculator II") {
//    let t1 = (s: "3+2*2", output: 7)
//    let t2 = (s: " 3/2 ", output: 1)
//    let t3 = (s: " 3+5 / 2 ", output: 5)
//    let t4 = (s: " 3+6 / 2 + 222 ", output: 228)
//    let t5 = (s: " 3-5 * 2 +333 ", output: 326)
//    [t1, t2, t3, t4, t5].forEach { t in
//        let result = Xoo227_A().calculate(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.easy, "231. Power of Two") {
    let t1 = (n: 1, output: true)
    let t2 = (n: 16, output: true)
    let t3 = (n: 3, output: false)
    [t1, t2, t3].forEach { t in
        let result = Xoo231().isPowerOfTwo(t.0)
        print("\(result)")
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.easy, "232. Implement Queue using Stacks") {
//    let myQueue = MyQueue()
//    myQueue.push(1)
//    myQueue.push(2)
//    let a = myQueue.peek()
//    let b = myQueue.pop()
//    let c = myQueue.empty()
//    print("a: \(a)")
//    print("b: \(b)")
//    print("c: \(c)")
//}

//Example.of(.easy, "235. Lowest Common Ancestor of a Binary Search Tree") {
//    let a9 = TreeNode(5)
//    let a8 = TreeNode(3)
//    let a7 = TreeNode(9)
//    let a6 = TreeNode(7)
//    let a5 = TreeNode(4, a8, a9)
//    let a4 = TreeNode(0)
//    let a3 = TreeNode(8, a6, a7)
//    let a2 = TreeNode(2, a4, a5)
//    let a1 = TreeNode(6, a2, a3)
//    let t1 = (root: a1, p: a2, q: a3)
//
//    let b9 = TreeNode(5)
//    let b8 = TreeNode(3)
//    let b7 = TreeNode(9)
//    let b6 = TreeNode(7)
//    let b5 = TreeNode(4, b8, b9)
//    let b4 = TreeNode(0)
//    let b3 = TreeNode(8, b6, b7)
//    let b2 = TreeNode(2, b4, b5)
//    let b1 = TreeNode(6, b2, b3)
//    let t2 = (root: b1, p: b2, q: b5)
//
//    let c2 = TreeNode(1)
//    let c1 = TreeNode(2)
//    let t3 = (root: c1, p: c1, q: c2)
//
//    [t1, t2, t3].forEach { t in
//        let result = Xoo235_2().lowestCommonAncestor(t.0, t.1, t.2)
//        print(String(describing: result))
//    }
//}

//Example.of(.medium, "236. Lowest Common Ancestor of a Binary Tree") {
//    let a9 = TreeNode(4)
//    let a8 = TreeNode(7)
//    let a7 = TreeNode(8)
//    let a6 = TreeNode(0)
//    let a5 = TreeNode(2, a8, a9)
//    let a4 = TreeNode(6)
//    let a3 = TreeNode(1, a6, a7)
//    let a2 = TreeNode(5, a4, a5)
//    let a1 = TreeNode(3, a2, a3)
//
//    let b2 = TreeNode(2)
//    let b1 = TreeNode(1, a2)
//
//    let t1 = (root: a1, p: a2, q: a3, output: a1)
//    let t2 = (root: a1, p: a2, q: a9, output: a2)
//    let t3 = (root: b1, p: b1, q: b2, output: b1)
//    [t1, t2, t3].enumerated().forEach { i, t in
//        let result = Xoo236().lowestCommonAncestor(t.0, t.1, t.2)
//        print("\(result?.val ?? Int.min)")
//        if result !== t.3 { print("❌❌❌❌❌\(i)\n") }
//    }
//}

//Example.of(.medium, "238. Product of Array Except Self") {
//    let t1 = (nums: [1,2,3,4], output: [24,12,8,6])
//    let t2 = (nums: [-1,1,0,-3,3], output: [0,0,9,0,0])
//    [t1, t2].forEach { t in
//        let result = Xoo238_2().productExceptSelf(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of("256. Paint House") {
//    let c1 = [[17,2,17],[16,16,5],[14,3,19]] // 10
//    let c2 = [[7,6,2]] // 2
//    [c1, c2].forEach {
//        print("\(Xoo256_5().minCost($0))")
//    }
//}

//Example.of(.easy, "258. Add Digits") {
//    let t1 = (num: 38, output: 2)
//    let t2 = (num: 0, output: 0)
//    let t3 = (num: 2147483647, output: 1)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo258_B().addDigits(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "260. Single Number III") {
//    let t1 = (nums: [1,2,1,3,2,5], output: [3,5])
//    let t2 = (nums: [-1,0], output: [-1,0])
//    let t3 = (nums: [0,1], output: [1,0])
//    [t1, t2, t3].forEach { t in
//        let result = Xoo260_1().singleNumber(t.0)
//        print("\(result)")
//        if Set(result) != Set(t.1) { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.medium, "261. Graph Valid Tree") {
    let t1 = (n: 5, edges: [[0,1],[0,2],[0,3],[1,4]], output: true)
    let t2 = (n: 5, edges: [[0,1],[1,2],[2,3],[1,3],[1,4]], output: false)
    [t1, t2].forEach { t in
        let result = Xoo261().validTree(t.0, t.1)
        print("\(result)")
        if result != t.2 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.hard, "265. Paint House II") {
//    let t1 = (costs: [[1,5,3],[2,9,4]], output: 5)
//    let t2 = (costs: [[1,3],[2,4]], output: 5)
//    let t3 = (costs: [[1,3]], output: 1)
//    [t1, t2, t3].forEach { t in
//        let res = Xoo265_A().minCostII(t.0)
//        print(res)
//        if res != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "269. Alien Dictionary") {
//    let t1 = (words: ["wrt","wrf","er","ett","rftt"], output: "wertf")
//    let t2 = (words: ["z","x"], output: "zx")
//    let t3 = (words: ["z","x","z"], output: "")
//    let t4 = (words: ["abc","ab"], output: "")
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo269().alienOrder(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "276. Paint Fence") {
//    let t1 = (n: 3, k: 2, output: 6)
//    let t2 = (n: 1, k: 1, output: 1)
//    let t3 = (n: 7, k: 2, output: 42)
//    let t4 = (n: 2, k: 1, output: 1)
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo276().numWays(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "279. Perfect Squares") {
//    let t1 = (n: 12, output: 3)
//    let t2 = (n: 13, output: 2)
//    [t1, t2].forEach { t in
//        let result = Xoo279().numSquares(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.hard, "282. Expression Add Operators") {
    let t1 = (num: "123", target: 6, output: ["1*2*3","1+2+3"])
    let t2 = (num: "232", target: 8, output: ["2*3+2","2+3*2"])
    let t3 = (num: "105", target: 5, output: ["1*0+5","10-5"])
    let t4 = (num: "00", target: 0, output: ["0*0","0+0","0-0"])
    let t5 = (num: "3456237490", target: 9191, output: [String]())
    [t1, t2, t3, t4, t5].forEach { t in
        let result = Xoo282_1().addOperators(t.0, t.1)
        print("\(result)")
        if Set(result) != Set(t.2) { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.easy, "290. Word Pattern") {
//    let t1 = (pattern: "abba", s: "dog cat cat dog", output: true)
//    let t2 = (pattern: "abba", s: "dog cat cat fish", output: false)
//    let t3 = (pattern: "aaaa", s: "dog cat cat dog", output: false)
//    let t4 = (pattern: "ab", s: "dog dog", output: false)
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo290().wordPattern(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "295. Find Median from Data Stream") {
//    let finder = MedianFinder_3() // Test1
//    finder.addNum(1)
//    finder.addNum(2)
//    let r1 = finder.findMedian()
//    print(r1)
//    if r1 != 1.5 { print("❌❌❌❌❌\n") }
//    finder.addNum(3)
//    let r2 = finder.findMedian()
//    print(r2)
//    if r2 != 2.0 { print("❌❌❌❌❌\n") }
//
//    let finder2 = MedianFinder_3() // Test2
//    finder2.addNum(-1)
//    let a1 = finder2.findMedian()
//    print(a1)
//    if a1 != -1 { print("❌❌❌❌❌\n") }
//
//    finder2.addNum(-2)
//    let a2 = finder2.findMedian()
//    print(a2)
//    if a2 != -1.5 { print("❌❌❌❌❌\n") }
//
//    finder2.addNum(-3)
//    let a3 = finder2.findMedian()
//    print(a3)
//    if a3 != -2 { print("❌❌❌❌❌\n") }
//
//    finder2.addNum(-4)
//    let a4 = finder2.findMedian()
//    print(a4)
//    if a4 != -2.5 { print("❌❌❌❌❌\n") }
//
//    finder2.addNum(-5)
//    let a5 = finder2.findMedian()
//    print(a5)
//    if a5 != -3 { print("❌❌❌❌❌\n") }
//}

Example.of(.hard, "296. Best Meeting Point") {
    let t1 = (grid: [[1,0,0,0,1],[0,0,0,0,0],[0,0,1,0,0]], output: 6)
    let t2 = (grid: [[1,1]], output: 1)
    [t1, t2].forEach { t in
        let result = Xoo296().minTotalDistance(t.0)
        print("\(result)")
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.medium, "298. Binary Tree Longest Consecutive Sequence") {
//    let a5 = TreeNode(5)
//    let a4 = TreeNode(4, nil, a5)
//    let a2 = TreeNode(2)
//    let a3 = TreeNode(3, a2, a4)
//    let a1 = TreeNode(1, nil, a3)
//    let t1 = (root: a1, output: 3)
//
//    let b4 = TreeNode(1)
//    let b3 = TreeNode(2, b4, nil)
//    let b2 = TreeNode(3, b3, nil)
//    let b1 = TreeNode(2, nil, b2)
//    let t2 = (root: b1, output: 2)
//
//    [t1, t2].forEach { t in
//        let result = Xoo298_1().longestConsecutive(t.0)
//        print(result)
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "300. Longest Increasing Subsequence") {
//    let t1 = (nums: [10,9,2,5,3,7,101,18], output: 4)
//    let t2 = (nums: [0,1,0,3,2,3], output: 4)
//    let t3 = (nums: [7,7,7,7,7,7,7], output: 1)
//    let t4 = (nums: [4,10,4,3,8,9], output: 3)
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo300_3().lengthOfLIS(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "303. Range Sum Query - Immutable") {
//    let nums = [-2, 0, 3, -5, 2, -1]
//    let numArray = NumArray303(nums)
//
//    let sum1 = numArray.sumRange(0, 2)
//    print("\(sum1)")
//    if sum1 != 1 { print("❌❌❌❌❌\n") }
//
//    let sum2 = numArray.sumRange(2, 5)
//    print("\(sum2)")
//    if sum2 != -1 { print("❌❌❌❌❌\n") }
//
//    let sum3 = numArray.sumRange(0, 5)
//    print("\(sum3)")
//    if sum3 != -3 { print("❌❌❌❌❌\n") }
//
//    let sum4 = numArray.sumRange(0, 0)
//    print("\(sum4)")
//    if sum4 != -2 { print("❌❌❌❌❌\n") }
//}

//Example.of(.medium, "307. Range Sum Query - Mutable") {
//    let nums = [1, 3, 5]
//    let numArray = NumArray_5(nums)
//
//    let sum1 = numArray.sumRange(0, 2)
//    print("\(sum1)")
//    assert(sum1 == 9, "❌")
//
//    numArray.update(1, 2)
//    print("\(nums)")
//
//    let sum2 = numArray.sumRange(0, 2)
//    print("\(sum2)")
//    assert(sum2 == 8, "❌")
//}

//Example.of(.medium, "309. Best Time to Buy and Sell with Cooldown") {
//    let t1 = (prices: [1,2,3,0,2], output: 3)
//    let t2 = (prices: [1], output: 0)
//    [t1, t2].forEach { t in
//        let result = Xoo309().maxProfit(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "312. Burst Balloons") {
//    let t1 = (nums: [3,1,5,8], output: 167)
//    let t2 = (nums: [1,5], output: 10)
//    [t1, t2].forEach { t in
//        let result = Xoo312_2().maxCoins(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "315. Count of Smaller Numbers After Self") {
//    let t1 = (nums: [5,2,6,1], output: [2,1,1,0])
//    let t2 = (nums: [-1], output: [0])
//    let t3 = (nums: [-1,-1], output: [0,0])
//    let t4 = (nums: [26,78,27,100,33,67,90,23,66,5,38,7,35,23,52,22,83,51,98,69,81,32,78,28,94,13,2,97,3,76,99,51,9,21,84,66,65,36,100,41], output: [10,27,10,35,12,22,28,8,19,2,12,2,9,6,12,5,17,9,19,12,14,6,12,5,12,3,0,10,0,7,8,4,0,0,4,3,2,0,1,0])
//    let t5 = (nums: [-10000,-9999,9999,10000], output: [0,0,0,0])
//    let t6 = (nums: [-10000,-10000,-10000,-10000], output: [0,0,0,0])
//    [t1, t2, t3, t4, t5, t6].enumerated().forEach { i, t in
//        let result = Xoo315_2().countSmaller(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\(i)") }
//    }
//}

Example.of(.hard, "317. Shortest Distance from All Buildings") {
    let t1 = (grid: [[1,0,2,0,1],[0,0,0,0,0],[0,0,1,0,0]], output: 7)
    let t2 = (grid: [[1,0]], output: 1)
    let t3 = (grid: [[1]], output: -1)
    let t4 = (grid: [[1,1,1,1,1,0],[0,0,0,0,0,1],[0,1,1,0,0,1],[1,0,0,1,0,1],[1,0,1,0,0,1],[1,0,0,0,0,1],[0,1,1,1,1,0]], output: 88)
    [t1, t2, t3, t4].forEach { t in
        let result = Xoo317_2().shortestDistance(t.0)
        print("\(result)")
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.medium, "328. Odd Even Linked List") {
//    let a5 = ListNode(5)
//    let a4 = ListNode(4, a5)
//    let a3 = ListNode(3, a4)
//    let a2 = ListNode(2, a3)
//    let a1 = ListNode(1, a2)
//    let t1 = (head: a1, output: "Optional(1 -> 3 -> 5 -> 2 -> 4)")
//
//    let b7 = ListNode(7)
//    let b6 = ListNode(4, b7)
//    let b5 = ListNode(6, b6)
//    let b4 = ListNode(5, b5)
//    let b3 = ListNode(3, b4)
//    let b2 = ListNode(1, b3)
//    let b1 = ListNode(2, b2)
//    let t2 = (head: b1, output: "Optional(2 -> 3 -> 6 -> 7 -> 1 -> 5 -> 4)")
//
//    [t1, t2].forEach { t in
//        let node = Xoo328().oddEvenList(t.0)
//        let result = String(describing: node)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.hard, "330. Patching Array") {
    let t1 = (nums: [1,3], n: 6, output: 1)
    let t2 = (nums: [1,5,10], n: 20, output: 2)
    let t3 = (nums: [1,2,2], n: 5, output: 0)
    [t1, t2, t3].forEach { t in
        let result = Xoo330().minPatches(t.0, t.1)
        print("\(result)")
        if result != t.2 { print("❌❌❌❌❌\n") }
    }
}

Example.of(.medium, "331. Verify Preorder Serialization of a Binary Tree") {
    let t1 = (preorder: "9,3,4,#,#,1,#,#,2,#,6,#,#", output: true)
    let t2 = (preorder: "1,#", output: false)
    let t3 = (preorder: "9,#,#,1", output: false)
    [t1, t2, t3].forEach { t in
        let result = Xoo331().isValidSerialization(t.0)
        print("\(result)")
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.hard, "336. Palindrome Pairs") {
//    let t1 = (words: ["abcd","dcba","lls","s","sssll"], output: [[0,1],[1,0],[3,2],[2,4]])
//    let t2 = (words: ["bat","tab","cat"], output: [[0,1],[1,0]])
//    let t3 = (words: ["a",""], output: [[0,1],[1,0]])
//    let t4 = (words: ["ab", "ba"], output: [[0,1],[1,0]])
//    [t1, t2, t3, t4].enumerated().forEach { i, t in
//        let result = Xoo336().palindromePairs(t.0)
//        print("\(result)")
//        if Set(result) != Set(t.1) { print("❌\(i)") }
//    }
//}

//Example.of(.medium, "337. House Robber III") {
//    let a5 = TreeNode(1)
//    let a4 = TreeNode(3)
//    let a3 = TreeNode(3, nil , a5)
//    let a2 = TreeNode(2, nil, a4)
//    let a1 = TreeNode(3, a2, a3)
//    let t1 = (root: a1, output: 7)
//    
//    let b6 = TreeNode(1)
//    let b5 = TreeNode(3)
//    let b4 = TreeNode(1)
//    let b3 = TreeNode(5, nil, b6)
//    let b2 = TreeNode(4, b4 , b5)
//    let b1 = TreeNode(3, b2, b3)
//    let t2 = (root: b1, output: 9)
//    [t1, t2].forEach { t in
//        let result = Xoo337().rob(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "349. Intersection of Two Arrays") {
//    let t1 = (nums1: [1,2,2,1], nums2: [2,2], output: [2])
//    let t2 = (nums1: [4,9,5], nums2: [9,4,9,8,4], output: [9,4])
//    [t1, t2].forEach { t in
//        let result = Xoo349().intersection(t.0, t.1)
//        print("\(result)")
//        if Set(result) != Set(t.2) { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "350. Intersection of Two Arrays II") {
//    let t1 = (nums1: [1,2,2,1], nums2: [2,2], output: [2,2])
//    let t2 = (nums1: [4,9,5], nums2: [9,4,9,8,4], output: [9,4])
//    [t1, t2].forEach { t in
//        let result = Xoo350_2().intersect(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "363. Max Sum of Rectangle No Larger Than K") {
//    let t1 = (matrix: [[1,0,1],[0,-2,3]], k: 2, output: 2)
//    let t2 = (matrix: [[2,2,-1]], k: 3, output: 3)
//    let t3 = (matrix: [
//        [23,-16,14,-10,20,-23,-3,8,-6,-14,-10,3,8],
//        [23,-16,14,-10,20,-23,-3,8,-6,-14,-10,3,8],
//        [23,-16,14,-10,20,-23,-3,8,-6,-14,-10,3,8],
//        [23,-16,14,-10,20,-23,-3,8,-6,-14,-10,3,8],
//        [23,-16,14,-10,20,-23,-3,8,-6,-14,-10,3,8],
//        [23,-16,14,-10,20,-23,-3,8,-6,-14,-10,3,8],
//        [23,-16,14,-10,20,-23,-3,8,-6,-14,-10,3,8]
//    ], k: -3, output: -3)
//    let t4 = (matrix: [[2,2,-1]], k: 2, output: 2)
//    let t5 = (matrix: [[2,2,-1]], k: 0, output: -1)
//    [t1, t2, t3, t4, t5].forEach { t in
//        let result = Xoo363().maxSumSubmatrix(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "366. Find Leaves of Binary Tree") {
//    let a5 = TreeNode(5)
//    let a4 = TreeNode(4)
//    let a3 = TreeNode(3)
//    let a2 = TreeNode(2, a4, a5)
//    let a1 = TreeNode(1, a2, a3)
//
//    let b1 = TreeNode(1)
//
//    let t1 = (root: a1, output: [[4,5,3],[2],[1]])
//    let t2 = (root: b1, output: [[1]])
//    [t1, t2].forEach { t in
//        let result = Xoo366_1().findLeaves(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "370. Range Addition") {
//    let t1 = (length: 5, updates: [[1,3,2],[2,4,3],[0,2,-2]], output: [-2,0,3,5,3])
//    let t2 = (length: 10, updates: [[2,4,6],[5,6,8],[1,9,-4]], output: [0,-4,2,2,2,4,4,-4,-4,-4])
//    let t3 = (length: 5, updates: [[1,3,2],[2,4,3],[0,2,-2]], output: [-2,0,3,5,3])
//    [t1, t2, t3].forEach { t in
//        let result = Xoo370_2().getModifiedArray(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "374. Guess Number Higher or Lower") {
//    let t1 = (n: 10, pick: 6, output: 6)
//    let t2 = (n: 1, pick: 1, output: 1)
//    let t3 = (n: 2, pick: 1, output: 1)
//    let t4 = (n: 2, pick: 2, output: 2)
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo374_3(t.1).guessNumber(t.0)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "378. Kth Smallest Element in a Sorted Matrix") {
//    let t1 = (matrix: [[1,5,9],[10,11,13],[12,13,15]], k: 8, output: 13)
//    let t2 = (matrix: [[-5]], k: 1, output: -5)
//    [t1, t2].forEach { t in
//        let result = Xoo378().kthSmallest(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "382. Linked List Random Node") {
//    let a3 = ListNode(3)
//    let a2 = ListNode(2, a3)
//    let a1 = ListNode(1, a2)
//
//    let obj = Xoo382(a1)
//    print(obj.getRandom())
//    print(obj.getRandom())
//    print(obj.getRandom())
//}

//Example.of(.medium, "384. Shuffle an Array") {
//    let a1 = [1,2,3]
//    [a1].forEach { a in
//        let sol = Xoo384_2(a)
//        print(sol.shuffle())
//        print(sol.reset())
//        print(sol.shuffle())
//    }
//}

//Example.of(.easy, "389. Find the Difference") {
//    let t1 = (s: "abcd", t: "abcde", output: Character("e"))
//    let t2 = (s: "", t: "y", output: Character("y"))
//    let t3 = (s: "aa", t: "aaa", output: Character("a"))
//    [t1, t2, t3].forEach { t in
//        let result = Xoo389_3().findTheDifference(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "394. Decode String") {
//    let t1 = (s: "3[a]2[bc]", output: "aaabcbc")
//    let t2 = (s: "3[a2[c]]", output: "accaccacc")
//    let t3 = (s: "2[abc]3[cd]ef", output: "abcabccdcdcdef")
//    let t4 = (s: "abc3[cd]xyz", output: "abccdcdcdxyz")
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo394_1().decodeString(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.easy, "404. Sum of Left Leaves") {
    let a5 = TreeNode(7)
    let a4 = TreeNode(15)
    let a3 = TreeNode(20, a4, a5)
    let a2 = TreeNode(9)
    let a1 = TreeNode(3, a2, a3)
    let t1 = (root: a1, output: 24)
    
    let b1 = TreeNode(1)
    let t2 = (root: b1, output: 0)
    
    [t1, t2].forEach { t in
        let result = Xoo404().sumOfLeftLeaves(t.0)
        print("\(result)")
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

Example.of(.medium, "413. Arithmetic Slices") {
    let t1 = (nums: [1,2,3,4], output: 3)
    let t2 = (nums: [1], output: 0)
    let t3 = (nums: [1,3,4,5], output: 1)
    let t4 = (nums: [1,2,3,4,5], output: 6)
    [t1, t2, t3, t4].forEach { t in
        let result = Xoo413_3().numberOfArithmeticSlices(t.0)
        print("\(result)")
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

Example.of(.easy, "415. Add Strings") {
    let t1 = (num1: "11", num2: "123", output: "134")
    let t2 = (num1: "456", num2: "77", output: "533")
    let t3 = (num1: "0", num2: "0", output: "0")
    let t4 = (num1: "456", num2: "777", output: "1233")
    [t1, t2, t3, t4].forEach { t in
        let result = Xoo415().addStrings(t.0, t.1)
        print("\(result)")
        if result != t.2 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.medium, "416. Partition Equal Subset Sum") {
//    let t1 = (nums: [1,5,11,5], output: true)
//    let t2 = (nums: [1,2,3,5], output: false)
//    let t3 = (nums: [1,2,3,4,5,6,7], output: true)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo416().canPartition(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "421. Maximum XOR of Two Numbers in an Array") {
//    let t1 = (nums: [3,10,5,25,2,8], output: 28)
//    let t2 = (nums: [14,70,53,83,49,91,36,80,92,51,66,70], output: 127)
//    [t1, t2].forEach { t in
//        let result = Xoo421().findMaximumXOR(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "425. Word Squares") {
//    let t1 = (words: ["area","lead","wall","lady","ball"], output: [["ball","area","lead","lady"],["wall","area","lead","lady"]])
//    let t2 = (words: ["abat","baba","atan","atal"], output: [["baba","abat","baba","atal"],["baba","abat","baba","atan"]])
//    [t1, t2].forEach { t in
//        let result = Xoo425_2().wordSquares(t.0)
//        print("\(result)")
//        if Set(result) != Set(t.1) { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.medium, "429. N-ary Tree Level Order Traversal") {
}

//Example.of(.medium, "438. Find All Anagrams in a String") {
//    let t1 = (s: "cbaebabacd", p: "abc", output: [0,6])
//    let t2 = (s: "abab", p: "ab", output: [0,1,2])
//    let t3 = (s: "abacbabc", p: "abc", output: [1,2,3,5])
//    [t1, t2, t3].forEach { t in
//        let result = Xoo438().findAnagrams(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "441. Arranging Coins") {
//    let t1 = (n: 5, output: 2)
//    let t2 = (n: 8, output: 3)
//    let t3 = (n: 2147483647, output: 65535)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo441_2().arrangeCoins(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.hard, "446. Arithmetic Slices II - Subsequence") {
    let t1 = (nums: [2,4,6,8,10], output: 7)
    let t2 = (nums: [7,7,7,7,7], output: 16)
    [t1, t2].forEach { t in
        let result = Xoo446().numberOfArithmeticSlices(t.0)
        print("\(result)")
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.medium, "452. Minimum Number of Arrows to Burst Balloons") {
//    let t1 = (points: [[10,16],[2,8],[1,6],[7,12]], output: 2)
//    let t2 = (points: [[1,2],[3,4],[5,6],[7,8]], output: 4)
//    let t3 = (points: [[1,2],[2,3],[3,4],[4,5]], output: 2)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo452_1().findMinArrowShots(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "454. 4Sum II") {
//    let t1 = (nums1: [1,2], nums2: [-2,-1], nums3: [-1,2], nums4: [0,2], output: 2)
//    let t2 = (nums1: [0], nums2: [0], nums3: [0], nums4: [0], output: 1)
//    let t3 = (nums1: [-1,-1], nums2: [-1,1], nums3: [-1,1], nums4: [1,-1], output: 6)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo454_1().fourSumCount(t.0, t.1, t.2, t.3)
//        print("\(result)")
//        if result != t.4 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "463. Island Perimeter") {
//    let t1 = (grid: [[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]], output: 16)
//    let t2 = (grid: [[1]], output: 4)
//    let t3 = (grid: [[1,0]], output: 4)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo463().islandPerimeter(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "473. Matchsticks to Square") {
//    let t1 = (matchsticks: [1,1,2,2,2], output: true)
//    let t2 = (matchsticks: [3,3,3,3,4], output: false)
//    [t1, t2].enumerated().forEach { i, t in
//        let result = Xoo473_2().makesquare(t.0)
//        print("\(result)")
//        assert(result == t.1, "❌\(i)")
//    }
//}

//Example.of(.easy, "476. Number Complement") {
//    let t1 = (num: 5, output: 2)
//    let t2 = (num: 1, output: 0)
//    [t1, t2].forEach { t in
//        let result = Xoo476().findComplement(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.medium, "486. Predict the Winner") {
    let t1 = (nums: [1,5,2], output: false)
    let t2 = (nums: [1,5,233,7], output: true)
    [t1, t2].forEach { t in
        let result = Xoo486().predictTheWinner(t.0)
        print("\(result)")
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.medium, "494. Target Sum") {
//    let t1 = (nums: [1,1,1,1,1], target: 3, output: 5)
//    let t2 = (nums: [1], target: 1, output: 1)
//    [t1, t2].forEach { t in
//        let result = Xoo494_2().findTargetSumWays(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.easy, "496. Next Greater Element I") {
    let t1 = (nums1: [4,1,2], nums2: [1,3,4,2], output: [-1,3,-1])
    let t2 = (nums1: [2,4], nums2: [1,2,3,4], output: [3,-1])
    [t1, t2].forEach { t in
        let result = Xoo496().nextGreaterElement(t.0, t.1)
        print("\(result)")
        if result != t.2 { print("❌❌❌❌❌\n") }
    }
}

//Example.of("505. The Maze II") {
//    let t1 = (maze: [[0,0,1,0,0],
//                     [0,0,0,0,0],
//                     [0,0,0,1,0],
//                     [1,1,0,1,1],
//                     [0,0,0,0,0]], start: [0,4], destination: [4,4]) // 12
//
//    let t2 = (maze: [[0,0,1,0,0],
//                     [0,0,0,0,0],
//                     [0,0,0,1,0],
//                     [1,1,0,1,1],
//                     [0,0,0,0,0]], start: [0,4], destination: [3,2]) // -1
//
//    let t3 = (maze: [[0,0,0,0,0],
//                     [1,1,0,0,1],
//                     [0,0,0,0,0],
//                     [0,1,0,0,1],
//                     [0,1,0,0,0]], start: [4,3], destination: [0,1]) // -1
//
//    [t1, t2, t3].forEach {
//        print("\(Xoo505_4().shortestDistance($0.0, $0.1, $0.2))")
//    }
//}

//Example.of(.easy, "509. Fibonacci Number") {
//    let t1 = (n: 2, output: 1)
//    let t2 = (n: 3, output: 2)
//    let t3 = (n: 4, output: 3)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo509_6().fib(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "520. Detect Capital") {
//    let t1 = (word: "USA", output: true)
//    let t2 = (word: "FlaG", output: false)
//    let t3 = (word: "Leetcode", output: true)
//    let t4 = (word: "g", output: true)
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo520_2().detectCapitalUse(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "521. Longest Uncommon Subsequence I") {
//    let t1 = (a: "aba", b: "cdc", output: 3)
//    let t2 = (a: "aaa", b: "bbb", output: 3)
//    let t3 = (a: "aaa", b: "aaa", output: -1)
//    let t4 = (a: "abc", b: "abcd", output: 4)
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo521_2().findLUSlength(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "522. Longest Uncommon Subsequence II") {
//    let t1 = (strs: ["aba","cdc","eae"], output: 3)
//    let t2 = (strs: ["aaa","aaa","aa"], output: -1)
//    let t3 = (strs: ["aabbcc", "aabbcc","cb","abc"], output: 2)
//    let t4 = (strs: ["a","b","c","d","e","f","a","b","c","d","e","f"], output: -1)
//    let t5 = (strs: ["aabbcc", "aabbcc","c","e","aabbcd"], output: 6)
//    [t1, t2, t3, t4, t5].forEach { t in
//        let result = Xoo522_3().findLUSlength(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "525. Contiguous Array") {
//    let t1 = (nums: [0,1], output: 2)
//    let t2 = (nums: [0,1,0], output: 2)
//    [t1, t2].forEach { t in
//        let result = Xoo525_2().findMaxLength(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "532. K-diff Pairs in an Array") {
//    let t1 = (nums: [3,1,4,1,5], k: 2, output: 2)
//    let t2 = (nums: [1,2,3,4,5], k: 1, output: 4)
//    let t3 = (nums: [1,3,1,5,4], k: 0, output: 1)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo532_3().findPairs(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "537. Complex Number Multiplication") {
//    let t1 = (num1: "1+1i", num2: "1+1i", output: "0+2i")
//    let t2 = (num1: "1+-1i", num2: "1+-1i", output: "0+-2i")
//    [t1, t2].forEach { t in
//        let result = Xoo537().complexNumberMultiply(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.medium, "540. Single Element in a Sorted Array") {
    let t1 = (nums: [1,1,2,3,3,4,4,8,8], output: 2)
    let t2 = (nums: [3,3,7,7,10,11,11], output: 10)
    let t3 = (nums: [1,1,2], output: 2)
    [t1, t2, t3].forEach { t in
        let result = Xoo540_1().singleNonDuplicate(t.0)
        print("\(result)")
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.medium, "542. 01 Matrix") {
//    let t1 = (mat: [[0,0,0],[0,1,0],[0,0,0]], output: [[0,0,0],[0,1,0],[0,0,0]])
//    let t2 = (mat: [[0,0,0],[0,1,0],[1,1,1]], output: [[0,0,0],[0,1,0],[1,2,1]])
//    let t3 = (mat: [[0,1,0,1,1],[1,1,0,0,1],[0,0,0,1,0],[1,0,1,1,1],[1,0,0,0,1]], output: [[0,1,0,1,2],[1,1,0,0,1],[0,0,0,1,0],[1,0,1,1,1],[1,0,0,0,1]])
//    let t4 = (mat: [[1,1,0,0,1,0,0,1,1,0],[1,0,0,1,0,1,1,1,1,1],[1,1,1,0,0,1,1,1,1,0],[0,1,1,1,0,1,1,1,1,1],[0,0,1,1,1,1,1,1,1,0],[1,1,1,1,1,1,0,1,1,1],[0,1,1,1,1,1,1,0,0,1],[1,1,1,1,1,0,0,1,1,1],[0,1,0,1,1,0,1,1,1,1],[1,1,1,0,1,0,1,1,1,1]], output: [[2,1,0,0,1,0,0,1,1,0],[1,0,0,1,0,1,1,2,2,1],[1,1,1,0,0,1,2,2,1,0],[0,1,2,1,0,1,2,3,2,1],[0,0,1,2,1,2,1,2,1,0],[1,1,2,3,2,1,0,1,1,1],[0,1,2,3,2,1,1,0,0,1],[1,2,1,2,1,0,0,1,1,2],[0,1,0,1,1,0,1,2,2,3],[1,2,1,0,1,0,1,2,3,4]])
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo542_2().updateMatrix(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "543. Diameter of Binary Tree") {
//    let a5 = TreeNode(5)
//    let a4 = TreeNode(4)
//    let a3 = TreeNode(3)
//    let a2 = TreeNode(2, a4, a5)
//    let a1 = TreeNode(1, a2, a3)
//    let t1 = (root: a1, output: 3)
//    
//    let b2 = TreeNode(2)
//    let b1 = TreeNode(1, b2, nil)
//    let t2 = (root: b1, output: 1)
//    
//    [t1, t2].forEach { t in
//        let result = Xoo543_1().diameterOfBinaryTree(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "546. Remove Boxes") {
//    let t1 = (boxes: [1,3,2,2,2,3,4,3,1], output: 23)
//    let t2 = (boxes: [1,1,1], output: 9)
//    let t3 = (boxes: [1], output: 1)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo546().removeBoxes(t.0)
//        print(result)
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "547. Number of Provinces") {
//    let t1 = (isConnected: [[1,1,0],[1,1,0],[0,0,1]], output: 2)
//    let t2 = (isConnected: [[1,0,0],[0,1,0],[0,0,1]], output: 3)
//    [t1, t2].forEach { t in
//        let result = Xoo547().findCircleNum(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.medium, "549. Binary Tree Longest Consecutive Sequence II") {
    let a3 = TreeNode(3)
    let a2 = TreeNode(2)
    let a1 = TreeNode(1, a2, a3)
    let t1 = (root: a1, output: 2)
    
    let b3 = TreeNode(3)
    let b2 = TreeNode(1)
    let b1 = TreeNode(2, b2, b3)
    let t2 = (root: b1, output: 3)
    
    [t1, t2].forEach { t in
        let result = Xoo549().longestConsecutive(t.0)
        print(result)
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.medium, "560. Subarray Sum Equals K") {
//    let t1 = (nums: [1,1,1], k: 2, output: 2)
//    let t2 = (nums: [1,2,3], k: 3, output: 2)
//    [t1, t2].forEach { t in
//        let result = Xoo560_4().subarraySum(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "563. Binary Tree Tilt") {
//    let a3 = TreeNode(3)
//    let a2 = TreeNode(2)
//    let a1 = TreeNode(1, a2, a3)
//    let t1 = (root: a1, output: 1)
//    
//    let b6 = TreeNode(7)
//    let b5 = TreeNode(5)
//    let b4 = TreeNode(3)
//    let b3 = TreeNode(9, nil, b6)
//    let b2 = TreeNode(2, b4, b5)
//    let b1 = TreeNode(4, b2, b3)
//    let t2 = (root: b1, output: 15)
//    
//    let c9 = TreeNode(3)
//    let c8 = TreeNode(3)
//    let c7 = TreeNode(2)
//    let c6 = TreeNode(2)
//    let c5 = TreeNode(1)
//    let c4 = TreeNode(1, c8, c9)
//    let c3 = TreeNode(14, c6, c7)
//    let c2 = TreeNode(7, c4, c5)
//    let c1 = TreeNode(21, c2, c3)
//    let t3 = (root: c1, output: 9)
//    
//    [t1, t2, t3].forEach { t in
//        let result = Xoo563_1().findTilt(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "565. Array Nesting") {
//    let t1 = (nums: [5,4,0,3,1,6,2], output: 4)
//    let t2 = (nums: [0,1,2], output: 1)
//    [t1, t2].forEach { t in
//        let result = Xoo565().arrayNesting(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "566. Reshape the Matrix") {
//    let t1 = (mat: [[1,2],[3,4]], r: 1, c: 4, output: [[1,2,3,4]])
//    let t2 = (mat: [[1,2],[3,4]], r: 2, c: 4, output: [[1,2],[3,4]])
//    [t1, t2].forEach { t in
//        let result = Xoo566_3().matrixReshape(t.0, t.1, t.2)
//        print("\(result)")
//        if result != t.3 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "567. Permutatiion in String") {
//    let t1 = (s1: "ab", s2: "eidbaooo", output: true)
//    let t2 = (s1: "ab", s2: "eidboaoo", output: false)
//    let t3 = (s1: "eidbaooo", s2: "ab", output: false)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo567().checkInclusion(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "576. Out of Boundary Paths") {
//    let t1 = (m: 2, n: 2, maxMove: 2, startRow: 0, startColumn: 0, output: 6)
//    let t2 = (m: 1, n: 3, maxMove: 3, startRow: 0, startColumn: 1, output: 12)
//    let t3 = (m: 50, n: 50, maxMove: 50, startRow: 0, startColumn: 1, output: 263523405)
//    let t4 = (m: 10, n: 10, maxMove: 0, startRow: 5, startColumn: 5, output: 0)
//    [t1, t2, t3, t4].enumerated().forEach { i, t in
//        let result = Xoo576_2D().findPaths(t.0, t.1, t.2, t.3, t.4)
//        print("\(result)")
//        if result != t.5 { print("❌❌❌❌❌\(i)") }
//    }
//}

//Example.of(.hard, "587. Erect the Fence") {
//    let t1 = (points: [[1,1],[2,2],[2,0],[2,4],[4,2],[3,3]], output: [[1,1],[2,0],[3,3],[2,4],[4,2]])
//    let t2 = (points: [[1,2],[2,2],[4,2]], output: [[4,2],[2,2],[1,2]])
//    let t3 = (points: [[3,7],[6,8],[7,8],[11,10],[4,3],[8,5],[7,13],[4,13]], output: [[4,13],[4,3],[3,7],[8,5],[11,10],[7,13]])
//    let t4 = (points: [[3,0],[4,0],[5,0],[6,1],[7,2],[7,3],[7,4],[6,5],[5,5],[4,5],[3,5],[2,5],[1,4],[1,3],[1,2],[2,1],[4,2],[0,3]], output: [[7,4],[5,0],[7,3],[2,1],[5,5],[4,5],[3,5],[7,2],[1,2],[1,4],[4,0],[2,5],[6,1],[6,5],[0,3],[3,0]])
//    let t5 = (points: [[0,0],[0,1],[0,2],[1,2],[2,2],[3,2],[3,1],[3,0],[2,0]], output: [[2,0],[2,2],[0,1],[1,2],[3,1],[0,0],[3,0],[3,2],[0,2]])
//    let t6 = (points: [[0,2],[0,4],[0,5],[0,9],[2,1],[2,2],[2,3],[2,5],[3,1],[3,2],[3,6],[3,9],[4,2],[4,5],[5,8],[5,9],[6,3],[7,9],[8,1],[8,2],[8,5],[8,7],[9,0],[9,1],[9,6]], output: [[2,1],[7,9],[0,9],[0,2],[9,0],[3,9],[0,4],[0,5],[5,9],[9,6],[9,1]])
//    [t1, t2, t3, t4, t5, t6].forEach { t in
//        let result = Xoo587_1().outerTrees(t.0)
//        print("\(result)")
//        if Set(result) != Set(t.1) { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "600. Non-negative Integers without Consecutive Ones") {
//    let t1 = (n: 5, output: 5)
//    let t2 = (n: 1, output: 2)
//    let t3 = (n: 2, output: 3)
//    let t4 = (n: 100000000, output: 514229)
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo600_B().findIntegers(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.easy, "605. Can Place Flowers") {
    let t1 = (flowerbed: [1,0,0,0,1], n: 1, output: true)
    let t2 = (flowerbed: [1,0,0,0,1], n: 2, output: false)
    let t3 = (flowerbed: [0,0,0,0,0], n: 3, output: true)
    let t4 = (flowerbed: [0,0,0,0,0,1,0,0], n: 0, output: true)
    [t1, t2, t3, t4].forEach { t in
        let result = Xoo605_2().canPlaceFlowers(t.0, t.1)
        print("\(result)")
        if result != t.2 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.medium, "611. Valid Triangle Number") {
//    let t1 = (nums: [2,2,3,4], output: 3)
//    let t2 = (nums: [4,2,3,4], output: 4)
//    let t3 = (nums: [0,2,3,4], output: 1)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo611().triangleNumber(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "629. K Inverse Pairs Array") {
//    let t1 = (n: 3, k: 0, output: 1)
//    let t2 = (n: 3, k: 1, output: 2)
//    let t3 = (n: 1000, k: 1000, output: 663677020)
//    [t1, t2, t3].enumerated().forEach { i, t in
//        let result = Xoo629_7().kInversePairs(t.0, t.1)
//        print("\(result)")
//        assert(result == t.2, "❌\(i)")
//    }
//}

//Example.of(.medium, "633. Sum of Square Numbers") {
//    let t1 = (c: 5, output: true)
//    let t2 = (c: 3, output: false)
//    let t3 = (c: 4, output: true)
//    let t4 = (c: 2, output: true)
//    let t5 = (c: 1, output: true)
//    let t6 = (c: 2147483647, output: false) // (1 << 31) - 1
//    [t1, t2, t3, t4, t5, t6].forEach { t in
//        let result = Xoo633_4().judgeSquareSum(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "639. Decode Ways II") {
//    let t1 = (s: "*", output: 9)
//    let t2 = (s: "1*", output: 18)
//    let t3 = (s: "2*", output: 15)
//    let t4 = (s: "06", output: 0)
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo639().numDecodings(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "642. Design Search Autocomplete System") {
//    let sentences = ["i love you", "island", "iroman", "i love leetcode"]
//    let times = [5, 3, 2, 2]
//    let autoComplete = AutocompleteSystem(sentences, times)
//
//    let a = autoComplete.input("i")
//    let b = autoComplete.input(" ")
//    let c = autoComplete.input("a")
//    let d = autoComplete.input("#")
//    
//    [a, b, c, d].forEach { t in
//        print("\(t)")
//    }
//}

//Example.of(.medium, "648. Replace Words") {
//    let t1 = (dictionary: ["cat","bat","rat"], sentence: "the cattle was rattled by the battery", output: "the cat was rat by the bat")
//    let t2 = (dictionary: ["a","b","c"], sentence: "aadsfasf absbs bbab cadsfafs", output: "a a b c")
//    let t3 = (dictionary: ["a", "aa", "aaa", "aaaa"], sentence: "a aa a aaaa aaa aaa aaa aaaaaa bbb baba ababa", output: "a a a a a a a a bbb baba a")
//    [t1, t2, t3].forEach { t in
//        let result = Xoo648_2().replaceWords(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "653. Two Sum IV - Input is a BST") {
//    let a6 = TreeNode(7)
//    let a5 = TreeNode(4)
//    let a4 = TreeNode(2)
//    let a3 = TreeNode(6, nil, a6)
//    let a2 = TreeNode(3, a4, a5)
//    let a1 = TreeNode(5, a2, a3)
//    
//    let b3 = TreeNode(3)
//    let b2 = TreeNode(1)
//    let b1 = TreeNode(2, b2, b3)
//
//    let t1 = (root: a1, k: 9, output: true)
//    let t2 = (root: a1, k: 28, output: false)
//    let t3 = (root: b1, k: 4, output: true)
//    let t4 = (root: b1, k: 1, output: false)
//    let t5 = (root: b1, k: 3, output: true)
//    [t1, t2, t3, t4, t5].forEach { t in
//        let result = Xoo653().findTarget(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "658. Find K Closest Elements") {
//    let t1 = (arr: [1,2,3,4,5], k: 4, x: 3, output: [1,2,3,4])
//    let t2 = (arr: [1,2,3,4,5], k: 4, x: -1, output: [1,2,3,4])
//    let t3 = (arr: [1,1,2,2,2,2,2,3,3], k: 3, x: 3, output: [2,3,3])
//    [t1, t2, t3].forEach { t in
//        let result = Xoo658_3().findClosestElements(t.0, t.1, t.2)
//        print("\(result)")
//        if result != t.3 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "677. Map Sum Pairs") {
//    let mapSum = MapSum_B()
//    mapSum.insert("apple", 3)
//    let ans1 = mapSum.sum("ap")
//    mapSum.insert("app", 2)
//    let ans2 = mapSum.sum("ap")
//
//    print(ans1)
//    if ans1 != 3 { print("❌❌❌❌❌\n") }
//
//    print(ans2)
//    if ans2 != 5 { print("❌❌❌❌❌\n") }
//}

//Example.of(.medium, "684. Redundant Connection") {
//    let t1 = (edges: [[1,2],[1,3],[2,3]], output: [2,3])
//    let t2 = (edges: [[1,2],[2,3],[3,4],[1,4],[1,5]], output: [1,4])
//    [t1, t2].enumerated().forEach { i, t in
//        let result = Xoo684().findRedundantConnection(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\(i)\n") }
//    }
//}

//Example.of("695. Max Area of Island") {
//    let g1 = [
//        [0,0,1,0,0,0,0,1,0,0,0,0,0],
//        [0,0,0,0,0,0,0,1,1,1,0,0,0],
//        [0,1,1,0,1,0,0,0,0,0,0,0,0],
//        [0,1,0,0,1,1,0,0,1,0,1,0,0],
//        [0,1,0,0,1,1,0,0,1,1,1,0,0],
//        [0,0,0,0,0,0,0,0,0,0,1,0,0],
//        [0,0,0,0,0,0,0,1,1,1,0,0,0],
//        [0,0,0,0,0,0,0,1,1,0,0,0,0]
//    ] // 6
//    let g2 = [[0,0,0,0,0,0,0,0]] // 0
//    [g1, g2].forEach {
//        print("\(Xoo695_3().maxAreaOfIsland($0))")
//    }
//}

//Example.of(.medium, "701. Insert into a Binary Search Tree") {
//    let a5 = TreeNode(3)
//    let a4 = TreeNode(1)
//    let a3 = TreeNode(7)
//    let a2 = TreeNode(2, a4, a5)
//    let a1 = TreeNode(4, a2, a3)
//    let t1 = (root: a1, val: 5)
//
//    let b7 = TreeNode(70)
//    let b6 = TreeNode(50)
//    let b5 = TreeNode(30)
//    let b4 = TreeNode(10)
//    let b3 = TreeNode(60, b6, b7)
//    let b2 = TreeNode(20, b4, b5)
//    let b1 = TreeNode(40, b2, b3)
//    let t2 = (root: b1, val: 25)
//
//    let c5 = TreeNode(3)
//    let c4 = TreeNode(1)
//    let c3 = TreeNode(7)
//    let c2 = TreeNode(2, c4, c5)
//    let c1 = TreeNode(4, c2, c3)
//    let t3 = (root: c1, val: 5)
//
//    [t1, t2, t3].forEach { t in
//        let result = Xoo701_1().insertIntoBST(t.0, t.1)
//        print("\(result)")
//    }
//}

Example.of(.medium, "708. Insert into a Sorted Circular Linked List") {
//    let t1 = (nums: [1,2,3,1], output: 4)
//    let t2 = (nums: [2,7,9,3,1], output: 12)
//    [t1, t2].forEach { t in
//        let result = Xoo198_3().rob(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
}

//Example.of(.medium, "714. Best Time to Buy and Sell Stock with Transaction Fee") {
//    let t1 = (prices: [1,3,2,8,4,9], fee: 2, output: 8)
//    let t2 = (prices: [1,3,7,5,10,3], fee: 3, output: 6)
//    [t1, t2].forEach { t in
//        let result = Xoo714().maxProfit(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "718. Maximum Length of Repeated Subarray") {
//    let t1 = (nums1: [1,2,3,2,1], nums2: [3,2,1,4,7], output: 3)
//    let t2 = (nums1: [0,0,0,0,0], nums2: [0,0,0,0,0], output: 5)
//    let t3 = (nums1: [0,1,1,1,1], nums2: [1,0,1,0,1], output: 2)
//    let t4 = (nums1: [1,1,1], nums2: [1,0,1], output: 1)
//    let t5 = (nums1: [1,0,0,0,1], nums2: [1,0,0,1,1], output: 3)
//    [t1, t2, t3, t4, t5].forEach { t in
//        let result = Xoo718_3().findLength(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of("729. My Calendar I") {
//    let myCalendar = MyCalendar_2()
//    let events = [(10, 20, true), (15, 25, false), (20, 30, true)] // true, false, true
//    events.enumerated().forEach { i, e in
//        let isValid = myCalendar.book(e.0, e.1)
//        print("\(isValid)")
//        assert(e.2 == isValid, "❌\(i)")
//    }
//}

//Example.of(.easy, "733. Flood Fill") {
//    let t1 = (image: [[1,1,1],[1,1,0],[1,0,1]], sr: 1, sc: 1, newColor: 2, output: [[2,2,2],[2,2,0],[2,0,1]])
//    let t2 = (image: [[0,0,0],[0,0,0]], sr: 0, sc: 0, newColor: 2, output: [[2,2,2],[2,2,2]])
//    [t1, t2].forEach { t in
//        let result = Xoo733().floodFill(t.0, t.1, t.2, t.3)
//        print("\(result)")
//        if result != t.4 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "739. Daily Temperatures") {
//    let t1 = (temperatures: [73,74,75,71,69,72,76,73], output: [1,1,4,2,1,1,0,0])
//    let t2 = (temperatures: [30,40,50,60], output: [1,1,1,0])
//    let t3 = (temperatures: [30,60,90], output: [1,1,0])
//    [t1, t2, t3].forEach { t in
//        let result = Xoo739().dailyTemperatures(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "740. Delete and Earn") {
//    let t1 = (nums: [3,4,2], output: 6)
//    let t2 = (nums: [2,2,3,3,3,4], output: 9)
//    [t1, t2].forEach { t in
//        let result = Xoo740().deleteAndEarn(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "741. Cherry Pickup") {
//    let t1 = (grid: [[0,1,-1],[1,0,-1],[1,1,1]], output: 5)
//    let t2 = (grid: [[1,1,-1],[1,-1,1],[-1,1,1]], output: 0)
//    [t1, t2].forEach { t in
//        let result = Xoo741().cherryPickup(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "746. Min Cost Climbing Stairs") {
//    let c1 = [10,15,20] // 15
//    let c2 = [1,100,1,1,1,100,1,1,100,1] // 6
//    [c1, c2].forEach {
//        print("\(Xoo746_A().minCostClimbingStairs($0))")
//    }
//}

//Example.of(.medium, "752. Open the Lock") {
//    let t1 = (deadends: ["0201","0101","0102","1212","2002"], target: "0202") // 6
//    let t2 = (deadends: ["8888"], target: "0009") // 1
//    let t3 = (deadends: ["8887","8889","8878","8898","8788","8988","7888","9888"], target: "8888") // -1
//    let t4 = (deadends: ["0000"], target: "8888") // -1
//    [t1, t2, t3, t4].forEach {
//        print("\(Xoo752_B().openLock($0.0, $0.1))")
//    }
//}

//Example.of(.medium, "764. Largest Plus Sign") {
//    let t1 = (n: 5, mines: [[4,2]], output: 2)
//    let t2 = (n: 1, mines: [[0,0]], output: 0)
//    [t1, t2].forEach { t in
//        let result = Xoo764_2().orderOfLargestPlusSign(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "778. Swim in Rising Water") {
//    let t1 = (grid: [[0,2],[1,3]], output: 3)
//    let t2 = (grid: [[0,1,2,3,4],[24,23,22,21,5],[12,13,14,15,16],[11,17,18,19,20],[10,9,8,7,6]], output: 16)
//    [t1, t2].enumerated().forEach { i, t in
//        let result = Xoo778().swimInWater(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "782. Transform to Chessboard") {
//    let t1 = (board: [[0,1,1,0],[0,1,1,0],[1,0,0,1],[1,0,0,1]], output: 2)
//    let t2 = (board: [[0,1],[1,0]], output: 0)
//    let t3 = (board: [[1,0],[1,0]], output: -1)
//    let t4 = (board: [[1,0,0],[0,1,1],[1,0,0]], output: 1)
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo782().movesToChessboard(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.medium, "785. Is Graph Bipartite?") {
    let t1 = (graph: [[1,2,3],[0,2],[0,1,3],[0,2]], output: false)
    let t2 = (graph: [[1,3],[0,2],[1,3],[0,2]], output: true)
    [t1, t2].forEach { t in
        let result = Xoo785().isBipartite(t.0)
        print("\(result)")
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.medium, "791. Custom Sort String") {
//    let t1 = (order: "cba", str: "abcd", output: ["cbad", "dcba", "cdba", "cbda"])
//    let t2 = (order: "kqep", str: "pekeq", output: ["kqeep"])
//    let t3 = (order: "hucw", str: "utzoampdgkalexslxoqfkdjoczajxtuhqyxvlfatmptqdsochtdzgypsfkgqwbgqbcamdqnqztaqhqanirikahtmalzqjjxtqfnh", output: ["hhhhhuucccwaaaaaaaaabbdddddeffffggggiijjjjkkkkllllmmmmnnnoooopppqqqqqqqqqqqrsssttttttttvxxxxxyyzzzzz","hhhhhuucccwttttttttzzzzzooooaaaaaaaaammmmpppdddddggggkkkkllllexxxxxsssqqqqqqqqqqqffffjjjjyyvbbnnniir"])
//    [t1, t2, t3].forEach { t in
//        let result = Xoo791_1().customSortString(t.0, t.1)
//        print("\(result)")
//        if !t.2.contains(result) { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "792. Number of Matching Subsequences") {
//    let t1 = (s: "abcde", words: ["a","bb","acd","ace"], output: 3)
//    let t2 = (s: "dsahjpjauf", words: ["ahjpjau","ja","ahbwzgqnuk","tnmlanowax"], output: 2)
//    [t1, t2].enumerated().forEach { i, t in
//        let result = Xoo792_2().numMatchingSubseq(t.0, t.1)
//        print("\(result)")
//        assert(result == t.2, "❌\(i)")
//    }
//}

//Example.of(.medium, "795. Number of Subarrays with Bounded Maximum") {
//    let t1 = (nums: [2, 1, 4, 3], left: 2, right: 3, output: 3)
//    [t1].enumerated().forEach { i, t in
//        let result = Xoo795().numSubarrayBoundedMax(t.0, t.1, t.2)
//        print("\(result)")
//        assert(result == t.3, "❌\(i)")
//    }
//}

//Example.of(.medium, "814. Binary Tree Pruning") {
//    let a4 = TreeNode(1)
//    let a3 = TreeNode(0)
//    let a2 = TreeNode(0, a3, a4)
//    let a1 = TreeNode(1, nil, a2)
//
//    let b7 = TreeNode(1)
//    let b6 = TreeNode(0)
//    let b5 = TreeNode(0)
//    let b4 = TreeNode(0)
//    let b3 = TreeNode(1, b6, b7)
//    let b2 = TreeNode(0, b4, b5)
//    let b1 = TreeNode(1, b2, b3)
//
//    let c8 = TreeNode(0)
//    let c7 = TreeNode(1)
//    let c6 = TreeNode(0)
//    let c5 = TreeNode(1)
//    let c4 = TreeNode(1, c8, nil)
//    let c3 = TreeNode(0, c6, c7)
//    let c2 = TreeNode(1, c4, c5)
//    let c1 = TreeNode(1, c2, c3)
//
//    [a1, b1, c1].forEach { n in
//        let result = Xoo814().pruneTree(n)
//        print("\(result!)")
//    }
//}

Example.of(.hard, "818. Race Car") {
    let t1 = (target: 3, output: 2)
    let t2 = (target: 6, output: 5)
    [t1, t2].forEach { t in
        let result = Xoo818().racecar(t.0)
        print("\(result)")
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.hard, "827. Making A Large Island") {
//    let t1 = (grid: [[1,0],[0,1]], output: 3)
//    let t2 = (grid: [[1,1],[1,0]], output: 4)
//    let t3 = (grid: [[1,1],[1,1]], output: 4)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo827_1().largestIsland(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "834. Sum of Distances in Tree") {
//    let t1 = (n: 6, edges: [[0,1],[0,2],[2,3],[2,4],[2,5]], output: [8,12,6,10,10,10])
//    let t2 = (n: 1, edges: [[Int]](), output: [0])
//    let t3 = (n: 2, edges: [[1,0]], output: [1,1])
//    [t1, t2, t3].forEach { t in
//        let result = Xoo834_1().sumOfDistancesInTree(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "838. Push Dominoes") {
//    let t1 = (dominoes: "RR.L", output: "RR.L")
//    let t2 = (dominoes: ".L.R...LR..L..", output: "LL.RR.LLRRLL..")
//    let t3 = (dominoes: ".............L", output: "LLLLLLLLLLLLLL")
//    [t1, t2, t3].forEach { t in
//        let result = Xoo838().pushDominoes(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "841. Keys and Rooms") {
//    let t1 = (rooms: [[1],[2],[3],[]], output: true)
//    let t2 = (rooms: [[1,3],[3,0,1],[2],[0]], output: false)
//    [t1, t2].forEach { t in
//        let result = Xoo841().canVisitAllRooms(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "848. Shifting Letters") {
//    let t1 = (s: "abc", shifts: [3,5,9], output: "rpl")
//    let t2 = (s: "aaa", shifts: [1,2,3], output: "gfd")
//    let t3 = (s: "aaaz", shifts: [1,2,3,1], output: "hgea")
//    let t4 = (s: "aaaz", shifts: [1,2,3,100], output: "cbzv")
//    let t5 = (s: "mkgfzkkuxownxvfvxasy", shifts: [505870226,437526072,266740649,224336793,532917782,311122363,567754492,595798950,81520022,684110326,137742843,275267355,856903962,148291585,919054234,467541837,622939912,116899933,983296461,536563513], output: "wqqwlcjnkphhsyvrkdod")
//    let t6 = (s: "benhwjsenjhvulyvefdn", shifts: [183265101,732053054,190062728,192602923,551817738,880105762,67914564,336769190,208588970,748586819,57544790,922070787,299351164,42155594,120233240,184503545,976640197,453293964,150570427,82070647], output: "nxokgpiejnscajwjnbtw")
//    [t1, t2, t3, t4, t5, t6].forEach { t in
//        let result = Xoo848_A().shiftingLetters(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "849. Maximize Distance to Closest Person") {
//    let t1 = (seats: [1,0,0,0,1,0,1], output: 2)
//    let t2 = (seats: [1,0,0,0], output: 3)
//    let t3 = (seats: [0,1], output: 1)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo849_1().maxDistToClosest(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.hard, "850. Rectangle Area II") {
    let t1 = (rectangles: [[0,0,2,2],[1,0,2,3],[1,0,3,1]], output: 6)
    let t2 = (rectangles: [[0,0,1000000000,1000000000]], output: 49)
    [t1, t2].forEach { t in
        let result = Xoo850().rectangleArea(t.0)
        print("\(result)")
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.hard, "871. Minimum Number of Refueling Stops") {
//    let t1: (Int, Int, [[Int]], Int) = (target: 1, startFuel: 1, stations: [], output: 0)
//    let t2 = (target: 100, startFuel: 1, stations: [[10,100]], output: -1)
//    let t3 = (target: 100, startFuel: 10, stations: [[10,60],[20,30],[30,30],[60,40]], output: 2)
//    let t4 = (target: 100, startFuel: 50, stations: [[25,25],[50,50]], output: 1)
//    [t1, t2, t3, t4].enumerated().forEach { i, t in
//        let result = Xoo871().minRefuelStops(t.0, t.1, t.2)
//        print("\(result)")
//        assert(result == t.3, "❌\(i)")
//    }
//}

//Example.of(.medium, "875. Koko Eating Bananas") {
//    let t1 = (piles: [3,6,7,11], h: 8, output: 4)
//    let t2 = (piles: [30,11,23,4,20], h: 5, output: 30)
//    let t3 = (piles: [30,11,23,4,20], h: 6, output: 23)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo875().minEatingSpeed(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "876. Middle of the Linked List") {
//    let a5 = ListNode(5)
//    let a4 = ListNode(4, a5)
//    let a3 = ListNode(3, a4)
//    let a2 = ListNode(2, a3)
//    let a1 = ListNode(1, a2)
//    let t1 = (head: a1, output: a3)
//
//    let b6 = ListNode(6)
//    let b5 = ListNode(5, b6)
//    let b4 = ListNode(4, b5)
//    let b3 = ListNode(3, b4)
//    let b2 = ListNode(2, b3)
//    let b1 = ListNode(1, b2)
//    let t2 = (head: b1, output: b4)
//
//    [t1, t2].forEach { t in
//        let result = Xoo876_2().middleNode(t.0)
//        print("\(result)")
//        if result !== t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "877. Stone Game") {
//    let t1 = (piles: [5,3,4,5], output: true)
//    [t1].forEach { t in
//        let result = Xoo877_A().stoneGame(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.hard, "878. Nth Magical Number") {
    let t1 = (n: 1, a: 2, b: 3, output: 2)
    let t2 = (n: 4, a: 2, b: 3, output: 6)
    let t3 = (n: 5, a: 2, b: 4, output: 10)
    let t4 = (n: 3, a: 6, b: 4, output: 8)
    [t1, t2, t3, t4].forEach { t in
        let result = Xoo878().nthMagicalNumber(t.0, t.1, t.2)
        print("\(result)")
        if result != t.3 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.hard, "882. Reachable Nodes In Subdivided Graph") {
//    let t1 = (edges: [[0,1,10],[0,2,1],[1,2,2]], maxMoves: 6, n: 3, output: 13)
//    let t2 = (edges: [[0,1,4],[1,2,6],[0,2,8],[1,3,1]], maxMoves: 10, n: 4, output: 23)
//    let t3 = (edges: [[1,2,4],[1,4,5],[1,3,1],[2,3,4],[3,4,5]], maxMoves: 17, n: 5, output: 1)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo882().reachableNodes(t.0, t.1, t.2)
//        print("\(result)")
//        if result != t.3 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "899. Orderly Queue") {
//    let t1 = (s: "cba", k: 1, output: "acb")
//    let t2 = (s: "baaca", k: 3, output: "aaabc")
//    [t1, t2].forEach { t in
//        let result = Xoo899().orderlyQueue(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "902. Numbers At Most N Given Digit Set") {
//    let t1 = (digits: ["1","3","5","7"], n: 100, output: 20)
//    let t2 = (digits: ["1","4","9"], n: 1000000000, output: 29523)
//    let t3 = (digits: ["7"], n: 8, output: 1)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo902().atMostNGivenDigitSet(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "905. Sort Array By Parity") {
//    let t1 = (nums: [3,1,2,4], output: [2,4,3,1])
//    let t2 = (nums: [0], output: [0])
//    [t1, t2].forEach { t in
//        let result = Xoo905().sortArrayByParity(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "915. Partition Array into Disjoint Intervals") {
//    let t1 = (nums: [5,0,3,8,6], output: 3)
//    let t2 = (nums: [1,1,1,0,6,12], output: 4)
//    let t3 = (nums: [2,2,1,4,5], output: 3)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo915().partitionDisjoint(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "917. Reverse Only Letters") {
//    let t1 = (s: "ab-cd", output: "dc-ba")
//    let t2 = (s: "a-bC-dEf-ghIj", output: "j-Ih-gfE-dCba")
//    let t3 = (s: "Test1ng-Leet=code-Q!", output: "Qedo1ct-eeLg=ntse-T!")
//    [t1, t2, t3].forEach { t in
//        let result = Xoo917_A().reverseOnlyLetters(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "918. Maximum Sum Circular Subarray") {
//    let t1 = (nums: [1,-2,3,-2], output: 3)
//    let t2 = (nums: [5,-3,5], output: 10)
//    let t3 = (nums: [-3,-2,-3], output: -2)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo918().maxSubarraySumCircular(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "922") {
//    let t1 = (nums: [4,2,5,7], output: [4,5,2,7])
//    let t2 = (nums: [2,3], output: [2,3])
//    [t1, t2].forEach { t in
//        let result = Xoo922_A().sortArrayByParityII(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.medium, "926. Flip String to Monotone Increasing") {
    let t1 = (s: "00110", output: 1)
    let t2 = (s: "010110", output: 2)
    let t3 = (s: "00011000", output: 2)
    let t4 = (s: "111110", output: 1)
    let t5 = (s: "1111100001", output: 4)
    [t1, t2, t3, t4, t5].forEach { t in
        let result = Xoo926_1().minFlipMonoIncr(t.0)
        print("\(result)")
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.hard, "927. Three Equal Parts") {
//    let t1 = (arr: [1,0,1,0,1], output: [0,3])
//    let t2 = (arr: [1,1,0,1,1], output: [-1,-1])
//    let t3 = (arr: [1,1,0,0,1], output: [0,2])
//    let t4 = (arr: [0,0,1,1,0,0,1], output: [2,4])
//    let t5 = (arr: [0,0,0], output: [0,2])
//    [t1, t2, t3, t4, t5].forEach { t in
//        let result = Xoo927().threeEqualParts(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "929. Unique Email Addresses") {
//    let t1 = (emails: ["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"], output: 2)
//    let t2 = (emails: ["a@leetcode.com","b@leetcode.com","c@leetcode.com"], output: 3)
//    [t1, t2].forEach { t in
//        let result = Xoo929_A().numUniqueEmails(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "932. Beautiful Array") {
//    let t1 = (n: 4, output: [2,1,4,3])
//    let t2 = (n: 5, output: [3,1,2,5,4])
//    [t1, t2].forEach { t in
//        let result = Xoo932().beautifulArray(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "938. Range Sum of BST") {
//    let a6 = TreeNode(18)
//    let a5 = TreeNode(7)
//    let a4 = TreeNode(3)
//    let a3 = TreeNode(15, nil, a6)
//    let a2 = TreeNode(5, a4, a5)
//    let a1 = TreeNode(10, a2, a3)
//    let t1: (TreeNode?, Int, Int, Int) = (root: a1, low: 7, hight: 15, output: 32)
//
//    let b9 = TreeNode(6)
//    let b8 = TreeNode(1)
//    let b7 = TreeNode(18)
//    let b6 = TreeNode(13)
//    let b5 = TreeNode(7, b9, nil)
//    let b4 = TreeNode(3, b8, nil)
//    let b3 = TreeNode(15, b6, b7)
//    let b2 = TreeNode(5, b4, b5)
//    let b1 = TreeNode(10, b2, b3)
//    let t2: (TreeNode?, Int, Int, Int) = (root: b1, low: 6, high: 10, output: 23)
//
//    [t1, t2].forEach { t in
//        let result = Xoo938().rangeSumBST(t.0, t.1, t.2)
//        print("\(result)")
//        if result != t.3 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "941. Valid Mountain Array") {
//    let t1 = (arr: [2,1], output: false)
//    let t2 = (arr: [3,5,5], output: false)
//    let t3 = (arr: [0,3,2,1], output: true)
//    let t4 = (arr: [2,0,2], output: false)
//    let t5 = (arr: [0,1,2,1,2], output: false)
//    [t1, t2, t3, t4, t5].forEach { t in
//        let result = Xoo941().validMountainArray(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "954. Array of Doubled Pairs") {
//    let t1 = (arr: [3,1,3,6], output: false)
//    let t2 = (arr: [2,1,2,6], output: false)
//    let t3 = (arr: [4,-2,2,-4], output: true)
//    let t4 = (arr: [1,2,4,16,8,4], output: false)
//    let t5 = (arr: [2,1,2,1,1,1,2,2], output: true)
//    [t1, t2, t3, t4, t5].forEach { t in
//        let result = Xoo954_1().canReorderDoubled(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "973. K Closest Points to Origin") {
//    let t1 = (points: [[1,3],[-2,2]], k: 1, output: [[-2,2]])
//    let t2 = (points: [[3,3],[5,-1],[-2,4]], k: 2, output: [[3,3],[-2,4]])
//    [t1, t2].forEach { t in
//        let result = Xoo973_1().kClosest(t.0, t.1)
//        print("\(result)")
//        if Set(result) != Set(t.2) { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "978. Longest Turbulent Subarray") {
//    let t1 = (arr: [9,4,2,10,7,8,8,1,9], output: 5)
//    let t2 = (arr: [4,8,12,16], output: 2)
//    let t3 = (arr: [100], output: 1)
//    let t4 = (arr: [9,9,8], output: 2)
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo978_1().maxTurbulenceSize(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.hard, "980. Unique Paths III") {
    let t1 = (grid: [[1,0,0,0],[0,0,0,0],[0,0,2,-1]], output: 2)
    let t2 = (grid: [[1,0,0,0],[0,0,0,0],[0,0,0,2]], output: 4)
    let t3 = (grid: [[0,1],[2,0]], output: 0)
    [t1, t2, t3].forEach { t in
        let result = Xoo980().uniquePathsIII(t.0)
        print("\(result)")
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

Example.of(.easy, "993. Cousins in Binary Tree") {
    let a4 = TreeNode(4)
    let a3 = TreeNode(3)
    let a2 = TreeNode(2, a4, nil)
    let a1 = TreeNode(1, a2, a3)
    let t1 = (root: a1, x: 4, y: 3, output: false)
    
    let b5 = TreeNode(5)
    let b4 = TreeNode(4)
    let b3 = TreeNode(3, nil, b5)
    let b2 = TreeNode(2, nil, b4)
    let b1 = TreeNode(1, b2, b3)
    let t2 = (root: b1, x: 5, y: 4, output: true)
    
    let c4 = TreeNode(4)
    let c3 = TreeNode(3)
    let c2 = TreeNode(2, nil, c4)
    let c1 = TreeNode(1, c2, c3)
    let t3 = (root: c1, x: 2, y: 3, output: false)
    
    [t1, t2, t3].forEach { t in
        let result = Xoo993_2().isCousins(t.0, t.1, t.2)
        print("\(result)")
        if result != t.3 { print("❌❌❌❌❌\n") }
    }
}

Example.of(.medium, "994. Rotting Oranges") {
    let t1 = (grid: [[2,1,1],[1,1,0],[0,1,1]], output: 4)
    let t2 = (grid: [[2,1,1],[0,1,1],[1,0,1]], output: -1)
    let t3 = (grid: [[0,2]], output: 0)
    let t4 = (grid: [[0]], output: 0)
    [t1, t2, t3, t4].forEach { t in
        let result = Xoo994_1().orangesRotting(t.0)
        print("\(result)")
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.easy, "997. Find the Town Judge") {
//    let t1 = (n: 2, trust: [[1,2]], output: 2)
//    let t2 = (n: 3, trust: [[1,3],[2,3]], output: 3)
//    let t3 = (n: 3, trust: [[1,3],[2,3],[3,1]], output: -1)
//    let t4 = (n: 1, trust: [[Int]](), output: 1)
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo997().findJudge(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "1004. Max Consecutive Ones III") {
//    let t1 = (nums: [1,1,1,0,0,0,1,1,1,1,0], k: 2, output: 6)
//    let t2 = (nums: [0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1], k: 3, output: 10)
//    let t3 = (nums: [0,0,0,0,0,0,0], k: 3, output: 3)
//    let t4 = (nums: [1,1,1,1,1,1,1], k: 3, output: 7)
//    [t1, t2, t3, t4].enumerated().forEach { i, t in
//        let result = Xoo1004().longestOnes(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\(i)") }
//    }
//}

//Example.of(.medium, "1008. Construct Binary Search Tree from Preorder Traversal") {
//    let a6 = TreeNode(12)
//    let a5 = TreeNode(7)
//    let a4 = TreeNode(1)
//    let a3 = TreeNode(10, nil, a6)
//    let a2 = TreeNode(5, a4, a5)
//    let a1 = TreeNode(8, a2, a3)
//    let t1 = (preorder: [8,5,1,7,10,12], output: a1)
//
//    let b2 = TreeNode(3)
//    let b1 = TreeNode(1, nil, b2)
//    let t2 = (preorder: [1,3], output: b1)
//
//    [t1, t2].forEach { t in
//        if let result = Xoo1008().bstFromPreorder(t.0) {
//            print("\(result)")
//        }
//    }
//}

//Example.of(.easy, "1009. Complement of Base 10 Integer") {
//    let t1 = (n: 5, output: 2)
//    let t2 = (n: 7, output: 0)
//    let t3 = (n: 10, output: 5)
//    let t4 = (n: 0, output: 1)
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo1009().bitwiseComplement(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "1010. Pairs of Songs With Total Durations Divisible by 60") {
//    let t1 = (time: [30,20,150,100,40], output: 3)
//    let t2 = (time: [60,60,60], output: 3)
//    let t3 = (time: [30, 30], output: 1)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo1010_2().numPairsDivisibleBy60(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "1014. Best Sightseeing Pair") {
//    let t1 = (values: [8,1,5,2,6], output: 11)
//    let t2 = (values: [1,2], output: 2)
//    [t1, t2].forEach { t in
//        let result = Xoo1014().maxScoreSightseeingPair(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "1015. Smallest Integer Divisible by K") {
//    let t1 = (k: 1, output: 1)
//    let t2 = (k: 2, output: -1)
//    let t3 = (k: 3, output: 3)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo1015_1().smallestRepunitDivByK(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "1022. Sum of Root To Leaf Binary Numbers") {
//    let a7 = TreeNode(1)
//    let a6 = TreeNode(0)
//    let a5 = TreeNode(1)
//    let a4 = TreeNode(0)
//    let a3 = TreeNode(1, a6, a7)
//    let a2 = TreeNode(0, a4, a5)
//    let a1 = TreeNode(1, a2, a3)
//    let t1 = (root: a1, output: 22)
//
//    let b1 = TreeNode(0)
//    let t2 = (root: b1, output: 0)
//
//    [t1, t2].forEach { t in
//        let result = Xoo1022_3().sumRootToLeaf(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.medium, "1026. Maximum Difference Between Node and Ancestor") {
    let a9 = TreeNode(13)
    let a8 = TreeNode(7)
    let a7 = TreeNode(4)
    let a6 = TreeNode(14, a9, nil)
    let a5 = TreeNode(6, a7, a8)
    let a4 = TreeNode(1)
    let a3 = TreeNode(10, nil, a6)
    let a2 = TreeNode(3, a4, a5)
    let a1 = TreeNode(8, a2, a3)
    let t1 = (root: a1, output: 7)
    
    let b4 = TreeNode(3)
    let b3 = TreeNode(0, b4, nil)
    let b2 = TreeNode(2, nil, b3)
    let b1 = TreeNode(1, nil, b2)
    let t2 = (root: b1, output: 3)
    
    [t1, t2].forEach { t in
        let result = Xoo1026().maxAncestorDiff(t.0)
        print("\(result)")
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.medium, "1041. Robot Bounded In Circle") {
//    let t1 = (instructions: "GGLLGG", output: true)
//    let t2 = (instructions: "GG", output: false)
//    let t3 = (instructions: "GL", output: true)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo1041_1().isRobotBounded(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "1047. Remove All Adjacent Duplicates In String") {
//    let t1 = (s: "abbaca", output: "ca")
//    let t2 = (s: "azxxzy", output: "ay")
//    [t1, t2].enumerated().forEach { i, t in
//        let result = Xoo1047().removeDuplicates(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\(i)") }
//    }
//}

//Example.of(.medium, "1059. All Paths from Source Lead to Destination") {
//    let t1 = (n: 3, edges: [[0,1],[0,2]], source: 0, destination: 2, output: false)
//    let t2 = (n: 4, edges: [[0,1],[0,3],[1,2],[2,1]], source: 0, destination: 3, output: false)
//    let t3 = (n: 4, edges: [[0,1],[0,2],[1,3],[2,3]], source: 0, destination: 3, output: true)
//    let t4 = (n: 3, edges: [[0,1],[1,1],[1,2]], source: 0, destination: 2, output: false)
//    let t5 = (n: 2, edges: [[0,1],[1,1]], source: 0, destination: 1, output: false)
//    let t6 = (n: 5, edges: [[0,1],[0,2],[1,3],[2,3],[2,4]], source: 0, destination: 4, output: false)
//    [t1, t2, t3, t4, t5, t6].enumerated().forEach { i, t in
//        let result = Xoo1059().leadsToDestination(t.0, t.1, t.2, t.3)
//        print("\(result)")
//        assert(result == t.4, "❌\(i)")
//    }
//}

//Example.of(.medium, "1094. Car Pooling") {
//    let t1 = (trips: [[2,1,5],[3,3,7]], capacity: 4, output: false)
//    let t2 = (trips: [[2,1,5],[3,3,7]], capacity: 5, output: true)
//    [t1, t2].forEach { t in
//        let result = Xoo1094().carPooling(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "1120. Maximum Average Subtree") {
//    let a3 = TreeNode(1)
//    let a2 = TreeNode(6)
//    let a1 = TreeNode(5, a2, a3)
//    let t1 = (root: a1, output: 6.00000)
//    
//    let b2 = TreeNode(1)
//    let b1 = TreeNode(0, nil, b2)
//    let t2 = (root: b1, output: 1.00000)
//    
//    let c6 = TreeNode(10)
//    let c5 = TreeNode(6)
//    let c4 = TreeNode(5)
//    let c3 = TreeNode(1, nil, c6)
//    let c2 = TreeNode(6, c4, c5)
//    let c1 = TreeNode(7, c2, c3)
//    let t3 = (root: c1, output: 10.00000)
//    
//    let d3 = TreeNode(1)
//    let d2: TreeNode? = nil
//    let d1 = TreeNode(2, d2, d3)
//    let t4 = (root: d1, output: 1.50000)
//    
//    [t1, t2, t3, t4].enumerated().forEach { i, t in
//        let result = Xoo1120().maximumAverageSubtree(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌") }
//    }
//}

//Example.of(.easy, "1134. Armstrong Number") {
//    let t1 = (n: 153, output: true)
//    let t2 = (n: 123, output: false)
//    let t3 = (n: 1_000_000, output: false)
//    [t1, t2, t3].enumerated().forEach { i, t in
//        let result = Xoo1134_1().isArmstrong(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\(i)") }
//    }
//}

//Example.of(.easy, "1137. N-th Tribonacci Number") {
//    let t1 = (n: 4, output: 4)
//    let t2 = (n: 25, output: 1389537)
//    let t3 = (n: 37, output: 2082876103)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo1137().tribonacci(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "1143. Longest Common Subsequence") {
//    let t1 = (text1: "abcde", text2: "ace", output: 3)
//    let t2 = (text1: "abc", text2: "abc", output: 3)
//    let t3 = (text1: "abc", text2: "def", output: 0)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo1143().longestCommonSubsequence(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.hard, "1168. Optimize Water Distribution in a Village") {
    let t1 = (n: 3, wells: [1,2,2], pipes: [[1,2,1],[2,3,1]], output: 3)
    [t1].forEach { t in
        let result = Xoo1168().minCostToSupplyWater(t.0, t.1, t.2)
        print("\(result)")
        if result != t.3 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.hard, "1178. Number of Valid Words for Each Puzzle") {
//    let t1 = (words: ["aaaa","asas","able","ability","actt","actor","access"], puzzles: ["aboveyz","abrodyz","abslute","absoryz","actresz","gaswxyz"], output: [1,1,3,2,4,0])
//    let t2 = (words: ["apple","pleas","please"], puzzles: ["aelwxyz","aelpxyz","aelpsxy","saelpxy","xaelpsy"], output: [0,1,3,2,0])
//    [t1, t2].forEach { t in
//        let result = Xoo1178_A().findNumOfValidWords(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "1182. Shortest Distance to Target Color") {
//    let t1 = (colors: [1,1,2,1,3,2,2,3,3], queries: [[1,3],[2,2],[6,1]], output: [3,0,3])
//    let t2 = (colors: [1,2], queries: [[0,3]], output: [-1])
//    [t1, t2].enumerated().forEach { i, t in
//        let result = Xoo1182().shortestDistanceColor(t.0, t.1)
//        print("\(result)")
//        assert(result == t.2, "❌\(i)")
//    }
//}

//Example.of(.easy, "1189. Maximum Number of Balloons") {
//    let t1 = (text: "nlaebolko", output: 1)
//    let t2 = (text: "loonbalxballpoon", output: 2)
//    let t3 = (text: "leetcode", output: 0)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo1189_1().maxNumberOfBalloons(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "1200. Minimum Absolute Difference") {
//    let t1 = (arr: [4,2,1,3], output: [[1,2],[2,3],[3,4]])
//    let t2 = (arr: [1,3,6,10,15], output: [[1,3]])
//    let t3 = (arr: [3,8,-10,23,19,-4,-14,27], output: [[-14,-10],[19,23],[23,27]])
//    [t1, t2, t3].forEach { t in
//        let result = Xoo1200_1().minimumAbsDifference(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "1217. Minimum Cost to Move Chips to The Same Position") {
//    let t1 = (position: [1,2,3], output: 1)
//    let t2 = (position: [2,2,2,3,3], output: 2)
//    let t3 = (position: [1,1000000000], output: 1)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo1217_1().minCostToMoveChips(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "1220. Count Vowels Permutation") {
//    let t1 = (n: 1, output: 5)
//    let t2 = (n: 2, output: 10)
//    let t3 = (n: 5, output: 68)
//    let t4 = (n: 10000, output: 76428576)
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo1220().countVowelPermutation(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.hard, "1231. Divide Chocolate") {
    let t1 = (sweetness: [1,2,3,4,5,6,7,8,9], k: 5, output: 6)
    let t2 = (sweetness: [5,6,7,8,9,1,2,3,4], k: 8, output: 1)
    let t3 = (sweetness: [1,2,3,4,5,6,7,8,9], k: 2, output: 5)
    [t1, t2, t3].forEach { t in
        let result = Xoo1231().maximizeSweetness(t.0, t.1)
        print("\(result)")
        if result != t.2 { print("❌❌❌❌❌\n") }
    }
}

Example.of(.hard, "1235. Maximum Profit in Job Scheduling") {
    let t1 = (startTime: [1,2,3,3], endTime: [3,4,5,6], profit: [50,10,40,70], output: 120)
    let t2 = (startTime: [1,2,3,4,6], endTime: [3,5,10,6,9], profit: [20,20,100,70,60], output: 150)
    let t3 = (startTime: [1,1,1], endTime: [2,3,4], profit: [5,6,4], output: 6)
    [t1, t2, t3].forEach { t in
        let result = Xoo1235().jobScheduling(t.0, t.1, t.2)
        print("\(result)")
        if result != t.3 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.medium, "1239. Maximum Length of a Concatenated String with Unique Characters") {
//    let t1 = (arr: ["un","iq","ue"], output: 4)
//    let t2 = (arr: ["cha","r","act","ers"], output: 6)
//    let t3 = (arr: ["abcdefghijklmnopqrstuvwxyz"], output: 26)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo1239_1().maxLength(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "1290. Convert Binary Number in a Linked List to Integer") {
//    let a3 = ListNode(1)
//    let a2 = ListNode(0, a3)
//    let a1 = ListNode(1, a2)
//    let t1 = (head: a1, output: 5)
//
//    let b1 = ListNode(0)
//    let t2 = (head: b1, output: 0)
//
//    let c1 = ListNode(1)
//    let t3 = (head: c1, output: 1)
//
//    let d15 = ListNode(0)
//    let d14 = ListNode(0, d15)
//    let d13 = ListNode(0, d14)
//    let d12 = ListNode(0, d13)
//    let d11 = ListNode(0, d12)
//    let d10 = ListNode(0, d11)
//    let d9 = ListNode(1, d10)
//    let d8 = ListNode(1, d9)
//    let d7 = ListNode(1, d8)
//    let d6 = ListNode(0, d7)
//    let d5 = ListNode(0, d6)
//    let d4 = ListNode(1, d5)
//    let d3 = ListNode(0, d4)
//    let d2 = ListNode(0, d3)
//    let d1 = ListNode(1, d2)
//    let t4 = (head: d1, output: 18880)
//
//    let e2 = ListNode(0)
//    let e1 = ListNode(0, e2)
//    let t5 = (head: e1, output: 0)
//
//    [t1, t2, t3, t4, t5].forEach { t in
//        let result = Xoo1290_2().getDecimalValue(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "1291. Sequential Digits") {
//    let t1 = (low: 100, high: 300, output: [123,234])
//    let t2 = (low: 1000, high: 13000, output: [1234,2345,3456,4567,5678,6789,12345])
//    let t3 = (low: 10000000, high: 1000000000, output: [12345678, 23456789, 123456789])
//    [t1, t2, t3].forEach { t in
//        let result = Xoo1291_2().sequentialDigits(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "1293. Shortest Path in a Grid with Obstacles Elimination") {
//    let t1 = (grid:
//              [[0,0,0],
//               [1,1,0],
//               [0,0,0],
//               [0,1,1],
//               [0,0,0]],
//              k: 1, output: 6)
//    let t2 = (grid:
//              [[0,1,1],
//               [1,1,1],
//               [1,0,0]],
//              k: 1, output: -1)
//    let t3 = (grid:[[0]], k: 1, output: 0)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo1293().shortestPath(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "1305. All Elements in Two Binary Search Trees") {
//    let a3 = TreeNode(4)
//    let a2 = TreeNode(1)
//    let a1 = TreeNode(2, a2, a3)
//    let b3 = TreeNode(3)
//    let b2 = TreeNode(0)
//    let b1 = TreeNode(1, b2, b3)
//    let t1: (TreeNode?, TreeNode?, [Int]) = (root1: a1, root2: b1, output: [0,1,1,2,3,4])
//
//    let c2 = TreeNode(8)
//    let c1 = TreeNode(1, nil, c2)
//    let d2 = TreeNode(1)
//    let d1 = TreeNode(8, d2, nil)
//    let t2: (TreeNode?, TreeNode?, [Int]) = (root1: c1, root2: d1, output: [1,1,8,8])
//
//    [t1, t2].forEach { t in
//        let result = Xoo1305().getAllElements(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "1306. Jump Game III") {
//    let t1 = (nums: [4,2,3,0,3,1,2], start: 5, output: true)
//    let t2 = (nums: [4,2,3,0,3,1,2], start: 0, output: true)
//    let t3 = (nums: [3,0,2,1,2], start: 2, output: false)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo1306().canReach(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "1328. Break a Palindrome") {
//    let t1 = (palindrome: "abccba", output: "aaccba")
//    let t2 = (palindrome: "a", output: "")
//    let t3 = (palindrome: "aa", output: "ab")
//    let t4 = (palindrome: "aba", output: "abb")
//    [t1, t2, t3, t4].forEach { t in
//        let result = Xoo1328_1().breakPalindrome(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "1338. Reduce Array Size to The Half") {
//    let t1 = (arr: [3,3,3,3,5,5,5,2,2,7], output: 2)
//    let t2 = (arr: [7,7,7,7,7,7], output: 1)
//    let t3 = (arr: [1,9], output: 1)
//    let t4 = (arr: [1000,1000,3,7], output: 1)
//    let t5 = (arr: [1,2,3,4,5,6,7,8,9,10], output: 5)
//    let t6 = (arr: [9,77,63,22,92,9,14,54,8,38,18,19,38,68,58,19], output: 5)
//    [t1, t2, t3, t4, t5, t6].forEach { t in
//        let result = Xoo1338_A().minSetSize(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "1345. Jump Game IV") {
//    let t1 = (arr: [100,-23,-23,404,100,23,23,23,3,404], output: 3)
//    let t2 = (arr: [7], output: 0)
//    let t3 = (arr: [7,6,9,6,9,6,9,7], output: 1)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo1345().minJumps(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of("1383. Maximum Performance of a Team") {
//    let t1 = (n: 6, speed: [2,10,3,1,5,8], efficiency: [5,4,3,9,7,2], k: 2) // 60
//    let t2 = (n: 6, speed: [2,10,3,1,5,8], efficiency: [5,4,3,9,7,2], k: 3) // 68
//    let t3 = (n: 6, speed: [2,10,3,1,5,8], efficiency: [5,4,3,9,7,2], k: 4) // 72
//    let t4 = (n: 3, speed: [2,8,2], efficiency: [2,7,1], k: 2) // 56
//    let t5 = (n: 7, speed: [1,4,1,9,4,4,4], efficiency: [8,2,1,7,1,8,4], k: 6) // 98
//    [t1, t2, t3, t4, t5].forEach {
//        print("\(Xoo1383().maxPerformance($0.0, $0.1, $0.2, $0.3))")
//    }
//}

//Example.of(.hard, "1411. Number of Ways to Paint N x 3 Grid") {
//    let t1 = (n: 1, output: 12)
//    let t2 = (n: 2, output: 54)
//    let t3 = (n: 3, output: 246)
//    let t4 = (n: 7, output: 106494)
//    let t5 = (n: 5000, output: 30228214)
//    [t1, t2, t3, t4, t5].forEach { t in
//        let result = Xoo1411_2().numOfWays(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.easy, "1446. Consecutive Characters") {
//    let t1 = (s: "leetcode", output: 2)
//    let t2 = (s: "abbcccddddeeeeedcba", output: 5)
//    let t3 = (s: "triplepillooooow", output: 5)
//    let t4 = (s: "hooraaaaaaaaaaay", output: 11)
//    let t5 = (s: "tourist", output: 1)
//    let t6 = (s: "eeeee", output: 5)
//    [t1, t2, t3, t4, t5, t6].forEach { t in
//        let result = Xoo1446().maxPower(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.medium, "1448. Count Good Nodes in Binary Tree") {
//    let a6 = TreeNode(5)
//    let a5 = TreeNode(1)
//    let a4 = TreeNode(3)
//    let a3 = TreeNode(4, a5, a6)
//    let a2 = TreeNode(1, a4, nil)
//    let a1 = TreeNode(3, a2, a3)
//    
//    let b4 = TreeNode(2)
//    let b3 = TreeNode(4)
//    let b2 = TreeNode(3, b3, b4)
//    let b1 = TreeNode(3, b2, nil)
//    
//    let c1 = TreeNode(1)
//    
//    let t1 = (root: a1, output: 4)
//    let t2 = (root: b1, output: 3)
//    let t3 = (root: c1, output: 1)
//    
//    [t1, t2, t3].forEach { t in
//        let result = Xoo1448().goodNodes(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of(.hard, "1463. Cherry Pickup II") {
//    let t1 = (grid: [[3,1,1],[2,5,1],[1,5,5],[2,1,1]], output: 24)
//    let t2 = (grid: [[1,0,0,0,0,0,1],[2,0,0,0,0,3,0],[2,0,9,0,0,0,0],[0,3,0,5,4,0,0],[1,0,2,3,0,0,6]], output: 28)
//    let t3 = (grid: [[2,3,3,6,8],[0,7,5,2,10],[8,3,9,2,1],[9,5,2,5,5],[1,5,3,8,5],[9,4,5,5,9],[0,7,8,4,6],[4,10,8,10,1],[7,6,7,7,9],[8,4,2,6,2]], output: 145)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo1463().cherryPickup(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of("1465. Maximum Area of a Piece of Cake After Horizontal and Vertical Cuts") {
//    let t1 = (h: 5, w: 4, horizontalCuts: [1,2,4], verticalCuts: [1,3]) // 4
//    let t2 = (h: 5, w: 4, horizontalCuts: [3,1], verticalCuts: [1]) // 6
//    let t3 = (h: 5, w: 4, horizontalCuts: [3], verticalCuts: [3]) // 9
//    [t1, t2, t3].forEach {
//        print("\(Xoo1465().maxArea($0.0, $0.1, $0.2, $0.3))")
//    }
//}

//Example.of(.hard, "1510. Stone Game IV") {
//    let t1 = (n: 1, output: true)
//    let t2 = (n: 2, output: false)
//    let t3 = (n: 4, output: true)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo1510_2().winnerSquareGame(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.medium, "1522. Diameter of N-Ary Tree") {
    let a6 = Node1(6)
    let a5 = Node1(5)
    let a4 = Node1(4)
    let a3 = Node1(2)
    let a2 = Node1(3)
    let a1 = Node1(1)
    a1.children = [a2, a3, a4]
    a2.children = [a5, a6]
    let t1 = (root: a1, output: 3)
    
    let b6 = Node1(6)
    let b5 = Node1(5)
    let b4 = Node1(4)
    let b3 = Node1(3)
    let b2 = Node1(2)
    let b1 = Node1(1)
    b1.children = [b2]
    b2.children = [b3, b4]
    b3.children = [b5]
    b4.children = [b6]
    let t2 = (root: b1, output: 4)
    
    var cnodes: [Node1] = []
    (1...14).forEach { cnodes.append(Node1($0)) }
    cnodes[0].children = [cnodes[1], cnodes[2], cnodes[3], cnodes[4]]
    cnodes[2].children = [cnodes[5], cnodes[6]]
    cnodes[3].children = [cnodes[7]]
    cnodes[4].children = [cnodes[8], cnodes[9]]
    cnodes[6].children = [cnodes[10]]
    cnodes[7].children = [cnodes[11]]
    cnodes[8].children = [cnodes[12]]
    cnodes[10].children = [cnodes[13]]
    let t3 = (root: cnodes[0], output: 7)
    
    [t1, t2, t3].forEach { t in
        let result = Xoo1522().diameter(t.0)
        print("\(result)")
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.medium, "1567. Maximum Length of Subarray With Positive Product") {
//    let t1 = (nums: [1,-2,-3,4], output: 4)
//    let t2 = (nums: [0,1,-2,-3,-4], output: 3)
//    let t3 = (nums: [-1,-2,-3,0,1], output: 2)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo1567().getMaxLen(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.medium, "1602. Find Nearest Right Node in Binary Tree") {
    let a6 = TreeNode(6)
    let a5 = TreeNode(5)
    let a4 = TreeNode(4)
    let a3 = TreeNode(3, a5, a6)
    let a2 = TreeNode(2, nil, a4)
    let a1 = TreeNode(1, a2, a3)
    let t1: (TreeNode?, TreeNode?, TreeNode?) = (root: a1, u: a4, output: a5)
    
    let b3 = TreeNode(2)
    let b2 = TreeNode(4, b3, nil)
    let b1 = TreeNode(3, nil, b2)
    let t2: (TreeNode?, TreeNode?, TreeNode?) = (root: b1, u: b3, output: nil)
    
    [t1, t2].forEach { t in
        let result = Xoo1602().findNearestRightNode(t.0, t.1)
        print("\(result)")
        if result !== t.1 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.easy, "1629. Slowest Key") {
//    let t1 = (releaseTimes: [9,29,49,50], keysPressed: "cbcd", output: Character("c"))
//    let t2 = (releaseTimes: [12,23,36,46,62], keysPressed: "spuda", output: Character("a"))
//    [t1, t2].forEach { t in
//        let result = Xoo1629().slowestKey(t.0, t.1)
//        print("\(result)")
//        if result != t.2 { print("❌❌❌❌❌\n") }
//    }
//}

Example.of(.hard, "1632. Rank Transform of a Matrix") {
    let t1 = (matrix: [[1,2],[3,4]], output: [[1,2],[2,3]])
    let t2 = (matrix: [[7,7],[7,7]], output: [[1,1],[1,1]])
    let t3 = (matrix: [[20,-21,14],[-19,4,19],[22,-47,24],[-19,4,19]], output: [[4,2,3],[1,3,4],[5,1,6],[1,3,4]])
    let t4 = (matrix: [[7,3,6],[1,4,5],[9,8,2]], output: [[5,1,4],[1,2,3],[6,3,1]])
    [t1, t2, t3, t4].forEach { t in
        let result = Xoo1632().matrixRankTransform(t.0)
        print("\(result)")
        if result != t.1 { print("❌❌❌❌❌\n") }
    }
}

//Example.of(.easy, "1672. Richest Customer Wealth") {
//    let t1 = (accounts: [[1,2,3],[3,2,1]], output: 6)
//    let t2 = (accounts: [[1,5],[7,3],[3,5]], output: 10)
//    let t3 = (accounts: [[2,8,7],[7,1,3],[1,9,5]], output: 17)
//    [t1, t2, t3].forEach { t in
//        let result = Xoo1672().maximumWealth(t.0)
//        print("\(result)")
//        if result != t.1 { print("❌❌❌❌❌\n") }
//    }
//}

//Example.of("1690. Stone Game VII") {
//    let t1 = (stones: [5,3,1,4,2], diff: 6)
//    let t2 = (stones: [7,90,5,1,100,10,10,2], diff: 122)
//    let t3 = (stones: [5,3,1], diff: 3)
//    let t4 = (stones: [1,1,1,1], diff: 2)
//    [t1, t2, t3, t4].enumerated().forEach { i, t in
//        let scoreDiff = Xoo1690().stoneGameVII(t.0)
//        print("\(scoreDiff)")
//        assert(scoreDiff == t.1, "❌\(i)")
//    }
//}

//Example.of("1696. Jump Game VI") {
//    let t1 = (nums: [1,-1,-2,4,-7,3], k: 2, a: 7) // 7
//    let t2 = (nums: [10,-5,-2,4,0,3], k: 3, a: 17) // 17
//    let t3 = (nums: [1,-5,-20,4,-1,3,-6,-3], k: 2, a: 0) // 0
//    let t4 = (nums: [-5582,-5317,6711,-639,1001,1845,1728,-4575,-6066,-7770,128,-3254,7281], k: 3, a: 8537) // 8537
//    let t5 = (nums: [0,-1,-2,-3,1], k: 2, a: -1) // -1
//    [t1, t2, t3, t4, t5].enumerated().forEach { (i, t) in
//        let result = Xoo1696().maxResult(t.0, t.1)
//        print("\(result)")
//        assert(result == t.2, "❌\(i)")
//    }
//}

//Example.of(.easy, "1710. Maximum Units on a Truck") {
//    let t1 = (boxTypes: [[1,3],[2,2],[3,1]], truckSize: 4, output: 8)
//    let t2 = (boxTypes: [[5,10],[2,5],[4,7],[3,9]], truckSize: 10, output: 91)
//    [t1, t2].enumerated().forEach { i, t in
//        let result = Xoo1710_3().maximumUnits(t.0, t.1)
//        print("\(result)")
//        assert(result == t.2, "❌\(i)")
//    }
//}

Example.of(.medium, "1770. Maximum Score from Perfoming Multiplication Operations") {
    let t1 = (nums: [1,2,3], multipliers: [3,2,1], output: 14)
    let t2 = (nums: [-5,-3,-3,-2,7,1], multipliers: [-10,-5,3,4,6], output: 102)
    [t1, t2].forEach { t in
        let result = Xoo1770().maximumScore(t.0, t.1)
        print("\(result)")
        if result != t.2 { print("❌❌❌❌❌\n") }
    }
}
