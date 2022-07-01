//
//  Node.swift
//  算法
//
//  Created by 青青 on 2021/8/7.
//

import Foundation

class Node<E>: NSObject {
    var key:String = ""
    var e: E!
    var left:Node?
    var right:Node?
    override init() {
        super.init()
    }
    init(e: E) {
        super.init()
        self.e = e
    }
    init(e: E, left: Node?, right: Node?) {
        super.init()
        self.e = e
        self.left = left
        self.right = right
    }
    init(e: E, right: Node?) {
        super.init()
        self.e = e
        self.right = right
    }
    
    
    init(key: String, e: E) {
        super.init()
        self.key = key
        self.e = e
    }
    
    
}
