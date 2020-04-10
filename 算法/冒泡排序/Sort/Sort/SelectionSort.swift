//
//  SelectionSort.swift
//  Sort
//
//  Created by yunna on 2019/6/3.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Cocoa

class SelectionSort: NSObject {
    func sorting(arr:[Int]) -> Array<Int>{
        var sortArr = arr
        let n = sortArr.count
        for i in 0..<n {
            // 寻找[i, n)区间里的最小值的索引
            var minIndex = i;
            for j in (i+1)..<n{
                if sortArr[minIndex] > sortArr[j]{
                    minIndex = j
                }
            }
            sortArr.swapAt(i, minIndex)
        }
        return sortArr
    }
}
