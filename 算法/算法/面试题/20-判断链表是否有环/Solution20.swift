//
//  Solution20.swift
//  算法
//
//  Created by 青青 on 2021/8/8.
/*
 有一个单向链表，链表当中有可能出现“环”，就像题图这样。如何用程序判断出这个链表是有环链表？
 不允许修改链表结构。
 时间复杂度O(n)，空间复杂度O(1)。

 
 首先创建两个指针1和2（在java里就是两个对象引用），同时指向这个链表的头节点。然后开始一个大循环，在循环体中，让指针1每次向下移动一个节点，让指针2每次向下移动两个节点，然后比较两个指针指向的节点是否相同。如果相同，则判断出链表有环，如果不同，则继续下一次循环。

 例如链表A->B->C->D->B->C->D，两个指针最初都指向节点A，进入第一轮循环，指针1移动到了节点B，指针2移动到了C。第二轮循环，指针1移动到了节点C，指针2移动到了节点B。第三轮循环，指针1移动到了节点D，指针2移动到了节点D，此时两指针指向同一节点，判断出链表有环。

 此方法也可以用一个更生动的例子来形容：在一个环形跑道上，两个运动员在同一地点起跑，一个运动员速度快，一个运动员速度慢。当两人跑了一段时间，速度快的运动员必然会从速度慢的运动员身后再次追上并超过，原因很简单，因为跑道是环形的
 

 */

import Cocoa

class Solution20: NSObject {
    func isLoopList(node: Node<String>?) -> Bool {
        if node == nil {
            return false
        }
        var fastNode = node
        var slowNode = node
        
        while fastNode != nil && slowNode != nil {
            fastNode = fastNode?.right?.right
            slowNode = slowNode?.right?.right
            if fastNode?.e == slowNode?.e {
                return true
            }
        }
        
        return false
    }
}
