//
//  Solution10.swift
//  算法
//
//  Created by 青青 on 2021/8/8.
/*
 递归计算1~100的和
 
 1、找出临界值，无需计算就能够得出的值。
 2、找这一次和上一次的关系
 3、假设这个函数已经写好，写出第n次和第n-1次的关系公式。
 sum(100) = sum(99) + 100;
 sum(n) = sum(n - 1) + n;
 */

import Cocoa

class Solution10: NSObject {
    func sum(n: Int) -> Int {
        if n == 1 {
            return 1
        }
        return sum(n: n-1) + n
    }
}
