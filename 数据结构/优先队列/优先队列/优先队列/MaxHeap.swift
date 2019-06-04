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
    private
    func siftUp(i:Int) {
        var child = i   //当前节点索引
        while (i > 0) && (data[child] > data[self.parent(index: child)]) {
            //交换child 和 parent
            data.swapAt(self.parent(index: child), child)
            //索引上浮
            child = self.parent(index: child)
        }
        
    }
    
    
    //删除元素
    func remove() -> Int {
        let last = data[data.count - 1]
        //索引为0的位置和最大的位置交换
        data.swapAt(0, data.count-1)
        //移除最后一位
        data.removeLast()
        //下沉
        siftDown(i: 0)
        
        return last
    }
    //下沉过程
    private
    func siftDown(i:Int) {
        var k = i
        while leftChild(index: k) < data.count {
            //j 是左右孩子中最大值
            var j = leftChild(index: k)
            if (j+1 < data.count) && (data[j+1] > data[j]){
                j += 1
            }
            
            if data[k] >= data[j] {
                break
            }
            //下层
            data.swapAt(k, j)
            k = j
        }
    }
    
    
    
    
    
  
}

