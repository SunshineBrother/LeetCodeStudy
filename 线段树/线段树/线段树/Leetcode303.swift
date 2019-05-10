
//
//  Leetcode303.swift
//  线段树
//
//  Created by yunna on 2019/5/10.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Cocoa

class NumArray {
    
    private
    var sum:[Int] = Array()
    init(_ nums: [Int]) {
        var numArr = nums
        numArr.append(0)
        sum.append(0)
        for index in 1..<numArr.count {
            let ret = sum[index - 1] + numArr[index - 1]
            sum.append(ret)
        }
    }
    
    func sumRange(_ i: Int, _ j: Int) -> Int {
        return sum[j+1] - sum[i];
    }
}




class NumArray1 {
   
    private
    var segment = SegmentTree()
    
    init(_ nums: [Int]) {
        segment.SegmentTree(data: nums)
    }
    
    func sumRange(_ i: Int, _ j: Int) -> Int {
        let result = segment.query(queryL: i, queryR: j)
        return result
    }
}
