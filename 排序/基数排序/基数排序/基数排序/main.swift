//
//  main.swift
//  基数排序
//
//  Created by yunna on 2019/6/29.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Foundation

//let arr:[Int] = [10,5,19,17,57,24,101,67,81]
let arr = generateRandomArray(count: 50, rangL: 0, rangR: 100)
print(arr)
let res = radixSort().sort(arr: arr)
print(res)
