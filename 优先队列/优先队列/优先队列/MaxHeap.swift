//
//  MaxHeap.swift
//  优先队列
//
//  Created by yunna on 2019/5/6.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Cocoa

class MaxHeap: NSObject {
    var data:[Int] = Array()  //存放堆的数组
    
    // 返回堆中的元素个数
    func size() -> Int {
        return data.count
    }
    
    // 返回一个布尔值, 表示堆中是否为空
    func isEmpty() -> Bool {
        return data.isEmpty
    }
    
    // 返回完全二叉树的数组表示中，一个索引所表示的元素的父亲节点的索引
    func parent(index:Int) -> Int {
        if index == 0 {
            fatalError("index-0 doesn't have parent.")
        }
        return (index - 1) / 2;
    }
    
    // 返回完全二叉树的数组表示中，一个索引所表示的元素的左孩子节点的索引
    func leftChild(index:Int) -> Int {
        return index * 2 + 1
    }
    //返回完全二叉树的数组表示中，一个索引所表示的元素的右孩子节点的索引
    func rightChild(index:Int) -> Int {
        return index * 2 + 2
    }
    
    //添加元素
    func add(child:Int) {
        data.append(child)
        siftUp(i: data.count - 1)
    }
    //上浮过程
    func siftUp(i:Int) {
        var child = i   //当前节点索引
        while (i > 0) && (data[child] > data[self.parent(index: child)]) {
            //交换child 和 parent
            data.swapAt(self.parent(index: child), child)
            //索引上浮
            child = self.parent(index: child)
        }
        
    }
  
}

