//
//  main.swift
//  归并排序
//
//  Created by yunna on 2019/6/4.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Foundation

let arr = generateRandomArray(count: 100000, rangL: 0, rangR: 100)

let starttime1 = Date().timeIntervalSince1970
let sort1 = SelectionSort().sorting(arr: arr)
let endTime1 = Date().timeIntervalSince1970
let starttime2 = Date().timeIntervalSince1970
let sort2 = MergeSort().sort(arr: arr)
let endTime2 = Date().timeIntervalSince1970

print("选择排序：\(endTime1 - starttime1)")
print("归并排序：\(endTime2 - starttime2)")
