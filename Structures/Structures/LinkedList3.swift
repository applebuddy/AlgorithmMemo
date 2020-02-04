//
//  LinkedList3.swift
//  Structures
//
//  Created by MinKyeongTae on 2020/02/04.
//  Copyright © 2020 MinKyeongTae. All rights reserved.
//

// MARK: SinglyLinkedList with Generic and Insertion/Deletion/Print

/*
import Foundation

class Node<T> {
    var value: T
    var next: Node<T>?
    init(_ value: T, _ next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

final class SinglyLinkedList<T> {
    var head: Node<T>?
    var tail: Node<T>?

    init() {}

    func insertNode(_ nodeData: T) {
        let node = Node<T>(nodeData)
        if let tail = self.tail {
            tail.next = node
        } else {
            head = node
        }
        tail = node
    }

    func deleteNodeAt(_ pos: Int) {
        var pos = pos
        var head = self.head
        if pos == 0 {
            self.head = head?.next
            return
        }

        while pos - 1 > 0, head?.next != nil {
            head = head?.next
            pos -= 1
        }

        head?.next = head?.next?.next
    }

    func insertNodeAt(_ pos: Int, _ nodeData: T) {
        let nodeToInsert = Node<T>(nodeData)
        var pos = pos
        var head = self.head

        if pos == 0 {
            nodeToInsert.next = head
            self.head = nodeToInsert
            return
        } else if head == nil {
            head = nodeToInsert
            tail = nodeToInsert
            return
        }

        while pos - 1 > 0, head?.next != nil {
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
            return "\(value)"
        }

        return "\(value) -> \(next.description)"
    }
}

let llist = SinglyLinkedList<Int>()
llist.insertNode(1)
llist.insertNode(3)
llist.insertNode(5)
llist.printNode()
llist.insertNodeAt(0, 10)
llist.printNode()
llist.deleteNodeAt(9)
llist.printNode()

*/
