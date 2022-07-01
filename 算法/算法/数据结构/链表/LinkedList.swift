//
//  LinkedList.swift
//  算法
//
//  Created by 青青 on 2021/8/7.
//

import Cocoa

class LinkedList: NSObject {
    //虚拟头节点
    private var dummyHead: Node = Node<String>()
    var size = 0
    
    //在链表中添加元素
    func add(index: Int, e: String) {
        var current = dummyHead
        for _ in 0..<index {
            current = current.right ?? Node<String>()
        }
        size += 1
        current.right = Node(e: e, right: current.right)
    }
     
    //获取链表元素
    func get(index:Int) -> String? {
        var current = dummyHead
        for _ in 0..<index {
            current = current.right ?? Node<String>()
        }
        return current.e
    }
    
    // 修改链表元素
    func set(index:Int,e:String) {
        var current = dummyHead
        for _ in 0..<index {
            current = current.right ?? Node<String>()
        }
        current.e = e
    }
    
    //删除链表元素
    func delete(index:Int) {
        var current = dummyHead
        for _ in 0..<index {
            current = current.right ?? Node<String>()
        }
        current.right = current.right?.right
        size -= 1
    }
    

}
