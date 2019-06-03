//
//  InsertionSort.swift
//  Sort
//
//  Created by yunna on 2019/6/3.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Cocoa

class InsertionSort: NSObject {
    func sorting(arr:[Int]) -> Array<Int>{
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
