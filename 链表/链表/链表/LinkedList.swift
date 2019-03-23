//
//  LinkedList.swift
//  链表
//
//  Created by yunna on 2019/3/23.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Cocoa

class LinkedList: NSObject {
    private var dummyHead:Node = Node() //虚拟头节点
    private var size:Int! = 0       //链表中的元素个数
    override init() {
        super.init()
        dummyHead.E = ""
        dummyHead.next = Node()
    }
    // 获取链表中的元素个数
    func getSize() -> Int {
        return size
    }
    //在链表中添加元素
    func add(index:Int,E:String) {
        var prev = dummyHead
        for _ in 0..<index {
            prev = prev.next
        }
        prev.next = Node(E: E, next: prev.next)
        size += 1
    }
    //在链表头部添加元素
    func addFirst(E:String) {
        add(index: 0, E: E);
    }
    // 在链表末尾添加新的元素e
    func addLast(E:String) {
        add(index: size, E: E)
    }
    //获取链表元素
    func get(index:Int) -> String {
        var cur = dummyHead
        for _ in 0..<index {
            cur = cur.next
        }
        return cur.E
    }
    //修改链表元素
    func set(index:Int,E:String) {
        var cur = dummyHead
        for _ in 0..<index {
            cur = cur.next
        }
        cur.E = E
    }
    //删除链表元素
    func delete(index:Int) {
        var prev = dummyHead
        for _ in 0..<index {
            prev = prev.next
        }
        let retNode = prev.next
        prev.next = retNode?.next
        size -= 1
    }
    
    //打印
    func toString() {
        var res = ""
        var cur = dummyHead
        for _ in 0..<size {
            cur = cur.next
            res.append("->\(cur.E)")
        }
        print(res + "->NULL")
    }
}

class Node: NSObject {
    var E:String = ""    //元素
    var next:Node! //指向下一个节点
    override init() {
        super.init()
    }
    
    init(E:String,next:Node) {
        self.E = E
        self.next = next
    }
  
}
