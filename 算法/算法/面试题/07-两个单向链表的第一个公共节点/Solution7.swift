//
//  Solution7.swift
//  算法
//
//  Created by 青青 on 2021/8/8.
/*
 寻找两个单向链表的第一个公共节点
 
 求差法
 先遍历两个链表求出他们的长度，当链表重合时，重合节点的后面的节点长度相同，只有公共节点的前面的节点长度不同，求差，让长的链表先走差值的长度，然后求公共节点就简单许多
 */

import Cocoa

class Solution7: NSObject {

    func getIntersectionNode(headA: Node<String>?, headB: Node<String>?) -> Node<String>? {
        // 如果某一链表为空，肯定不存在公共节点
        if headA == nil || headB == nil {
            return nil
        }
        // 记录长度差
        let lengthA = getListLength(node: headA)
        let lengthB = getListLength(node: headB)
        var diff = 0
        var longNode: Node<String>? = headA
        var shortNode: Node<String>? = headB
        if lengthA > lengthB {
            diff = lengthA - lengthB
        } else {
            diff = lengthB - lengthA
            longNode = headB
            shortNode = headA
        }
        
        // 先在长链表中走若干步，直到剩余部分和短链表长度一致
        for _ in 0..<diff {
            longNode = longNode?.right
        }
        
        // 再同时在两个链表上遍历，找到的第一个相同节点即为第一个公共节点
        while longNode != nil && shortNode != nil && longNode != shortNode  {
            longNode = longNode?.right
            shortNode = shortNode?.right
        }
        /*
        由于此时两个链表待遍历的长度一致;
        如果相交，headLong和 headShort都会指向首个公共节点;
        如果不相交，headLong和 headShort都会指向 null;
        故最后返回 headLong即可。
         */
        
        return longNode
    }
    
    /// 获取链表长度
    func getListLength(node: Node<String>?) -> Int {
        var size = 0
        var head = node
        
        while head != nil {
            size += 1
            head = head?.right
        }
        return size
    }
    
}
