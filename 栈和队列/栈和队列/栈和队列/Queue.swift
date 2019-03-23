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
    //入队
    func enqueue(E:Any) {
        queueArr.append(E)
    }
    //出队
    func dequeue() -> Any {
        let res = queueArr[0]
        queueArr.remove(at: 0)
        return res
    }
    //打印
    func toString() -> String {
        var res = "Queue:     "
        for (index,item) in queueArr.enumerated() {
            if (index < queueArr.count - 1){
                res.append("\(item),")
            }
            if (index == queueArr.count - 1){
                res.append("\(item)")
            }
        }
        res.append(" ->tail")
        return res
    }
  
}
