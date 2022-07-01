//
//  Solution19.swift
//  算法
//
//  Created by 青青 on 2021/8/8.
/*
 实现函数 int sqrt(int x).
 
 计算并返回x的平方根（向下取整）
 二分查找
 1.初始范围为1，x
 2.当middle*middle <= x && (middle+1)*(middle+1) > x时，返回结果
 3.当middle*middle < x时，到右半部分继续寻找
 4.当middle*middle > x时，到左半部分继续寻找

 */

import Cocoa

class Solution19: NSObject {
    func sqrt (_ x: Int) -> Int {
        if(x <= 0) {
            return 0
        }
        var left = 1
        var right = x
        while(true){
            let middle = (left + right) / 2
            if (middle <= x / middle) && (middle + 1) > x / (middle + 1) {
                 return middle
            }else if (middle < x / middle){
                left = middle + 1
            }else{
                right = middle - 1
            }
        }
    }
}
