//
//  Solution6.swift
//  算法
//
//  Created by 青青 on 2021/8/8.
/*
 有红、黄、蓝三种颜色的气球。在牛客王国，1个红气球+1个黄气球+1个蓝气球可以兑换一张彩票。
 2个红气球+1个黄气球可以兑换1个蓝气球。
 2个黄气球+1个蓝气球可以兑换1个红气球。
 2个蓝气球+1个红气球可以兑换1个黄气球。
 
 
 现在牛牛有a个红气球，b个黄气球，
 c个蓝气球，牛牛想知道自己最多可以兑换多少张彩票。

 
 注意：
 计算方式是，三个颜色，抵一张
 先找出最小的，全部换掉，
 然后打折兑换，


 为什么 A / 3 ， B / 2
 a 1 + b 1 + c 1 = 抵用 1
 c 1 = a 2 + b 1
 总结下
 a 3 + b 2 = 抵用 1

 还要注意
 三种颜色，取 A 2 B 1 , 兑换 C 1，
 排列组合有 6 种，只能取其中 3 钟
 不可以随意换

 例如，
 开始第二种兑换，
 r 为 0， 指望不上
 只能在剩下的两种颜色中，固定的比例换
 */

import Cocoa

class Solution6: NSObject {
    func solve(a:Int,b:Int,c:Int) -> Int {
        let minimum = threeMin(a: a, b: b, c: c)
        var result = minimum
        let red = a - minimum
        let yellow = b - minimum
        let blue = c - minimum
        if red == 0 {
            result += min(yellow/3, blue/2)
        } else if yellow == 0 {
            result += min(blue/3, red/2)
        } else if blue == 0{
            result += min(red/3, yellow/2)
        }
        
       return result
    }
    
    func threeMin(a:Int,b:Int,c:Int) -> Int {
        var min = a
        if min > b {
            min = b
        }
        if min > c {
            min = c
        }
        return min
    }
}
