//
//  DoubleStack.swift
//  Structures
//
//  Created by MinKyeongTae on 16/09/2019.
//  Copyright © 2019 MinKyeongTae. All rights reserved.
//

// MARK: - DoubleStack, 더블스택

// MARK: 두개의 스택을 사용하여 enQueue, deQueue의 시간복잡도 O(1)을 이룰 수 있다.

// ✓ 확인해야 할 사항 : deQueue(pop) 실행 간 rightStack을 reversed() 실행할 경우 시간복잡도는 O(N)이 되는 것 아닌가??

import Foundation

public struct QueueDoubleStack<T>: Queue {
    // Enqueue 역할을 할 좌측 스택
    private var leftStack = [T]()

    // Dequeue 역할을 할 우측 스택
    private var rightStack = [T]()

    public init() {}

    public mutating func push(_ element: T) -> Bool {
        rightStack.append(element)
        return true
    }

    // 시간복잡도 최선 O(1) ~ 최악 O(N)
    public mutating func pop() -> T? {
        if leftStack.isEmpty {
            // 배열의 reversed() 복잡도는 N이다.
            leftStack = rightStack.reversed()
            rightStack.removeAll()
        }
        return leftStack.popLast()
    }

    public var front: T? {
        return !leftStack.isEmpty ? leftStack.last : rightStack.first
    }

    public var back: T? {
        return !rightStack.isEmpty ? rightStack.last : leftStack.first
    }

    public var isEmpty: Bool {
        return leftStack.isEmpty && rightStack.isEmpty
    }
}

// *학습 내용 출처 : https://the-brain-of-sic2.tistory.com/22
