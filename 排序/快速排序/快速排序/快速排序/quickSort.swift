//
//  quickSort.swift
//  快速排序
//
//  Created by yunna on 2019/6/22.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Cocoa

class quickSort: NSObject {

    private
    var arr:[Int] = Array()
    
    func quickSort(arr:[Int]) ->[Int]{
        self.arr = arr
        recursiveQuickSort(l: 0, r: arr.count-1)
        return self.arr
    }
    
    
    //递归排序
    private
    func recursiveQuickSort(l:Int,r:Int) {
        if l >= r {
            return
        }
        
        let p = partition(l: l, r: r)
        recursiveQuickSort(l: l, r: p-1)
        recursiveQuickSort(l: p+1, r: r)
        
    }
    
    //对arr[l...r]部分进行partition
    //返回p，使得arr[l...p-1] < arr[p]  arr[p+1...r] > arr[p]
    private
    func partition(l:Int,r:Int) -> Int {
        
        //=======================================
        let rand = Int(arc4random()) % (r - l + 1) + l
        arr.swapAt(rand, l)
        //======================================
        
        let v = arr[l]
        
        //arr[l+1...j] < v   arr[j+1...i] > v
        var j = l
        for i in l+1..<r+1 {
            if arr[i] < v {
                arr.swapAt(j+1, i)
                j += 1
            }
        }
        
        arr.swapAt(l, j)
        return j
    }
    
    
    
}
