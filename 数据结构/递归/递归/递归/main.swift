//
//  main.swift
//  递归
//
//  Created by yunna on 2019/3/27.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Foundation

var arr = [Int]()
var count = 0
for index in 0..<101{
    arr.append(index)
    count += index;
}
print(count)
let res = Recursion().add(arr: arr)
print("递归算法：",res)

//===递归链表===
let link = ListNode()
link.listNode(arr: [1,2,3,4,5,6,7])
link.toString()

