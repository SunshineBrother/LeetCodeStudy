//
//  Solution.swift
//  栈和队列
//
//  Created by yunna on 2019/3/20.
//  Copyright © 2019年 yunna. All rights reserved.
//
//{()}{}[]
import Cocoa

class Solution: NSObject {
    let stack = Stack()
    func isValid(_ s: String) -> Bool {
        for c in s {
            if (c == "(" || c == "[" || c == "{"){
                stack.push(e: c)
            }else{
                //第一个如果不是上面的那三种情况直接return false
                if stack.isEmpty() {
                    return false
                }
                //在出现第一个右括号的时候，一定有一个与之相对应的左括号，否则不符合规则；在出现第一个右括号，我们在栈中栈定元素，栈定元素应该是与右括号成对出现的，否则不符合规则
                let topChar = stack.pop() as! Character
                if (c == ")" && topChar != "("){
                    return false
                }
                if (c == "]" && topChar != "["){
                    return false
                }
                if (c == "}" && topChar != "{"){
                    return false
                }
            }
          
        }
        //在字符串遍历到最后，我们的栈应该是空的，因为左侧右侧成对出现便会被压出栈
        return stack.isEmpty()
    }
}
