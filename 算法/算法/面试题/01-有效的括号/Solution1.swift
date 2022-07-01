//
//  Solution.swift
//  算法
//
//  Created by 青青 on 2021/8/7.
/*
 
 给定一个只包括 (，)，{，}，[，] 的字符串，判断字符串是否有效。

 有效字符串需满足：

 1、左括号必须用相同类型的右括号闭合。
 2、左括号必须以正确的顺序闭合。

 注意空字符串可被认为是有效字符串。
 
 示例 1:
 输入: "()"
 输出: true
 
 示例 2:
 输入: "()[]{}"
 输出: true
 
 示例 3:
 输入: "(]"
 输出: false
 
 示例 4:
 输入: "([)]"
 输出: false
 */

import Cocoa

class Solution1: NSObject {
    let stack = Stack()
    func isValid(_ s: String) -> Bool {
        for c in s {
            // 如果是左括号压栈
            if c == "(" || c == "[" || c == "{" {
                stack.push(e: c)
            } else {
                //第一个如果不是上面的那三种情况直接return false
                if stack.stackArr.isEmpty {
                    return false
                }
                //在出现第一个右括号的时候，一定有一个与之相对应的左括号，否则不符合规则；
                //在出现第一个右括号，我们在栈中栈定元素，栈定元素应该是与右括号成对出现的，否则不符合规则
                let topChar = stack.pop() as! Character
                if c == ")" && topChar != "(" {
                    return false
                }
                if c == "]" && topChar != "[" {
                    return false
                }
                if c == "}" && topChar != "{" {
                    return false
                }
                
            }
            
        }
        
        //在字符串遍历到最后，我们的栈应该是空的，因为左侧右侧成对出现便会被压出栈
        return stack.stackArr.isEmpty
    }
    
}
