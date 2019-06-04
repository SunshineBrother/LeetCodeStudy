//
//  SegmentTree.swift
//  线段树
//
//  Created by yunna on 2019/5/9.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Cocoa

class SegmentTree: NSObject {

    private var data:[Int] = Array() //外界传过来的数组
    private var tree:[Int] = Array() //线段树
    private let merger = Merger() //区间合并方法
    
    // 返回完全二叉树的数组表示中，一个索引所表示的元素的左孩子节点的索引
    func leftChild(index:Int) -> Int {
        return index * 2 + 1
    }
    //返回完全二叉树的数组表示中，一个索引所表示的元素的右孩子节点的索引
    func rightChild(index:Int) -> Int {
        return index * 2 + 2
    }
    
    //创建tree
    func SegmentTree(data:[Int]) {
        self.data = data
        for _ in 0..<4*data.count {
            tree.append(0)
        }
        buildSegmentTree(treeIndex: 0, l: 0, R: data.count - 1)
    }
    
    // 在treeIndex的位置创建表示区间[l...r]的线段树
    private
    func buildSegmentTree(treeIndex:Int,l:Int,R:Int) {
        if l == R {
            tree[treeIndex] = data[l]
            return
        }
        // treeIndex的节点分为[l...mid]和[mid+1...r]两部分
        let leftTreeIndex = leftChild(index: treeIndex)
        let rightTreeIndex = rightChild(index: treeIndex)
        let mid = (l + R) / 2
        //左侧递归
        buildSegmentTree(treeIndex: leftTreeIndex
            , l: l, R: mid)
        //右侧递归
        buildSegmentTree(treeIndex: rightTreeIndex, l: mid+1, R: R)
        tree[treeIndex] = merger.merger(a: tree[leftTreeIndex], b: tree[rightTreeIndex])
    }
 
     // 返回区间[queryL, queryR]的值
    func query(queryL:Int,queryR:Int) -> Int {
        if queryL < 0 ||
            queryR >= data.count ||
            queryR < 0 ||
            queryR >= data.count ||
            queryR < queryL{
            fatalError("Index is illegal")
        }
        
        return recursiveQuery(treeIndex: 0, L: 0, R: data.count-1, queryL: queryL, queryR: queryR)
    }
    // 在以treeIndex为根的线段树中[l...r]的范围里，搜索区间[queryL...queryR]的值
    private
    func recursiveQuery(treeIndex:Int,L:Int,R:Int,queryL:Int,queryR:Int) -> Int {
        if  L == queryL &&
            R == queryR{
            return tree[treeIndex]
        }
        // treeIndex的节点分为[l...mid]和[mid+1...r]两部分
        let leftTreeIndex = leftChild(index: treeIndex)
        let rightTreeIndex = rightChild(index: treeIndex)
        let mid = (L + R) / 2
        
        //确定[queryL...queryR]的区间位置
        if queryL >= mid + 1 {
            let result = recursiveQuery(treeIndex: rightTreeIndex, L: mid + 1, R: R, queryL: queryL, queryR: queryR)
            return result
        }else if queryR <= mid{
            let result = recursiveQuery(treeIndex: leftTreeIndex, L: L, R: mid, queryL: queryL, queryR: queryR)
            return result
        }
        
        //求和操作
        let leftResult = recursiveQuery(treeIndex: leftTreeIndex, L: L, R: mid, queryL: queryL
            , queryR: mid)
        let rightResult = recursiveQuery(treeIndex: rightTreeIndex, L: mid + 1, R: R, queryL: mid + 1, queryR: queryR)
        
        return merger.merger(a: leftResult, b: rightResult)
    }
    
    //更新操作
    func update(index:Int,E:Int){
        if index < 0 &&
            index >= data.count{
            fatalError("Index is illegal")
        }
        
        data[index] = E
        recursiveUpdate(treeIndex: 0, l: 0, r: data.count-1, E: E)
    }
    // 在以treeIndex为根的线段树中更新index的值为e
    private
    func recursiveUpdate(treeIndex:Int,l:Int,r:Int,E:Int)  {
        if r == l {
            tree[treeIndex] = E;
            return
        }
        
        // treeIndex的节点分为[l...mid]和[mid+1...r]两部分
        let leftTreeIndex = leftChild(index: treeIndex)
        let rightTreeIndex = rightChild(index: treeIndex)
        let mid = (l + r) / 2
        if treeIndex >= mid + 1 {
            recursiveUpdate(treeIndex: rightTreeIndex, l: mid+1, r: r, E: E)
        }else{
            recursiveUpdate(treeIndex: leftTreeIndex, l: l, r: mid, E: E)
        }
        
        tree[treeIndex] = merger.merger(a: tree[leftTreeIndex], b: tree[rightTreeIndex])
    }
    

}




class Merger: NSObject {
     func merger(a:Int,b:Int) -> Int{
        return a + b
    }
}




























