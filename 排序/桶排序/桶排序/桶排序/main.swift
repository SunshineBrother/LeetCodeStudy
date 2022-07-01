//
//  main.swift
//  桶排序
//
//  Created by yunna on 2019/6/28.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Foundation

let arr = generateRandomArray(count: 11, rangL: 1, rangR: 9)
print(arr)
let res = BucketSort().sort(arr: arr)
print(res)
