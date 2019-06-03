//
//  Sorting.swift
//  Sort
//
//  Created by yunna on 2019/6/3.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Cocoa

class BubbleSorting: NSObject {

    //冒泡排序
    func sorting(arr:[Int]) -> Array<Int>{
        var sortArr:[Int] = arr
        print(sortArr)
        for i in 0..<sortArr.count {
            for j in 0..<sortArr.count-1-i{
                if sortArr[j] > sortArr[j+1]{
                    sortArr.swapAt(j, j+1)
                }
                
//                print(sortArr)
                
            }
            print("-------------------")
            print(sortArr)
        }
        
        return sortArr
    }
    
    
    //冒泡排序
    func sorting1(arr:[Int]) -> Array<Int>{
        var sortArr:[Int] = arr
        print(sortArr)
        var swapped = false
        for i in 0..<sortArr.count {
            swapped = false
            for j in 0..<sortArr.count-1-i{
                if sortArr[j] > sortArr[j+1]{
                    sortArr.swapAt(j, j+1)
                    swapped = true
                }
//                print(sortArr)
            }
            if swapped == false{
                break
            }
            
            print("-------------------")
            print(sortArr)
        }
        
        return sortArr
    }
    
    
    
}
