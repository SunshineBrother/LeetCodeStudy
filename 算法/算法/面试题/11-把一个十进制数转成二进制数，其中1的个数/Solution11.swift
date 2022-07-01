//
//  Solution11.swift
//  算法
//
//  Created by 青青 on 2021/8/8.
/*
 把一个十进制数转成二进制数，其中1的个数
 
 得到10的二进制数为1010
 那么我们会发现，10%2是判断二进制数的最后一位是0还是1，判断完成后向右移一位即10/2得到5，接着5%2判断二进制数的倒数第二位是0还是1，判断完成后向右移一位即5/2得2，重复这个过程，直到0/2结束。最终我们得到了10的二进制数1010.

 根据上述思想，我们可以得到一个最初步的算法。
 
 */

import Cocoa

class Solution11: NSObject {
    func solve(n:Int) -> Int {
        var result = 0
        var data = n
        while data / 2 != 0 {
            if data % 2 == 0 {
                result += 1
            }
            data = data / 2
        }
        
        return result
    }

}
