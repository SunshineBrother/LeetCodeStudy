//
//  BubbleSorting.swift
//  算法
//
//  Created by 青青 on 2021/8/7.
//

import Cocoa
//总的来说冒泡排序就是把最大的数放到最后面的位置
class BubbleSorting: NSObject {
    //冒泡排序
    func sorting(arr: [Int]) -> Array<Int> {
        var sortArr = arr
        for i in 0..<sortArr.count {
            for j in 0..<sortArr.count - 1 - i {
                if sortArr[j] > sortArr[j+1] {
                    sortArr.swapAt(j, j+1)
                }
            }
        }
        return sortArr
    }
    
    //冒泡排序
    func sorting1(arr: [Int]) -> Array<Int> {
        var sortArr = arr
        var swapped = false
        for i in 0..<sortArr.count {
            swapped = false
            for j in 0..<sortArr.count - 1 - i {
                if sortArr[j] > sortArr[j+1] {
                    sortArr.swapAt(j, j+1)
                    swapped = true
                }
            }
            // 证明已经排序结束
            if swapped == false {
                return sortArr
            }
        }
        return sortArr
    }
}
