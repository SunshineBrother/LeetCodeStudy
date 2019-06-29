//
//  radixSort.swift
//  基数排序
//
//  Created by yunna on 2019/6/29.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Cocoa

class radixSort: NSObject {

    private
    var data:[Int] = Array()
    
    func sort(arr:[Int]) -> [Int] {
        data = arr
        recursiveSort(num: 1)
        return data
    }
    //递归
    private
    func recursiveSort(num:Int)  {
        let mode = num * 10
        var buckets = [[Int]]()
        for _ in 0..<10 {
            buckets.append([Int]())
        }
        
        //判断递归是否结束,默认结束，
        //当取余的所有值都为0的时候证明已经遍历到了最高位，递归结束
        var end = true
        for item in data {
            let temp = (item % mode) / num
            if temp != 0{
                end = false
            }
            var tempArr = buckets[temp]
            tempArr.append(item)
            buckets[temp] = tempArr
        }
        
        if end {
            return
        }
        
        //取出结果
        data.removeAll()
        for item in buckets {
            data += item
        }
        
        recursiveSort(num: mode)
    }
  
}
