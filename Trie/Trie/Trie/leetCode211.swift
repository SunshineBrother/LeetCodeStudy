//
//  leetCode211.swift
//  Trie
//
//  Created by yunna on 2019/5/14.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Cocoa

class leetCode211: NSObject {
    private var root = Node() //节点
    
    func addWord(_ word: String) {
        var cur = root
        for item in word {
            //如果下个节点不包含，添加
            if !cur.next.keys.contains(item){
                let node = Node()
                cur.next[item] = node
            }
            //找到下一个节点
            cur = cur.next[item] ?? Node()
        }
        
        //如果已经存在这个单词了，不处理
        //如果不存在这个单词，size++，isWord设置为true
        if !cur.isWord {
            cur.isWord = true
        }
    }
    
    func search(_ word: String) -> Bool {
        let result = recursiveSearch(word: word, cur: root, index: 0)
        return result
    }
    
    func recursiveSearch(word: String,cur:Node,index:Int) -> Bool {
        if index == word.count {
            return cur.isWord
        }
        
        let c:Character = word.first!
        let a:Character = "."
        if c != a {
            if !cur.next.keys.contains(c){
                return false
            }
            
            return recursiveSearch(word: word, cur: cur.next[c]!, index: index+1)
        }else{
            for key in cur.next.keys{
                if(recursiveSearch(word: word, cur: cur.next[key]!, index: index+1)){
                    return true
                }
            }
            return false
        }
      
    }
    
}

