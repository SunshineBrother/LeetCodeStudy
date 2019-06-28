//
//  main.swift
//  计数排序
//
//  Created by yunna on 2019/6/28.
//  Copyright © 2019年 yunna. All rights reserved.
//[3,1,1,2,1,1]

import Foundation

let arr = generateRandomArray(count: 10, rangL: 1, rangR: 5)
print(arr)
let result = CountingSort().sort(arr: arr)
print(result)

