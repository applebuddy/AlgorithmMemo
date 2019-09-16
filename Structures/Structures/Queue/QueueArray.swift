//
//  QueueArray.swift
//  Structures
//
//  Created by MinKyeongTae on 16/09/2019.
//  Copyright © 2019 MinKyeongTae. All rights reserved.
//

// MARK: - QueueArray

// MARK: Array를 사용한 Queue 구현

/// - push 시간 복잡도 : 평소 O(1) 최악 O(N) -> 배열 공간의 요소가 다 찼을때 배열공간 확장으로 O(N)의 복잡도 될 수 있음
/// - pop 시간 복잡도 : O(N) -> 배열 맨 앞의 요소 제거 후 전체 요소를 좌쉬프트 해야하기 때문이다.

import Foundation

public struct QueueArray<T>: Queue {
    private var elements = [T]()
    public mutating func push(_ element: T) -> Bool {
        elements.append(element)
        return true
    }

    public mutating func pop() -> T? {
        return elements.removeFirst()
    }

    public var isEmpty: Bool {
        return elements.isEmpty
    }

    public var front: T? {
        return elements[0]
    }

    public var back: T? {
        return elements[elements.count - 1]
    }
}
