//
//  main.swift
//  希尔排序
//
//  Created by yunna on 2019/6/26.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Foundation

let arr:[Int] = generateRandomArray(count: 10000, rangL: 0, rangR: 5000)

let starttime1 = Date().timeIntervalSince1970
let sort = ShellSort().shellSort(data: arr)
let endTime1 = Date().timeIntervalSince1970

let starttime2 = Date().timeIntervalSince1970
let sort2 = InsertionSort().sorting(arr: arr)
let endTime2 = Date().timeIntervalSince1970



print("希尔排序:\(endTime1 - starttime1)")
print("插入排序:\(endTime2 - starttime2)")

/*
 希尔排序:3.7632460594177246
 插入排序:4.0005528926849365
 */
