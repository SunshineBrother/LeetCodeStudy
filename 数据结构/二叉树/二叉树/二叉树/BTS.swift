//
//  BTS.swift
//  二叉树
//
//  Created by yunna on 2019/4/1.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Cocoa

class BTS: NSObject {
    var size = 0
    var root:Node!
    
    //判断是否为空
    func isEmpty() -> Bool{
        return size == 0;
    }
    //添加元素
    func add(E:Int) {
        if root == nil {
            size += 1
            root = Node(E: E)
        }else{
            addNode(E: E, node: root)
        }
    }
    //查看二分搜索树中是否包含某个元素
    func contain(E:Int) -> Bool {
        return containNode(E: E, node: root)
    }
    
    //二分搜索树的前序遍历
    func preOrder() {
        preOrder(node: root)
    }
    // 二分搜索树的中序遍历
    func inOrder() {
        inOrder(node: root)
    }
    // 二分搜索树的后序遍历
    func postOrder() {
        postOrder(node: root)
    }
    // 寻找二分搜索树的最小元素
    func minimum() -> Int {
        if size == 0 {
            return 10086
        }
    
        return minimum(node: root).E
    }
    // 从二分搜索树中删除最小值所在节点, 返回最小值
    func removeMin() -> Int {
        if size == 0 {
            return 10086
        }
        root = removeMin(node: root)
        return minimum()
    }
    
    // 寻找二分搜索树的最大元素
    func maximum() -> Int {
        if size == 0 {
            return 10086
        }
        return maximum(node: root)
    }
    // 从二分搜索树中删除最大值所在节点, 返回最大值
    func removeMax() -> Int {
        if size == 0 {
            return 10086
        }
        root = removeMax(node: root)
        return maximum()
    }
    // 删除为E的节点
    func remove(E:Int) ->Node{
        root = remove(E: E, node: root)
        return root
    }
    
}

extension BTS{
    // 向以node为根的二分搜索树中插入元素e，递归算法
    private
    func addNode(E:Int,node:Node) {
        //递归用法，先判断结束语句
        if node.E == E {
            return
        }else if((E < node.E) && (node.left == nil)){
            //遍历到最后，添加左叶子
            node.left = Node(E: E)
            size += 1
            return
        }else if((E > node.E) && (node.right == nil)){
            //遍历到最后，添加右叶子
            node.right = Node(E: E)
            size += 1
            return
        }
        
        //递归调用
        if E < node.E {
            addNode(E: E, node: node.left ?? Node())
        }else{
            addNode(E: E, node: node.right ?? Node())
        }
        
    }
    // 看以node为根的二分搜索树中是否包含元素e, 递归算法
    private
    func containNode(E:Int,node:Node?) -> Bool {
        if node == nil {
            return false
        }
        
        if node?.E == E{
            return true
        }else if (node?.E)! > E {
            //左
            return containNode(E: E, node: node?.left )
        }else{
            //右
            return containNode(E: E, node: node?.right)
        }
        
    }
    
    // 前序遍历以node为根的二分搜索树, 递归算法
    private
    func preOrder(node:Node?) {
        //结束条件
        if node == nil {
            return
        }
        print(node?.E ?? "nil")
        preOrder(node: node?.left)
        preOrder(node: node?.right)
    }
    // 中序遍历以node为根的二分搜索树, 递归算法
    private
    func inOrder(node:Node?) {
        //结束条件
        if node == nil {
            return
        }
        inOrder(node: node?.left)
        print(node?.E ?? "nil")
        inOrder(node: node?.right)
        
    }
    // 后序遍历以node为根的二分搜索树, 递归算法
    private
    func postOrder(node:Node?) {
        //结束条件
        if node == nil {
            return
        }
        inOrder(node: node?.left)
        inOrder(node: node?.right)
        print(node?.E ?? "nil")
    }
    //查找最小数据 递归算法
    private
    func minimum(node:Node?) -> Node{
        if node?.left == nil {
            return node ?? Node()
        }
    
        return minimum(node: node?.left)
    }
    
    // 删除掉以node为根的二分搜索树中的最小节点
    // 返回删除节点后新的二分搜索树的根
    private
    func removeMin(node:Node?) -> Node? {
        if node?.left == nil {
            size -= 1
            let rightNode = node?.right
            node?.right = nil
            return rightNode
        }
        node?.left = removeMin(node: node?.left)
        return node
    }
    
    //查找最大数据 递归算法
    private
    func maximum(node:Node?) -> Int {
        if node?.right == nil {
            return node?.E ?? 10086
        }
        return maximum(node: node?.right)
    }
    // 删除掉以node为根的二分搜索树中的最大节点
    // 返回删除节点后新的二分搜索树的根
    private
    func removeMax(node:Node?) -> Node? {
        if node?.right == nil {
            size -= 1
            let leftNode = node?.left
            node?.left = nil
            return leftNode
        }
        node?.right = removeMax(node: node?.right)
        return node
    }
    // 删除掉以node为根的二分搜索树中值为e的节点, 递归算法
    // 返回删除节点后新的二分搜索树的根
    private
    func remove(E:Int,node:Node?) -> Node? {
        if node == nil {
            return nil
        }
        if E < (node?.E)! {
            node?.left = remove(E: E, node: node?.left)
            return node
        }else if E > (node?.E)! {
            node?.right = remove(E: E, node: node?.right)
            return node
        }else{
            //找到了
            // 待删除节点左子树为空的情况
            if node?.left == nil{
                let rightNode = node?.right
                node?.right = nil
                size -= 1
                return rightNode
            }
            // 待删除节点右子树为空的情况
            if node?.right == nil{
                let leftNode = node?.left
                node?.left = nil
                size -= 1
                return leftNode
            }
            // 待删除节点左右子树均不为空的情况
            
            // 找到比待删除节点大的最小节点, 即待删除节点右子树的最小节点
            // 用这个节点顶替待删除节点的位置
            let successor = minimum(node: node?.right)
            successor.right = removeMin(node: node?.right)
            successor.left = node?.left
            node?.right = nil
            node?.left = nil
            
            return successor
        }
    }
}



//节点
class Node: NSObject {
    var E:Int = 0
    var left:Node?
    var right:Node?
    override init() {
        super.init()
    }
    init(E:Int) {
        self.E = E
        self.left = nil
        self.right = nil
    }
   
}





