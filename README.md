# Swift 알고리즘 스터디
## Swift 알고리즘 기능 팁을 정리해갑니다.

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

## ✓ 정렬기능 메서드 
## sorted() : 두개의 인자값을 통해 비교함수를 재정의할 수도 있음.

~~~ swift 
ans.Sorted { (c1, c2) -> Bool in 
	// 재정의 부분, true를 리턴 시 두개의 값이 서로 스왑된다.
}
~~~

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

## ✓ 기타 유용한 고차함수
### reduce() : 1개의 초기값 인자, 2개의 클로저 인자

~~~ swift
// reduce 사용 예시
arr.reduce(0) { $0 + $1 }
arr2.reduce(0,+)
~~~

<br>

### map() : 1개의 클로저 인자, 각각의 요소 인자마다 특정 코드 적용을 시킨다.

<br>
<br>

## ✓ 자료구조 
### Queue 
- 스위프트 Queue의 사용

~~~ swift
public struct Queue<T> { 
    public private(set) var elements: Array<T> = []
    public mutating func push(value: T) { elements.append(value) } // O(1)
    public mutating func pop() -> T { return elements.removeFirst() } // O(`count`)
}
~~~
