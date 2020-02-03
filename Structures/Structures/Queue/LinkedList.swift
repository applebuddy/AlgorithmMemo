//
//  LinkedList.swift
//  Structures
//
//  Created by MinKyeongTae on 2020/02/03.
//  Copyright © 2020 MinKyeongTae. All rights reserved.
//

// MARK: LinkedList
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
