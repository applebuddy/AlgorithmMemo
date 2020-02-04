//
//  LinkedList2.swift
//  Structures
//
//  Created by MinKyeongTae on 2020/02/04.
//  Copyright © 2020 MinKyeongTae. All rights reserved.
//

// MARK: SinglyLinkedList with Insertion, print

/*
 import Foundation

 class Node {
 var value: Int
 var next: Node?
 init(_ value: Int, _ next: Node? = nil) {
     self.value = value
     self.next = next
 }
 }

 final class SinglyLinkedList {
 var head: Node?
 var tail: Node?

 init() {}

 func insertNode(_ nodeData: Int) {
     let node = Node(nodeData)
     if let tail = self.tail {
         tail.next = node
     } else {
         head = node
     }
     self.tail = node
 }

 func insertNodeAt(_ pos: Int, _ nodeData: Int) {
     let nodeToInsert = Node(nodeData)
     var pos = pos
     var head = self.head

     if pos == 0 {
         nodeToInsert.next = head
         self.head = nodeToInsert
         return
     }
     else if head == nil {
         head = nodeToInsert
         tail = nodeToInsert
         return
     }

     while pos-1 > 0, head?.next != nil {
         head = head?.next
         pos -= 1
     }

     let originNode = head?.next
     head?.next = nodeToInsert
     head = head?.next
     head?.next = originNode
 }

 func printNode() {
     var cur = head
     while cur != nil {
         print("\(cur!.value)", terminator: " ")
         cur = cur!.next
     }
     print()
 }
 }

 extension Node: CustomStringConvertible {
 var description: String {
     guard let next = self.next else {
         return "\(self.value)"
     }

     return "\(self.value) -> \(next.description)"
 }
 }

 let llist = SinglyLinkedList()
 llist.insertNode(1)
 llist.insertNode(3)
 llist.insertNode(5)
 llist.printNode()
 llist.insertNodeAt(0,10)
 llist.printNode()

 */
