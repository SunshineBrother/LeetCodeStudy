//
//  LoopQueue.swift
//  栈和队列
//
//  Created by yunna on 2019/3/21.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Cocoa
class LoopQueue: NSObject {
    private var data = [String]()
    private var front = 0,tail = 0;
    private var size = 6 //初始的时候数组的长度空间
    
    //队列中的元素
    func getSize() -> Int {
        // 注意此时getSize的逻辑:
        // 如果tail >= front，非常简单，队列中的元素个数就是tail - front
        // 如果tail < front，说明我们的循环队列"循环"起来了，此时，队列中的元素个数为：
        // tail - front + data.count
        //
        // 也可以理解成，此时，data中没有元素的数目为front - tail,
        // 整体元素个数就是 data.count - (front - tail) = data.count + tail - front
        return tail >= front ? tail - front : tail - front + data.count;
    }
    //入队
    func enqueue(E:String) {
        //此时 队头 和 队尾 相同 我们需要对数组空间进行扩容，并且重新分配数组元素
        if (tail + 1) % size == front {
            //数组扩容
            resize()
            size = size * 2
        }
        //入队操作
        if data.count <= tail {
            data.append(E)
        }else{
            data[tail] = E
        }
        
        //队尾计算
        tail = (tail + 1) % size
        
    }
    //出队
    func dequeue() -> String {
        let E = data[front]
        //把出队的数据占位
        data[front] = "nil"
        front = (front + 1) % size
        //数组缩容
        if data.count <= size / 4
        && data.count > 0{
            resize()
            size = size / 2
        }
        
        return E
    }
    
    //数组调整
    func resize() {
        var newData = [String]()
        for (index,_) in data.enumerated() {
            let item = data[(index + front) % data.count]
            print(item)
            print((index + front) % data.count)
            if (item == "nil"){
                continue
            }
            newData.append(item)
        }
        data = newData
        front = 0
        tail = newData.count
    }
    
    
    //打印
    func toString() -> String {
        var res = "LoopQueue: "
        for (index,item) in data.enumerated() {
            if (index < data.count - 1){
                res.append("\(item),")
            }
            if (index == data.count - 1){
                res.append("\(item)")
            }
        }
        res.append(" ->tail")
        return res
    }
}
