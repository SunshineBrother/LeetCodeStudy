//
//  BTS.swift
//  算法
//
//  Created by 青青 on 2021/8/7.
//

import Cocoa

class BTS: NSObject {
    //根节点
    var root: Node<Int>?
    
    // 添加节点
    func add(e: Int) {
        if root == nil {
            root = Node(e: e, right: nil)
        } else {
            addNode(e: e, node: root)
        }
    }
    
    // 前序遍历以node为根的二分搜索树, 递归算法
    func preOrder(node: Node<Int>?) {
        if node == nil {
            return
        }
        print(node?.e as Any)
        preOrder(node: node?.left)
        preOrder(node: node?.right)
    }
    //
    func inOrder(node: Node<Int>?) {
        if node == nil {
            return
        }
        
        inOrder(node: node?.left)
        print(node?.e as Any)
        inOrder(node: node?.right)
    }
    
    //
    func postOrder(node: Node<Int>?) {
        if node == nil {
            return
        }
        
        postOrder(node: node?.left)
        postOrder(node: node?.right)
        print(node?.e as Any)
    }
    
}

extension BTS {
    // 向以node为根的二分搜索树中插入元素e，递归算法
    func addNode(e: Int, node: Node<Int>?) {
        guard let currentNode = node else {
            return
        }
        if currentNode.e == e {
            return
        } else if e < currentNode.e && currentNode.left == nil {
            // 添加到左子树
            currentNode.left = Node(e: e)
            return
        } else if e > currentNode.e && currentNode.right == nil {
            // 添加到右子树
            currentNode.right = Node(e: e)
            return
        }
        
        //递归调用
        if e < currentNode.e {
            addNode(e: e, node: currentNode.left)
        } else {
            addNode(e: e, node: currentNode.right)
        }
    }
    
    
}
