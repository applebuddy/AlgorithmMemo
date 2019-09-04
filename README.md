
<br>
<br>

# 알고리즘 스터디 메모, 일기장

<br>
<br>

# 개요
- ✯ Swift, C++언어를 활용한 알고리즘 기능 & Tip을 정리해갑니다.

<br>
<br>

# 목차 

- **[C++](https://github.com/applebuddy/AlgorithmMemo/C++_알고리즘)**
- **[Swift](https://github.com/applebuddy/AlgorithmMemo/Swift_알고리즘)**

<br>
<br>
<br>

# C++_알고리즘


<br>
<br>
<br>

# Swift_알고리즘

<br>
<br>

## ✓ 배열 기능 메서드
### appendContentsOf()
 - 요소를 추가할 수 있다.(배열의 slice 요소 등)
 
<br>

### elementsEqual()
 - 요소를 비교한 결과를 반환한다.

<br>

### remove(at: )
 - 특정 위치(정수형 인덱스)의 요소를 삭제한다.

<br>

### removeSubrange<R>
 - 특정 영역의 요소를 삭제한다. 

~~~ swift 
// removeSubrange 사용 예시
// 0 ~ 3 인덱스 사이의 4개의 요소를 삭제
// ... ..< 등의 범위를 지정해서 사용할 수 있다. 
Arr.removeSubrange(0…3) 
~~~

<br>
<br>

## ✓ String 문자열 기능 메서드
### components(saparatedBy:)
 - 문자열을 특정 separator 기준으로 잘라서 배열로 만들어준다.

<br>
<br>

## ✓ 콘솔 출력 메서드
### print(“”, separator:, terminator:)
- 인자 옵션 기능
  - separator: String
    - 문자 출력 사이의 구분자 옵션
~~~ swift
print(“my”, “name”, “is”, “applebuddy”, separator: “ / ”)
//=> “my / name / is / applebuddy  ”
~~~

  - terminator: String, default = newline() // terminator 미정 시, 한줄 개행이 기본설정 상태
    - 문자 출력 후 처리 옵션
    - 기본적으로 terminator 값을 설정하지 않으면 문자 출력 후 개행 처리된다.

~~~ swift
// 개행 없이 출력 하기 위해선 terminator의 값을 "" 처리 해주면 된다.
print(“바보”, terminator: “”)
// => 한줄 개행 없이 “바보” 출력)
~~~

<br>
<br>

# ✓ 유용한 클로져 함수(고차함수)

### sorted()
- 정렬 메서드
- 두개의 인자값을 통해 비교함수를 재정의할 수도 있음.

~~~ swift 
ans.Sorted { (c1, c2) -> Bool in 
	// 재정의 부분, true를 리턴 시 두개의 값이 서로 스왑된다.
}
~~~

<br>
<br>

### reduce()
- 1개의 초기값 인자, 2개의 클로저 인자
- 초기값 인자를 기준으로 요소를 하나의 결과값으로 합쳐 하나의 최종 값을 도출한다. 

~~~ swift
// reduce() 사용 예시
arr.reduce(0) { $0 + $1 }
arr2.reduce(0,+)
~~~

<br>

### map()
- 1개의 클로저 인자, 각각의 요소 인자마다 특정 코드 적용을 시킨다.

~~~ swift 
// map() 사용예시
// * map, $ 인자값을 사용하여 간결하게 구현할 수 있다. 
// + sorted() 등 클로저 내 또다른 고차함수의 사용도 가능
func solution2(_ array: [Int], _ commands: [[Int]]) -> [Int] {
    return commands.map {
        Array(array[($0[0] - 1) ... ($0[1] - 1)]).sorted()[$0[2] - 1]
    }
}
~~~

<br>
<br>

## ✓ 자료구조 
### Queue 
- 스위프트 Queue의 사용
- FIFO(Fire In First Out) 방식

~~~ swift
struct Queue<T> { 
    private(set) var elements: Array<T> = []
    mutating func push(value: T) { elements.append(value) } // O(1)
    mutating func pop() -> T { return elements.removeFirst() } // O(`count`)
}
~~~

### Stack 
- 스위프트 Stack의 사용
- FILO(Fire In Last Out) 방식

~~~ swift
struct Stack<T> {
    public private(set) var items: Array<T> = []
    mutating func push(item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
    mutating func count() -> Int {
        return items.count
    }
    mutating func show() {
        println(items)
    }
}
~~~

