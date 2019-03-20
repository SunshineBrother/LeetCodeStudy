//
//  Stack.swift
//  栈和队列
//
//  Created by yunna on 2019/3/20.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Cocoa

class Stack: NSObject {
    var stackArr = [Any]()
    
    //栈的大小
    func getSize() -> Int {
        return stackArr.count
    }
    //栈是否为空
    func isEmpty() -> Bool {
        return stackArr.isEmpty
    }
    //压栈
    func push(e:Any) {
        stackArr.append(e)
    }
    //出栈
    func pop() -> Any{
        guard !stackArr.isEmpty else {
            return (Any).self
        }
        let E = stackArr[stackArr.count - 1]
        stackArr.removeLast()
        return E
    }
    //栈顶
    func peek() -> Any {
        return stackArr[stackArr.count - 1]
    }
    //打印
    func toString() ->String{
        var res = "Stack: "
        for (index,item) in stackArr.enumerated() {
            if (index < stackArr.count - 1){
                res.append("\(item),")
            }
            if (index == stackArr.count - 1){
                res.append("\(item)")
            }
        }
        return res
    }
    
    
}
