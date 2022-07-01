//
//  DoubleList.swift
//  算法
//
//  Created by 青青 on 2021/8/8.
//

import Cocoa

class DoubleList{
    //头尾虚节点
    var head, tail : Node<String>?
    //链表元素数
    var size : Int = 0
     
    
    //在链表头部添加节点x
    public func addFirst(_ x : Node<String>){
        x.left = head?.right
        x.left = head
        head?.right?.right = x
        head?.right = x
        size += 1
    }
    
    //删除链表中的节点（x一定存在）
    public func remove(_ x : Node<String>){
        x.left?.right = x.right
        x.right?.left = x.left
        size -= 1
    }
    
    //删除链表最后一个节点，并返回该节点
    public func removeLast()-> Node<String>?{
        if tail?.left?.e == head?.e {
            return nil
        }
        let last = tail?.left
        remove(last!)
        return last
    }
    
    //返回链表长度
    public func Size()->Int{
        return size
    }
}
