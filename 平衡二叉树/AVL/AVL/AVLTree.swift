//
//  AVLTree.swift
//  AVL
//
//  Created by yunna on 2019/5/27.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Cocoa

class Node: NSObject {
    var value:String = ""
    var leftNode = Node()
    var rightNode = Node()
    var height:Int = 0
    
    init(value:String) {
        self.value = value
    }
    override init() {
        super.init()
    }
    
}


class AVLTree: NSObject {

    private
    var rootNode:Node!
    
    // 获得节点node的高度
    func getHeight(node:Node?) -> Int {
        guard node == nil else {
            return 0
        }
        return node?.height ?? 0
    }
    // 获得节点node的平衡因子
    func getBalanceFactor(node:Node?) -> Int {
        guard node == nil else {
            return 0
        }
        
        let left = getHeight(node: node!.leftNode)
        let right = getHeight(node: node!.rightNode)
        return left - right
    }
    
    // 向二分搜索树中添加新的元素(key, value)
    func add(value:String) {
        rootNode = recursiveAdd(node: rootNode, value: value)
    }
    
    // 向以node为根的二分搜索树中插入元素value，递归算法
    // 返回插入新节点后二分搜索树的根
    func recursiveAdd(node:Node?,value:String) -> Node{
        if node == nil {
            return Node(value: value)
        }
        
        //二分搜索添加元素
        if value.compare(node!.value).rawValue < 0{
            node?.leftNode = recursiveAdd(node: node?.leftNode, value: value)
        }else if value.compare(node!.value).rawValue > 0{
            node?.rightNode = recursiveAdd(node: node?.rightNode,value: value)
        }else{
            node?.value = value
        }
        
       // 更新height
        node?.height = 1 + abs(getHeight(node: node?.leftNode) - getHeight(node: node?.rightNode))
        
        // 计算平衡因子
        let balanceFactor = getBalanceFactor(node: node)
        
        //平衡维护
        if (balanceFactor > 1 &&  getBalanceFactor(node: node?.leftNode) >= 0){
            return rightRotate(y: node!)
        }else if (balanceFactor < -1 && getBalanceFactor(node: node?.rightNode) <= 0){
            return leftRotate(y: node!)
        }else if (balanceFactor > 1 &&  getBalanceFactor(node: node?.leftNode) < 0){
            node!.leftNode = leftRotate(y: node!.leftNode)
            return rightRotate(y: node!)
        }else if (balanceFactor < -1 &&  getBalanceFactor(node: node?.leftNode) > 0){
            node?.rightNode = rightRotate(y: node!.rightNode);
            return leftRotate(y: node!);
        }
        
        return node!
    }
    // 对节点y进行向右旋转操作，返回旋转后新的根节点x
    //        y                              x
    //       / \                           /   \
    //      x   T4     向右旋转 (y)        z     y
    //     / \       - - - - - - - ->    / \   / \
    //    z   T3                       T1  T2 T3 T4
    //   / \
    // T1   T2
    
    func rightRotate(y:Node) -> Node {
        let x = y.leftNode
        let t3 = x.rightNode
        
        //向右旋转过程
        x.rightNode = y
        y.leftNode = t3
        
        //更新height
        y.height = 1 + abs(getHeight(node: y.leftNode) - getHeight(node: y.rightNode))
        x.height = 1 + abs(getHeight(node: x.leftNode) - getHeight(node: x.rightNode))
        return x
    }
    
    
    
    
    // 对节点y进行向左旋转操作，返回旋转后新的根节点x
    //    y                             x
    //  /  \                          /   \
    // T1   x      向左旋转 (y)       y     z
    //     / \   - - - - - - - ->   / \   / \
    //   T2  z                     T1 T2 T3 T4
    //      / \
    //     T3 T4
    
    func leftRotate(y:Node) -> Node {
        let x = y.rightNode
        let t2 = x.leftNode
        
        //向左旋转
        x.leftNode = y
        y.rightNode = t2
        
        //更新height
        y.height = 1 + abs(getHeight(node: y.leftNode) - getHeight(node: y.rightNode))
        x.height = 1 + abs(getHeight(node: x.leftNode) - getHeight(node: x.rightNode))
        
        return x
    }
    
    
    
    
    
}









