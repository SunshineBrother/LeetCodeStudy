# LeetCodeStudy

数据结构和算法的学习


## 工具
- [如何直观形象地树状打印一棵二叉树](https://github.com/SunshineBrother/LeetCodeStudy/blob/master/数据结构/打印树/如何直观形象地树状打印一棵二叉树？.md)

## 数据结构

- [1、算法效率的度量](https://github.com/SunshineBrother/LeetCodeStudy/blob/master/算法效率的度量.md)
- [2、栈和队列](https://github.com/SunshineBrother/LeetCodeStudy/blob/master/数据结构/栈和队列/栈和队列.md)
- [3、链表](https://github.com/SunshineBrother/LeetCodeStudy/blob/master/数据结构/链表/链表.md)
- [4、递归](https://github.com/SunshineBrother/LeetCodeStudy/blob/master/数据结构/递归/递归.md)
- [5、二叉树](https://github.com/SunshineBrother/LeetCodeStudy/blob/master/数据结构/二叉树/二叉树.md)
- [6、集合和映射](https://github.com/SunshineBrother/LeetCodeStudy/blob/master/数据结构/集合和映射/集合和映射.md)
- [7、优先队列](https://github.com/SunshineBrother/LeetCodeStudy/blob/master/数据结构/优先队列/优先队列.md)
- [8、线段树](https://github.com/SunshineBrother/LeetCodeStudy/blob/master/数据结构/线段树/线段树.md)
- [9、Trie](https://github.com/SunshineBrother/LeetCodeStudy/blob/master/数据结构/Trie/Trie.md)
- [10、并查集](https://github.com/SunshineBrother/LeetCodeStudy/blob/master/数据结构/并查集/并查集.md)
- [11、平衡二叉树](https://github.com/SunshineBrother/LeetCodeStudy/blob/master/数据结构/平衡二叉树/平衡二叉树.md)
- [12、哈希表](https://github.com/SunshineBrother/LeetCodeStudy/blob/master/数据结构/哈希表/哈希表.md)




***********************************************

## 算法

在开始之前我们先来写一个帮助测试的函数
```
// 生成有n个元素的随机数组,每个元素的随机范围为[rangeL, rangeR]

func generateRandomArray(count:Int,rangL:Int,rangR:Int) -> Array<Int> {

    if rangR <= rangL{
        fatalError("取值范围不准确")
    }

    var arr:[Int] = Array()
    for _ in 0..<count {
        let arc = rangR - rangL + 1
        let item:Int = Int(arc4random()) % arc + rangL
        arr.append(item)
    }

    return arr
}



// 判断arr数组是否有序
func isSorted(arr:[Int]) -> Bool {
    for i in 0..<arr.count-1 {
        if arr[i] > arr[i+1] {
            return false
        }
    }
    return true
}
```


![](https://github.com/SunshineBrother/LeetCodeStudy/blob/master/sort.png)

排序算法优越评价有三个指标，执行效率、内存消耗、稳定性，一般来讲，在分析效率时会从几个方面来衡量：
- 时间复杂度。会从最好、最坏和平均情况三个来分析；
- 时间复杂度的系数、常数 、低阶。在对同一阶时间复杂度的排序算法性能对比的时候，我们就要把系数、常数、低阶也考虑进来。
- 比较次数和交换（或移动）次数。



- [1、冒泡排序](https://github.com/SunshineBrother/LeetCodeStudy/blob/master/算法/冒泡排序/冒泡排序.md)
- [2、选择排序](https://github.com/SunshineBrother/LeetCodeStudy/blob/master/算法/选择排序/选择排序.md)
- [3、插入排序](https://github.com/SunshineBrother/LeetCodeStudy/blob/master/算法/插入排序/插入排序.md)
- [4、希尔排序](https://github.com/SunshineBrother/LeetCodeStudy/blob/master/算法/希尔排序/希尔排序.md)
- [5、归并排序](https://github.com/SunshineBrother/LeetCodeStudy/blob/master/算法/归并排序/归并排序.md)
- [6、快速排序](https://github.com/SunshineBrother/LeetCodeStudy/blob/master/算法/快速排序/快速排序.md)
- [7、堆排序](https://github.com/SunshineBrother/LeetCodeStudy/tree/master/算法/堆排序)
- [8、计数排序](https://github.com/SunshineBrother/LeetCodeStudy/blob/master/算法/计数排序/计数排序.md)
- [9、桶排序](https://github.com/SunshineBrother/LeetCodeStudy/blob/master/算法/桶排序/桶排序.md)
- [10、基数排序](https://github.com/SunshineBrother/LeetCodeStudy/blob/master/算法/基数排序/基数排序.md)




排序算法参考：

[十大经典排序算法](https://www.runoob.com/w3cnote/ten-sorting-algorithm.html)

[五分钟学算法](https://mp.weixin.qq.com/s/vn3KiV-ez79FmbZ36SX9lg)





## 数据结构和算法必知必会的50个代码实现

### 数组
***************************************
- 1、实现一个支持动态扩容的数组
- 2、实现一个大小固定的有序数组，支持动态增删改操作
- 3、实现两个有序数组合并为一个有序数组


### 链表

***************************************

- 1、实现单链表、循环链表、双向链表，支持增删操作
- 2、实现单链表反转
- 3、实现两个有序的链表合并为一个有序链表
- 4、实现求链表的中间结点


### 栈

***************************************
- 1、用数组实现一个顺序栈
- 2、用链表实现一个链式栈
- 3、编程模拟实现一个浏览器的前进、后退功能


### 队列

***************************************
- 1、用数组实现一个顺序队列
- 2、用链表实现一个链式队列
- 3、实现一个循环队列

### 递归

***************************************
- 1、编程实现斐波那契数列求值f(n)=f(n-1)+f(n-2)
- 2、编程实现求阶乘n!
- 3、编程实现一组数据集合的全排列

### 排序

***************************************
- 1、实现归并排序、快速排序、插入排序、冒泡排序、选择排序
- 2、编程实现O(n)时间复杂度内找到一组数据的第K大元素


### 二分查找

***************************************

- 1、实现一个有序数组的二分查找算法
- 2、实现模糊二分查找算法（比如大于等于给定值的第一个元素）


### 散列表

***************************************
- 1、实现一个基于链表法解决冲突问题的散列表
- 2、实现一个LRU缓存淘汰算法


### 字符串

***************************************

- 1、实现一个字符集，只包含a～z这26个英文字母的Trie树
- 2、实现朴素的字符串匹配算法


### 二叉树

***************************************
- 1、实现一个二叉查找树，并且支持插入、删除、查找操作
- 2、实现查找二叉查找树中某个节点的后继、前驱节点
- 3、实现二叉树前、中、后序以及按层遍历



### 堆

***************************************
- 1、实现一个小顶堆、大顶堆、优先级队列
- 2、实现堆排序
- 3、利用优先级队列合并K个有序数组
- 4、求一组动态数据集合的最大Top K

### 图

***************************************
- 1、实现有向图、无向图、有权图、无权图的邻接矩阵和邻接表表示方法
- 2、实现图的深度优先搜索、广度优先搜索
- 3、实现Dijkstra算法、A*算法
- 4、实现拓扑排序的Kahn算法、DFS算法



### 回溯

***************************************
- 1、利用回溯算法求解八皇后问题
- 2、利用回溯算法求解0-1背包问题



### 分治

***************************************
- 1、利用分治算法求一组数据的逆序对个数


### 动态规划

***************************************
- 1、0-1背包问题
- 2、最小路径和
- 3、编程实现莱文斯坦最短编辑距离
- 4、编程实现查找两个字符串的最长公共子序列
- 5、编程实现一个数据序列的最长递增子序列
