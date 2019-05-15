//
//  UnionFind1.swift
//  并查集
//
//  Created by yunna on 2019/5/15.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Cocoa

class UnionFind1: NSObject {

    // 我们的第一版Union-Find本质就是一个数组
    private var ids:[Int] = Array()
    
    init(size:Int) {
        super.init()
        // 初始化, 每一个id[i]指向自己, 没有合并的元素
        for item in 0..<size {
            ids.append(item)
        }
    }
    
    // 查找元素p所对应的集合编号
    // O(1)复杂度
    func find(_ p:Int) -> Int {
        if p >= ids.count || p < 0 {
            fatalError("p is out of bound")
        }
        return ids[p]
    }
    
    // 查看元素p和元素q是否所属一个集合
    // O(1)复杂度
    func isConnected(p:Int,q:Int) -> Bool {
        return find(p) == find(q)
    }
    
    // 合并元素p和元素q所属的集合
    // O(n) 复杂度
    func unionElements(p:Int,q:Int) {
        let qId = find(q)
        let pId = find(p)
        
        if qId == pId {
            return
        }
        // 合并过程需要遍历一遍所有元素, 将两个元素的所属集合编号合并
        for (index,item) in ids.enumerated() {
            if (pId == item){
                ids[index] = qId
            }
        }
    }
    
}
