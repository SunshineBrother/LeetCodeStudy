//
//  Queue.swift
//  栈和队列
//
//  Created by yunna on 2019/3/21.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Cocoa

class Queue: NSObject {
    private var queueArr = [Any]()
    
    //队列大小
    func getSize() -> Int {
        return queueArr.count
    }
    //添加队列
    func enqueue(E:Any) {
        queueArr.append(E)
    }
    //删除队列
    //根据队列先进先出的原则，我们需要删除队列中的第一个元素。因为我们需要计算队列的复杂度，我们这里写2种删除队列的算法
    //删除队列1：系统提供的remove第一个数组元素
    func dequeue1() -> Any {
        let res = queueArr[0]
        queueArr.remove(at: 0)
        return res
    }
    //打印
    func toString() -> String {
        var res = "Stack: "
        for (index,item) in queueArr.enumerated() {
            if (index < queueArr.count - 1){
                res.append("\(item),")
            }
            if (index == queueArr.count - 1){
                res.append("\(item)")
            }
        }
        
        return res
    }
    
    
    
    
}
