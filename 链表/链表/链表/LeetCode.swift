//
//  LeetCode.swift
//  链表
//
//  Created by yunna on 2019/3/27.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Cocoa

class LeetCode: NSObject {
    
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        var headNode = head
        //判断第一个节点的val值是否是需要移除的那一个
        while headNode != nil && headNode?.val == val {
            headNode = headNode?.next
        }
        //第一个节点判断结束以后如果，链表为空，直接return
        if headNode == nil {
            return headNode
        }
        //判断剩余链表
        var prev:ListNode = headNode!
        while prev.next != nil {
            if prev.next?.val == val{
                //下一个节点如果是要去除的值，去掉下一个节点值
                //把当前节点的下一个节点的值 修改为 当前节点下下一个节点的值，这个步骤是去掉下一个节点的值
                prev.next = prev.next?.next
            }else{
                //遍历下一个节点
                prev = prev.next!
            }
        }
        
        return headNode
    }
    
    //如果要是使用虚拟头结点的话
    func removeElements1(_ head: ListNode?, _ val: Int) -> ListNode? {
        let dummyHead = ListNode(-1)
        dummyHead.next = head
        var prev:ListNode = dummyHead
        while prev.next != nil {
            if prev.next?.val == val{
                //下一个节点如果是要去除的值，去掉下一个节点值
                //把当前节点的下一个节点的值 修改为 当前节点下下一个节点的值，这个步骤是去掉下一个节点的值
                prev.next = prev.next?.next
            }else{
                //遍历下一个节点
                prev = prev.next!
            }
        }
        
        
        return dummyHead.next
    }
    
    
    
}

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

