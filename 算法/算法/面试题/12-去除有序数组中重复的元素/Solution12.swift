//
//  Solution12.swift
//  算法
//
//  Created by 青青 on 2021/8/8.
/*
 去除有序数组中重复的元素
 */

import Cocoa

class Solution12: NSObject {
    func removeDuplicates(nums:[Int]) -> [Int] {
        var data = nums
        var slow = 0
        var fast = 0
        while fast < data.count - 1 {
            fast += 1
            slow = fast - 1
            if data[slow] == data[fast] {
                data.remove(at: fast)
                fast = slow
            }
        }
        return data
    }
}
