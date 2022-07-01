//
//  Solution22.swift
//  算法
//
//  Created by 青青 on 2021/8/8.
//

import Cocoa

class Solution22: NSObject {
    func bigPlus(a: String, b: String) -> String {
        let aList: [Character] = a.map{ $0 }
        let bList: [Character] = b.map{ $0 }
        var result = ""
        var i = aList.count - 1
        var j = bList.count - 1
        var flag = 0
         
        while i >= 0 || j >= 0 || flag != 0 {
            let x = i < 0 ? 0 : Int("\(aList[i])") ?? 0
            let y = j < 0 ? 0 : Int("\(bList[j])") ?? 0
            let sum = x + y + flag
            //添加到字符串尾部
            result = "\(sum % 10)" + result
            flag = sum / 10
            
            i -= 1
            j -= 1
        }
        
        return result 
    }
}
