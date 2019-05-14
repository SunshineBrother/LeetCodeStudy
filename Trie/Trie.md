## Trie


在计算机科学中，Trie，又称字典树、单词查找树或键树，是一种树形结构，是一种哈希树的变种。

典型应用是用于统计，排序和保存大量的字符串（但不仅限于字符串），所以经常被搜索引擎系统用于文本词频统计。它的优点是：利用字符串的公共前缀来减少查询时间，最大限度地减少无谓的字符串比较，查询效率比哈希树高。


Trie查询每个条目的时间复杂度和字典中一共有多少条目有关，时间复杂度为O(w)，w为查询单词的长度

![](https://github.com/SunshineBrother/LeetCodeStudy/blob/master/Trie/Trie1.png)

每个节点都有26个指向下个节点的指针
```
class Node{
    char c;
    Node next[26];
}
```


若是不考虑语言，不同的情景，每个节点都有若干指向下个节点的指针

```
class Node{
    char c;
    Map<char,Node>next;
}
```


![](https://github.com/SunshineBrother/LeetCodeStudy/blob/master/Trie/Trie2.png)

如上最右侧树，`pan`和`panda`都是一个单词，但是他们在一个子树上面，所以我们还要有一个`Bool`值来记录是否是一个完整的单词

```
Class Node{
    bool isWord;
    Map<char,Node>next;
}
```

**代码实现**

创建Node节点
```
class Node: NSObject {
    var isWord:Bool = false
    var next:[Character:Node] = Dictionary()
}
```

创建字典树类
```
class TrieMap: NSObject {
    private var root = Node() //节点
    private var size = 0      //存储的单词量
}
```

向trie中添加一个单词
```
//向trie中添加一个单词
func add(word:String) {
    var cur = root
    for item in word {
        //如果下个节点不包含，添加
        if !cur.next.keys.contains(item){
        let node = Node()
        cur.next[item] = node
    }
    //找到下一个节点
    cur = cur.next[item] ?? Node()
}

//如果已经存在这个单词了，不处理
//如果不存在这个单词，size++，isWord设置为true
    if !cur.isWord {
    cur.isWord = true
    size += 1   
    }
}
```

查询单词word是否在Trie中

```
func contains(word:String) -> Bool {
    var cur = root
    for item in word {
        //如果下个节点不包含
        if !cur.next.keys.contains(item){
            return false
        }
        //找到下一个节点
        cur = cur.next[item] ?? Node()
    }

    //即使已经word全部字符都在字典树中，我们也要看看最后一个isWord是否是一个true，对比`pan`和`panda`
    return cur.isWord
}
```


查询是否在Trie中有单词以prefix为前缀
```
// 查询是否在Trie中有单词以prefix为前缀
func isPrefix(word:String) -> Bool {
    var cur = root
    for item in word {
        //如果下个节点不包含
        if !cur.next.keys.contains(item){
        return false
        }
        //找到下一个节点
        cur = cur.next[item] ?? Node()
    }
    return true
}
```
















































































