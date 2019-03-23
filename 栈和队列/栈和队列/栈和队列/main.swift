//
//  main.swift
//  栈和队列
//
//  Created by yunna on 2019/3/20.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Foundation
extension Date {
    /// 获取当前 毫秒级 时间戳 - 13位
    var milliStamp : Int {
        let timeInterval: TimeInterval = self.timeIntervalSince1970
        let millisecond = CLongLong(round(timeInterval*1000))
        return Int(millisecond)
    }
}

//循环队列
let loopQuere = LoopQueue()
let startDate1 = Date().milliStamp
for index in 0..<100{
    loopQuere.enqueue(E: "\(index)")
    if index % 2 == 1{
       let _ = loopQuere.dequeue()
    }
  
}
let endDate1 = Date().milliStamp
print("循环队列:\(endDate1 - startDate1)")
 

//线性队列
let quere = Queue()
let startDate2 = Date().milliStamp
for index in 0..<100000{
    quere.enqueue(E: "\(index)")
    if index % 2 == 1{
        let _ = quere.dequeue()
    }
}
let endDate2 = Date().milliStamp
print("线性队列:\(endDate2 - startDate1)")








 




