//
//  main.swift
//  快速排序
//
//  Created by yunna on 2019/6/22.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Foundation

var arr:[Int] = []
for i in 0..<10000{
    arr.append(i)
}

let starttime1 = Date().timeIntervalSince1970
let res = quickSort().quickSort(arr: arr)
let endTime1 = Date().timeIntervalSince1970



let arr1 = generateRandomArray(count: 10000, rangL: 0, rangR: 10)
let starttime2 = Date().timeIntervalSince1970
let _ = quickSort().quickSort(arr: arr1)
let endTime2 = Date().timeIntervalSince1970



print("顺序数组快速排序:\(endTime1 - starttime1)")
print("随机数组快速排序:\(endTime2 - starttime2)")
