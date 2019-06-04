//
//  UnionFind4.swift
//  并查集
//
//  Created by yunna on 2019/5/15.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Cocoa

class UnionFind4: NSObject {
    // parent[i]表示第一个元素所指向的父节点
    private var parent:[Int] = Array()
    // rank[i]表示以i为根的集合所表示的树的层数
    private var rank:[Int] = Array()
    
    init(size:Int) {
        super.init()
        // 初始化, 每一个parent[i]指向自己, 表示每一个元素自己自成一个集合
        for item in 0..<size {
            parent.append(item)
            rank.append(1)
        }
    }
    
    // 查找过程, 查找元素p所对应的集合编号
    // O(h)复杂度, h为树的高度
    func find(_ p:Int) -> Int {
        if p >= parent.count || p < 0 {
            fatalError("p is out of bound")
        }
        // 不断去查询自己的父亲节点, 直到到达根节点
        // 根节点的特点: parent[p] == p
        var root = p
        while root != parent[root] {
            root = parent[root]
        }
        
        return root
    }
    
    // 查看元素p和元素q是否所属一个集合
    // O(h)复杂度, h为树的高度
    func isConnected(p:Int,q:Int) -> Bool {
        return find(p) == find(q)
    }
    
    // 合并元素p和元素q所属的集合
    // O(h)复杂度, h为树的高度
    func unionElements(p:Int,q:Int) {
        let qRoot = find(q)
        let pRoot = find(p)
        if qRoot == pRoot {
            return
        }
        // 根据两个元素所在树的rank不同判断合并方向
        // 将rank低的集合合并到rank高的集合上
        if(rank[pRoot] < rank[qRoot]){
            parent[pRoot] = qRoot;
        }else if(rank[qRoot] < rank[pRoot]){
            parent[qRoot] = pRoot;
        }else{ // rank[pRoot] == rank[qRoot]
            parent[pRoot] = qRoot;
            rank[qRoot] += 1;   // 此时, 我维护rank的值
        }
  
    }
 
}
