//
//  Solution16.swift
//  算法
//
//  Created by 青青 on 2021/8/8.
/*
 给定一个整数数组 nums ，找到一个具有最大和的连续子数组（子数组最少包含一个元素），返回其最大和。

 示例:
 输入: [-2,1,-3,4,-1,2,1,-5,4],
 输出: 6
 解释: 连续子数组 [4,-1,2,1] 的和最大，为 6。
 
 
 思路

 当我们加上一个正数时，和会增加；当我们加上一个负数时，和会减少。如果当前得到的和是个负数，那么这个和在接下来的累加中应该抛弃并重新清零，不然的话这个负数将会减少接下来的和

 设sum[i]为以第i个元素结尾且和最大的连续子数组。假设对于元素i，所有以它前面的元素结尾的子数组的长度都已经求得，那么以第i个元素结尾且和最大的连续子数组实际上，要么是以第i-1个元素结尾且和最大的连续子数组加上这个元素，要么是只包含第i个元素，即sum[i]
 = max(sum[i-1] + a[i], a[i])。

 可以通过判断sum[i-1] + a[i]是否大于a[i]来做选择，而这实际上等价于判断sum[i-1]是否大于0。由于每次运算只需要前一次的结果，因此并不需要像普通的动态规划那样保留之前所有的计算结果，只需要保留上一次的即可，因此算法的时间和空间复杂度都很小
 */

import Cocoa

class Solution16: NSObject {
    func maxSubArray(nums: [Int]) -> Int {
        var max = nums[0]
        var stmp = 0
        for i in 0..<nums.count {
            if stmp > 0 {
                stmp += nums[i]
            } else {
                stmp = nums[i]
            }
            
            if stmp > max {
                max = stmp
            }
        }
        
        return max
    }
}
