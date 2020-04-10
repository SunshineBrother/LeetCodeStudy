//
//  MergeSort.swift
//  归并排序
//
//  Created by yunna on 2019/6/4.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Cocoa

class MergeSort: NSObject {
    private
    var sortArr:[Int] = Array()
    func sort(arr:[Int]) ->Array<Int>{
        sortArr = arr
        recursiveSort(l: 0, r: arr.count-1)
        return sortArr
    }
    
    func recursiveSort(l:Int,r:Int) {
        if l >= r {
            return
        }
       
        let mid = (l+r)/2
        //左边归并排序，使得左子序列有序
        recursiveSort(l: l, r: mid)
        //右边归并排序，使得右子序列有序
        recursiveSort(l: mid+1, r: r)
        //将两个有序子数组合并操作
        merge(l: l, mid: mid, r: r)
    }
    
    // 将arr[l...mid]和arr[mid+1...r]两部分进行归并
    func merge(l:Int,mid:Int,r:Int) {
        
        var aux:[Int] = Array()
        for i in l..<r+1 {
            aux.append(sortArr[i])
        }
 
        // 初始化，i指向左半部分的起始索引位置l；j指向右半部分起始索引位置mid+1
        var i = l
        var j = mid+1
        
        for k in l..<r+1 {
            if (i > mid){// 如果左半部分元素已经全部处理完毕
                sortArr[k] = aux[j-l]
                j += 1
            }
            else if( j > r ){   // 如果右半部分元素已经全部处理完毕
                sortArr[k] = aux[i-l];
                i += 1
            }
            else if(aux[i-l] - aux[j-l] < 0 ){  // 左半部分所指元素 < 右半部分所指元素
                sortArr[k] = aux[i-l]
                i += 1
            }
            else{  // 左半部分所指元素 >= 右半部分所指元素
                sortArr[k] = aux[j-l]
                j += 1
            }
        }
    }
    
}
