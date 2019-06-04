//
//  main.swift
//  优先队列
//
//  Created by yunna on 2019/5/6.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Foundation

let heap = MaxHeap()
let data = [62,41,30,28,16,22,13,19,17,15,52]
for (_,item) in data.enumerated(){
    heap.add(child: item)
}
print(heap.data)
//删除
let _ = heap.remove()
print(heap.data)




