//
//  SortTestHelper.swift
//  算法
//
//  Created by 青青 on 2021/8/7.
//

import Foundation
import Cocoa

// 生成有n个元素的随机数组,每个元素的随机范围为[rangeL, rangeR]
func generateRandomArray(count:Int,rangL:Int,rangR:Int) -> Array<Int> {
    
    if rangR <= rangL{
        fatalError("取值范围不准确")
    }
    
    var arr:[Int] = Array()
    for _ in 0..<count {
        let arc = rangR - rangL + 1
        let item:Int = Int(arc4random()) % arc + rangL
        arr.append(item)
    }
    
    return arr
}



// 判断arr数组是否有序
func isSorted(arr:[Int]) -> Bool {
    for i in 0..<arr.count-1 {
        if arr[i] > arr[i+1] {
            return false
        }
    }
    return true
}

















