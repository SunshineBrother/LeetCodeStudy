//
//  Recursion.swift
//  递归
//
//  Created by yunna on 2019/3/27.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Cocoa

class Recursion: NSObject {
    //数组求和
    func add(arr:[Int]) -> Int {
        return sum(arr: arr, l: 0)
    }
    //更小的问题
    private
    func sum(arr:[Int],l:Int) -> Int {
        if l == arr.count {
            return 0
        }
        let result = arr[l] + sum(arr: arr, l: l+1)
        return result
    }
}
