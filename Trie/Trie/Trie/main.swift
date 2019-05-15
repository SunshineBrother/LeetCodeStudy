//
//  main.swift
//  Trie
//
//  Created by yunna on 2019/5/14.
//  Copyright © 2019年 yunna. All rights reserved.
//

import Foundation
 



let add = ["WordDictionary","addWord","addWord","addWord","search","search","search","search"]
let searchs = ["","bad","dad","mad","pad","bad",".ad","b.."]

let Map = leetCode211()
for item in add{
    Map.addWord(item)
}

for item in searchs{
    let res = Map.search(item)
    print(res)
}



