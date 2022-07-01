//
//  Solution13.swift
//  算法
//
//  Created by 青青 on 2021/8/8.
/*
 给定两个有序整数数组 nums1 和 nums2，将 nums2 合并到 nums1 中，使得 num1 成为一个有序数组。
 说明:
 初始化 nums1 和 nums2 的元素数量分别为 m 和 n。
 你可以假设 nums1 有足够的空间（空间大小大于或等于 m + n）来保存 nums2 中的元素。
 
 先放到一个新的数组中，在排序。但是这样没有体现任何算法，这里考的不是快速排序等排序算法。关键是如何利用有序这个已知条件。可以这样想，假设两个源数组的长度不一样，那么假设其中短的数组用完了,即全部放入到新数组中去了,那么长数组中剩下的那一段就可以直接拿来放到新数组中去了。

 */

import Cocoa

class Solution13: NSObject {

    func SortTwoArray(nums1: [Int], nums2: [Int]) -> [Int] {
        var data: [Int] = Array()
        var a = 0
        var b = 0
        while a < nums1.count && b < nums2.count {
            if nums1[a] > nums2[b] {
                data.append(nums1[a])
                a += 1
            } else {
                data.append(nums2[b])
                b += 1
            }
        }
        
        //nums1数组比较长
        while a < nums1.count {
            data.append(nums1[a])
            a += 1
        }
        
        //nums2数组比较长
        while b < nums2.count {
            data.append(nums2[b])
            b += 1
        }
        
        return data
    }
    
    
}
