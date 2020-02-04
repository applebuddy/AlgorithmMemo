//
//  LinkedList.swift
//  Structures
//
//  Created by MinKyeongTae on 2020/02/03.
//  Copyright © 2020 MinKyeongTae. All rights reserved.
//

// MARK: LinkedList Structure Implementation by Swift

// MARK: - 기본 연결리스트 구조 구현 복습

// Basic LinkedList Structure
/*
import Foundation

class LLNode<T> {
    var value: Int
    var next: LLNode?
    
    init(_ value: Int, _ next: LLNode? = nil) {
        self.value = value
        self.next = next
    }
}

extension LLNode: CustomStringConvertible {
    var description: String {
        guard let next = self.next else {
            return "\(self.value)"
        }
        
        return "\(self.value) -> \(next.description)"
    }
}

var node5 = LLNode<Int>(5)
var node4 = LLNode<Int>(4, node5)
var node3 = LLNode<Int>(3, node4)
var node2 = LLNode<Int>(2, node3)
var node1 = LLNode<Int>(1, node2)

print(node1.description)
*/

// MARK: - 기본 연결리스트 구조 구현

/*
 import Foundation

 class Node<T> {
 var value: Int
 var next: Node?
 init(_ value: Int, _ next: Node? = nil) {
     self.value = value
     self.next = next
 }
 }

 extension Node: CustomStringConvertible {
 var description: String {
     guard let next = self.next else {
         return "\(value)"
     }

     return "\(value) -> \(next.description) "
 }
 }

 var node = Node<Int>(1)
 var node2 = Node<Int>(2)
 var node3 = Node<Int>(3)
 node.next = node2
 node2.next = node3
 print(node.description)
 */
