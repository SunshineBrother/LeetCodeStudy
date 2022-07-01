//
//  Solution4.swift
//  算法
//
//  Created by 青青 on 2021/8/8.
/*
 假设你正在爬楼梯。需要 n 阶你才能到达楼顶。每次你可以爬 1 或 2 个台阶。你有多少种不同的方法可以爬到楼顶呢？

 假设你正在爬楼梯。需要 n 阶你才能到达楼顶。
 每次你可以爬 1 或 2 个台阶。你有多少种不同的方法可以爬到楼顶呢？
 注意：给定 n 是一个正整数。
 示例 1：
 输入： 2
 输出： 2
 解释： 有两种方法可以爬到楼顶。
 1. 1 阶 + 1 阶
 2. 2 阶

 示例 2：
 输入： 3
 输出： 3
 解释： 有三种方法可以爬到楼顶。
 1. 1 阶 + 1 阶 + 1 阶
 2. 1 阶 + 2 阶
 3. 2 阶 + 1 阶

 这个题本质就是解裴波拉切数
 定义F(n)表示到达第n个台阶的方法，则F(n) = F(n - 1) +F(n - 2) ；
 思路清晰后代码如下：
 */

import Cocoa

class Solution4: NSObject {
    func climbStairs(n:Int) -> Int {
        if n <= 0 {
            return 0
        } else if n == 1 {
            return 1
        } else if n == 2 {
            return 2
        }
        return climbStairs(n: n - 1) + climbStairs(n: n - 2)
    }
}



