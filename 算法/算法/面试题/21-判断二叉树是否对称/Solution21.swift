//
//  Solution21.swift
//  算法
//
//  Created by 青青 on 2021/8/8.
/*
 判断二叉树是否对称
 
 乍一看无从下手，但用递归其实很好解决。

 根据题目的描述，镜像对称，就是左右两边相等，也就是左子树和右子树是相当的。
 注意这句话，左子树和右子相等，也就是说要递归的比较左子树和右子树。
 我们将根节点的左子树记做 left，右子树记做 right。比较 left 是否等于 right，不等的话直接返回就可以了。
 
 */

import Cocoa

class Solution21: NSObject {
    func isSymmetric(node: Node<String>?) -> Bool {
        if node == nil {
            return false
        }
        return dfs(left: node?.left, right: node?.right)
    }
    func dfs(left:Node<String>?, right: Node<String>?) -> Bool {
        if left == nil && right == nil {
            return true
        }
        if left == nil || right == nil {
            return false
        }
        if left?.e != right?.e {
            return false
        }
        
        //再递归的比较 左节点的左孩子 和 右节点的右孩子
        //以及比较  左节点的右孩子 和 右节点的左孩子
        return dfs(left: left?.right, right: right?.left) && dfs(left: left?.left, right: right?.right)
    }
    
}
