//
//  Queue.swift
//  Structures
//
//  Created by MinKyeongTae on 16/09/2019.
//  Copyright © 2019 MinKyeongTae. All rights reserved.
//

// MARK: - Queue

// MARK: FIFO방식의 Queue 프로토콜 구현

// Int, String, Double, Float 어떠한 타입으로 지정하던 Element라는 별칭으로서 사용되어질 수 있다.
// * associatedtype : 프로토콜을 정의할 때, 제네릭타입과 같이 일반화 시킨 타입을 지정할때 사용할 수 있다.
import Foundation

// MARK: - FIFO방식의 Queue

public protocol Queue {
    // Queue의 데이터타입 별칭을 Element로 지정합니다.
    associatedtype Element

    // 큐의 요소를 FIFO방식으로 추가합니다.
    mutating func push(_ element: Element) -> Bool

    // 큐의 요소를 FIFO방식으로 제거합니다.
    mutating func pop() -> Element?

    // 해당 큐가 비어있는지를 확인합니다.
    var isEmpty: Bool { get }

    // 해당 큐의 앞쪽에 요소가 존재하는지 확인합니다.
    var front: Element? { get }

    // 해당 큐의 뒷쪽에 요소가 존재하는지 확인합니다.
    var back: Element? { get }
}

// *학습 내용 출처 : https://the-brain-of-sic2.tistory.com/19
