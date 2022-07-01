//
//  Stack.swift
//  算法
//
//  Created by 青青 on 2021/8/7.
//

import Cocoa

class Stack: NSObject {
    var stackArr = [Any]()
    //压栈
    func push(e: Any) {
        stackArr.append(e)
    }
    // 出栈
    func pop() -> Any? {
        guard stackArr.isEmpty else {
            return nil
        }
        return stackArr[stackArr.count - 1]
    }
}
