//
//  Solution18.swift
//  算法
//
//  Created by 青青 on 2021/8/8.
//

import Cocoa

class Solution18: NSObject {
    func reverseList(node: Node<Any>?) -> Node<Any>? {
        if node == nil {
            return nil
        }
        
        var nowNode: Node<Any>? = node
        var preNode: Node<Any>? = nil
        while nowNode != nil {
            // 暂存
            let nextNode: Node<Any>? = nowNode?.right
            nowNode?.right = preNode
            
            // 为下次循环做准备
            preNode = nowNode
            nowNode = nextNode
        }
        
        return preNode
    }
}
