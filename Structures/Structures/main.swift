//
//  main.swift
//  Structures
//
//  Created by MinKyeongTae on 16/09/2019.
//  Copyright © 2019 MinKyeongTae. All rights reserved.
//

import Foundation

print("Hello, World!")

// MARK: - Queue VS DoubleStack

// MARK: QueueArray

var queueArray = QueueArray<Int>()
queueArray.push(1)
queueArray.push(2)
queueArray.push(3)
print(queueArray)
queueArray.pop()
print(queueArray)
queueArray.pop()
print(queueArray)
queueArray.pop()
print(queueArray)

// MARK: DoubleStack

var doubleStack = QueueDoubleStack<Int>()
doubleStack.push(1)
doubleStack.push(2)
doubleStack.push(3)
print(doubleStack)
doubleStack.pop()
print(doubleStack)
doubleStack.pop()
print(doubleStack)
doubleStack.pop()
print(doubleStack)
