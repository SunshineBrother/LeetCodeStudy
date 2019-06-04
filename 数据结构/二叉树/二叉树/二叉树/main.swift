//
//  main.swift
//  二叉树
//
//  Created by yunna on 2019/4/1.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Foundation

/////////////////
//      5      //
//    /   \    //
//   3    6    //
//  / \    \   //
// 2  4     8  //
/////////////////

let arr = [5,3,6,4,2,8]
let bts = BTS()
for item in arr{
    bts.add(E: item)
}

bts.preOrder()

