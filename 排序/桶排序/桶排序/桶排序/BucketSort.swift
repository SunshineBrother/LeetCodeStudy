//
//  BucketSort.swift
//  桶排序
//
//  Created by yunna on 2019/6/28.
//  Copyright © 2019年 yunna. All rights reserved.
//https://mp.weixin.qq.com/s/vn3KiV-ez79FmbZ36SX9lg

import Cocoa

class BucketSort: NSObject {
    
    ///桶容量大小
    private
    var bucket = 5
    
    func sort(arr:[Int]) -> [Int] {
        var max:Int = arr[0]   //最大值
        var min:Int = arr[0]   //最小值
        
        for item in arr {
            //找出最大值
            max = max < item ? item : max
            //找出最小值
            min = min < item ? min : item
        }
        //获取桶的个数
        let buckets = bucketCount(min: min, max: max, arr: arr)
        var bucketList:[[Int]] = Array()
        for _ in 0..<buckets {
            bucketList.append([Int]())
        }
        
        // 将数据分配到各个桶中
        for item in arr {
            let index = (item - min) / bucket
            var items = bucketList[index]
            items.append(item)
            bucketList[index] = items
        }
        
        // 对每个桶进行排序，这里使用了插入排序
        var resultList:[Int] = Array()
        for items in bucketList {
            let sorts = insertSorting(arr: items)
            resultList += sorts
        }
        
        
        return resultList
    }
    
    
    ///获取桶的个数
    func bucketCount(min:Int,max:Int,arr:[Int]) -> Int {
        let num1 = (max - min + 1) / bucket
        let num2 = (max - min + 1) % 5 > 0 ? 1 : 0
        
        return num1 + num2
    }
    //插入排序
    func insertSorting(arr:[Int]) -> [Int]{
        var sortArr = arr
        for i in 0..<sortArr.count {
            for j in stride(from: i, to: 0, by: -1) {
                if sortArr[j] < sortArr[j-1]{
                    sortArr.swapAt(j, j-1)
                }
            }
        }
        return sortArr
    }
}
