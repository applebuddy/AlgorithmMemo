//
//  BinaryTree.swift
//  Structures
//
//  Created by MinKyeongTae on 2020/02/03.
//  Copyright © 2020 MinKyeongTae. All rights reserved.
//

// MARK: BinaryTree

// MARK: - BinaryTree 기본구조 Swift 구현
/*
import Foundation

class BinaryTreeNode<T> {
    var value: T
    var leftChild: BinaryTreeNode?
    var rightChild: BinaryTreeNode?
    init(_ value: T, _ leftChild: BinaryTreeNode? = nil, _ rightChild: BinaryTreeNode? = nil) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
    
    func traverseInOrder(_ visit: (T) -> ()) {
        leftChild?.traverseInOrder(visit)
        visit(self.value)
        rightChild?.traverseInOrder(visit)
    }
    
    func traversePreOrder(_ visit: (T) -> ()) {
        visit(self.value)
        leftChild?.traversePreOrder(visit)
        rightChild?.traversePreOrder(visit)
    }
    
    func traversePostOrder(_ visit: (T) -> ()) {
        leftChild?.traversePostOrder(visit)
        rightChild?.traversePostOrder(visit)
        visit(self.value)
    }
}

let five = BinaryTreeNode<Int>(5)
let four = BinaryTreeNode<Int>(4)
let three = BinaryTreeNode<Int>(3)
let two = BinaryTreeNode<Int>(2, five, nil)
let one = BinaryTreeNode<Int>(1, three, four)
let rootTree = BinaryTreeNode<Int>(0, one, two)


// 3 1 4 0 5 2
print("traverseInOrder Rusult ▼")
rootTree.traverseInOrder { print($0, terminator: "->") }
print()

// 0 1 3 4 2 5
print("traversePreOrder Rusult ▼")
rootTree.traversePreOrder { print($0, terminator: "->") }
print()

// 3 4 1 5 2 0
print("traversePostOrder Rusult ▼")
rootTree.traversePostOrder { print($0, terminator: "->")}

*/

