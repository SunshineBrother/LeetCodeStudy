//
//  ShellSort.swift
//  希尔排序
//
//  Created by yunna on 2019/6/26.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Cocoa

class ShellSort: NSObject {
    private
    var data:[Int] = Array()
    
    func shellSort(data:[Int]) -> [Int] {
        self.data = data
        let incremental = data.count / 2
        recursiveShellSort(incremental: incremental)
        
        self.data = sorting(arr: self.data)
        return self.data
    }
    
    /// 递归
    ///
    /// - Parameter incremental: 增量
    private
    func recursiveShellSort(incremental:Int)  {
        if incremental == 0 {
            return
        }
        for index in 0..<data.count - incremental {
            let a = data[index]
            let b = data[index + incremental]
            if a > b{
                data.swapAt(index, index+incremental)
            }
            
        }
        
        recursiveShellSort(incremental: incremental / 2)
    }
    
    //插入排序
    func sorting(arr:[Int]) -> Array<Int>{
        var sortArr = arr
        for i in 0..<sortArr.count {
            for j in stride(from: i, to: 0, by: -1) {
                if sortArr[j] < sortArr[j-1]{
                    sortArr.swapAt(j, j-1)
                }
            }
        }
        return sortArr
    }
    
    
}
