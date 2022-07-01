//
//  Solution2.swift
//  算法
//
//  Created by 青青 on 2021/8/7.
/*
 【题目】 给定一个链表的头节点head,请判断该链表是否为回 文结构。

 例如:
 1->2->1,返回true1->2->2->1,返回true
 15->6->15,返回true
 1->2->3,返回false

【具体思路】
 （1） 第一步，先求出链表的总长度
 （2） 第二步，找到中间节点
 （3） 第三步，逆置链表后半部分节点
 （4） 第四步，判断链表是否是回文结构
 */

import Cocoa

class Solution2: NSObject {
    func checkPalindrome(headNode: Node<String>) -> Bool {
        var head: Node<String>? = headNode

        //1.找到链表的中间节点 (快慢指针)
        var fastNode: Node<String>? = head
        var slowNode: Node<String>? = head
        while fastNode != nil && fastNode?.right != nil  {
            fastNode = fastNode?.right?.right
            slowNode = slowNode?.right
        }
        
        //2.翻转中间链表之后的节点
        // 此时slownode就是中间节点
        var midNode = slowNode?.right
        while midNode != nil {
            let mideNext = midNode?.right
            midNode?.right = slowNode
            slowNode = midNode
            midNode = mideNext
        }
        //3.对比是否是首尾相同的回文
        while slowNode != head {
            //当他两没遇到时
            if slowNode?.e != head?.e {
                return false
            }
            //偶数情况下
            if head?.right == slowNode {
                return true
            }
            slowNode = slowNode?.right
            head = head?.right
        }
        return true
    }
}
