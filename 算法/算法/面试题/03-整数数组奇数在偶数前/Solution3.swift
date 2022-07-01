//
//  Solution3.swift
//  算法
//
//  Created by 青青 on 2021/8/8.
/*
 有一个整数数组，如何只遍历一遍就实现让该数组奇数都在前面，偶数都在后面？
 
 输入一个整数数组，实现一个函数来调整该数组中数字的顺序，使得所有的奇数位于数组的前半部分，所有的偶数位于位于数组的后半部分，并保证奇数和奇数，偶数和偶数之间的相对位置不变


 冒泡算法思想，当前面数字为偶数，后面数字为奇数时，相互交换，否则不交换
 */

import Cocoa

class Solution3: NSObject {

    func reOrderArray(data: [Int]) -> Array<Int> {
        var list = data
        for i in 0..<data.count {
            for j in stride(from: data.count - 1, to: i, by: -1) {
                if list[j] / 2 == 1 && list[j - 1] / 2 == 0 {
                    list.swapAt(j, j-1)
                }
            }
        }
        return list
    }
    
}
