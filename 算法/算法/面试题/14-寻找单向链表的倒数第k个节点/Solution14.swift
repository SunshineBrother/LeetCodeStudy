//
//  Solution14.swift
//  算法
//
//  Created by 青青 on 2021/8/8.
/*
 寻找单向链表的倒数第k个节点
 
 
 查找单链表中倒数第k个节点，拿到这道题，我们首先肯定能想到先遍历链表得到节点总数n，然后再去从头往后走n-k+1步就能得到想要的节点。这种方法当然是可行的，也是比较容易想到的方法，但是有的宝宝就会想这样做要遍历两次链表，有没有什么方法只遍历一次链表就能找到节点

 办法当然还是有的，我们可以利用两个指针遍历链表。刚开始把两个指针pAhead和pBhead都放在链表的头指针处，让pAhead向后走k步，pBhead保持不动，此时两个指针之间的距离就是k-1，然后让两个指针保持间距同时向后走，当pAhead走过链表最后一个节点到达NULL时，pBhead所指向的节点就是我们要找的倒数第k个节点
 
 */

import Cocoa

class Solution14: NSObject {

    func findKthToTail(node: Node<Any>?, k: Int) -> Node<Any>? {
        if node == nil {
            return nil
        }
        var slowNode: Node<Any>? = node
        var fastNode: Node<Any>? = node
        
        for _ in 0..<k {
            fastNode = node?.right
            if fastNode == nil {
                return nil
            }
        }
        
        
        while fastNode == nil {
            fastNode = fastNode?.right
            slowNode = slowNode?.right
        }
        
        return slowNode
    }
    
    
    
}
