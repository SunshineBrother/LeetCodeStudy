
//
//  TrieMap.swift
//  Trie
//
//  Created by yunna on 2019/5/14.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Cocoa

class TrieMap: NSObject {
    private var root = Node() //节点
    private var size = 0      //存储的单词量
    
    
    //获取trie中单词的存储量
    func getSize() -> Int {
        return size
    }
    
    //向trie中添加一个单词
    func add(word:String) {
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
            size += 1
        }
    }
    
    
    //查询单词word是否在Trie中
    func contains(word:String) -> Bool {
        var cur = root
        for item in word {
            //如果下个节点不包含
            if !cur.next.keys.contains(item){
                 return false
            }
            //找到下一个节点
            cur = cur.next[item] ?? Node()
        }
        
        //即使已经word全部字符都在字典树中，我们也要看看最后一个isWord是否是一个true，对比`pan`和`panda`
        return cur.isWord
    }
    
    // 查询是否在Trie中有单词以prefix为前缀
    func isPrefix(word:String) -> Bool {
        var cur = root
        for item in word {
            //如果下个节点不包含
            if !cur.next.keys.contains(item){
                return false
            }
            //找到下一个节点
            cur = cur.next[item] ?? Node()
        }
        return true
    }
    
    
    
    
}

class Node: NSObject {
    var isWord:Bool = false
    var next:[Character:Node] = Dictionary()
}



