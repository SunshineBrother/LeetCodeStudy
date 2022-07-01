//
//  SelectionSorting.swift
//  算法
//
//  Created by 青青 on 2021/8/7.
//选择排序也会把数组分为已排序区和未排序区。但是与插入排序不同的是，它每次找到未排序区的最小值，与未排序区的首个元素交换，这样就变成了已排序区的末尾元素了

import Cocoa
class SelectionSorting: NSObject {
    func sorting(arr: [Int]) -> Array<Int> {
        var sortArr = arr
        for i in 0..<sortArr.count {
            // 寻找[i, n)区间里的最小值的索引
            var minIndex = i;
            for j in i+1..<sortArr.count {
                if sortArr[minIndex] > sortArr[j] {
                    minIndex = j
                }
            }
            sortArr.swapAt(i, minIndex)
        }
        return sortArr
    }
    
}
