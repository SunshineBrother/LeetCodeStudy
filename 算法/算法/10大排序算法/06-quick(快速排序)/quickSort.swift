//
//  quickSort.swift
//  算法
//
//  Created by 青青 on 2021/8/7.
//

import Cocoa

class quickSort: NSObject {
    var sortArr:[Int] = Array()
    func sorting(arr: [Int]) -> Array<Int> {
        sortArr = arr
        recursive(l: 0, r: arr.count-1)
        return sortArr
    }
    
    //递归排序
    private func recursive(l:Int,r:Int) {
        if l > r {return}
        let middle = partition(l: l, r: r)
        recursive(l: l, r: middle)
        recursive(l: middle+1, r: r)
    }
    
    //对arr[l...r]部分进行partition
    //返回p，使得arr[l...p-1] < arr[p]  arr[p+1...r] > arr[p]
    private func partition(l:Int,r:Int) -> Int {
        let pivot = sortArr[l]
        var left = l
        var right = r
        while left < right {
            // 右向左扫描
            while left < right {
                if sortArr[right] >= pivot {
                    right -= 1
                } else {
                    sortArr[left] = sortArr[right]
                    left += 1
                    break
                }
                
            }
            // 左向右扫描
            while left < right {
                if sortArr[left] > pivot {
                    left += 1
                } else {
                    sortArr[right] = sortArr[left]
                    right -= 1
                    break
                }
            }
            
        }
        
        sortArr[left] = pivot
        return left
    }
    
}
