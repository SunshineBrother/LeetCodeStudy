//
//  CountingSort.swift
//  计数排序
//
//  Created by yunna on 2019/6/28.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Cocoa

class CountingSort: NSObject {
    func sort(arr:[Int]) -> [Int] {
        var max:Int = arr[0]   //最大值
        var min:Int = arr[0]   //最小值
        
        for item in arr {
            //找出最大值
            max = max < item ? item : max
            //找出最小值
            min = min < item ? min : item
        }
        
        //创建一个元素个数为 max-min 的数组
        var list:[Int] = Array()
        for _ in 0..<max-min+1 {
            list.append(0)
        }
        //排序[3,1,1,2,1,1]
        for item in arr {
            let a = item - min
            let count = list[a] + 1
            list[a] = count
        }
        
        //返回结果
        var resultList:[Int] = Array()
        for (index,item) in list.enumerated() {
            if item == 0{
                continue
            }
            for _ in 0..<item{
                let num = index + min
                resultList.append(num)
            }
            
        }
        
        return resultList
    }
    
    
}
