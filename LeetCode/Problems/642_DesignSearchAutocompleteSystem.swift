//
//  642_DesignSearchAutocompleteSystem.swift
//  LeetCode
//
//  Created by xander on 2022/1/30.
//

import Foundation

class AutocompleteSystem {

    private var root: ATrieNode?
    
    var lastInput: String
    var searchNode: ATrieNode?
    
    init(_ sentences: [String], _ times: [Int]) {
        self.root = ATrieNode()
        self.lastInput = ""
        self.searchNode = root
        for i in 0..<sentences.count {
            add(sentences[i], times[i])
        }
    }
    
    func input(_ c: Character) -> [String] {
        guard c != "#" else {
            add(lastInput, 1)
            lastInput = ""
            searchNode = root
            return []
        }
        
        var res: [String] = []
        lastInput += "\(c)"
        guard let node = searchNode else { return res }

        if let child = node.children[c] {
            let searchList = child.list.sorted { (list1, list2) in
                let (str1, times1) = list1
                let (str2, times2) = list2
                return times1 > times2 || (times1 == times2 && str1 < str2)
            }
            
            var i = 0
            for (str, _) in searchList {
                res.append(str)
                i += 1
                if i == 3 { break }
            }
            
            searchNode = child
        } else {
            searchNode = nil
        }
        
        return res
    }
    
    private func add(_ sentence: String, _ times: Int) {
        var node = root
        for c in sentence {
            guard let n = node else { break }
            if n.children[c] == nil {
                n.children[c] = ATrieNode()
            }
            n.children[c]!.list[sentence, default: 0] += times
            node = n.children[c]
        }
    }
}

class ATrieNode {
    var children: [Character: ATrieNode] = [:]
    var list: [String: Int] = [:]
}
