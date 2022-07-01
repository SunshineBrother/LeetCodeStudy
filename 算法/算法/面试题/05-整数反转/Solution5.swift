//
//  Solution5.swift
//  算法
//
//  Created by 青青 on 2021/8/8.
/*
 给你一个 32 位的有符号整数 x ，返回将 x 中的数字部分反转后的结果。

 如果反转后整数超过 32 位的有符号整数的范围 [−231,  231 − 1] ，就返回 0。

 
 示例 1：
 输入：x = 123
 输出：321

 示例 2：
 输入：x = -123
 输出：-321

 示例 3：
 输入：x = 120
 输出：21


 示例 4：
 输入：x = 0
 输出：0
 
 
 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/reverse-integer
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Cocoa

class Solution5: NSObject {
    func reverse(x: Int) -> Int {
        var a = x
        var b = 0
        while a != 0 {
            b = b*10 + a%10
            a = a/10
        }
        return b
    }
}
