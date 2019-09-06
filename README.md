
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

## ✤  [공통](https://github.com/applebuddy/AlgorithmMemo/blob/master/README.md#공통_알고리즘)
## ✤  [Swift](https://github.com/applebuddy/AlgorithmMemo/blob/master/README.md#swift_알고리즘)
## ✤  [C++](https://github.com/applebuddy/AlgorithmMemo/blob/master/README.md#c_알고리즘)

<br>
<br>
<br>

# 공통_알고리즘

<br>
<br>

## ✓ 수학

<br>

### abs
- 절대값을 구해준다.
- Swift, C++ 동일 지원

<br>
<br>

## ✓ 기본 정렬 알고리즘

<br>

### 퀵정렬 알고리즘(sort())
- 분할정복 알고리즘, O(nlogn)의 복잡도를 가진다.
- swift, C++ 전부 퀵정렬 메서드를 지원한다.
  - 메서드 기본 기능은 오름차순 정렬이다.
  
- Swift 구현 예시 ▼
~~~ swift 
// 오름차순 정렬
prices.sorted()
~~~

<br>

- C++ 구현 예시 ▼
~~~ C++
// 오름차순 정렬
sort(prices.begin(), prices.end());

// 3번째 인자로 사용자정의 정렬 함수를 적용할 수 있다. (두개의 인자값, 하나의 Bool 리턴값 형태의 함수)
sort(prices.begin(), prices.end(), compare());

// 사용자 정의함수, compare 정의 예시)
bool compareName(string s, string s2) {
    for(int i=0; i<min(s.length(),s2.length()); i++) {
        if(s[i] < s2[i]) {
            return false;
        } else if(s[i] == s2[i]) {
            continue;
        } else {
            return true;
        }
    }
    
    if(s.length() > s2.length()) {
        return true;
    } else {
        return false;
    }
}
~~~


<br>


### 버블정렬 알고리즘 
- 양옆 값들을 차례로 비교해가며 정렬해가는 알고리즘

- Swift 구현 예시 ▼
~~~ swift 
// swift 예시
func countSwaps(a: [Int]) {
    var arr = a
    var cnt = 0
    for i in arr.indices {
        for j in 0 ..< arr.count - 1 {
            if arr[j] > arr[j + 1] { arr.swapAt(j, j + 1); cnt += 1 }
        }
    }
    print("Array is sorted in \(cnt) swaps.")
    print("First Element: \(arr[0])")
    print("Last Element: \(arr[arr.count - 1])", terminator: "")
}
~~~

<br>

- C++ 구현 예시 ▼
~~~ C++
// C++ 예시
void countSwaps(vector<int> a) {
    int cnt = 0;
    for(int i=0; i<a.size(); i++) {
        for(int j=0; j<a.size()-1; j++) {
            if(a[j]>a[j+1]) {
                int temp = a[j];
                a[j] = a[j+1];
                a[j+1] = temp;
                cnt++;
            }
        }
    }
    printf("Array is sorted in %d swaps.\n",cnt);
    printf("First Element: %d\n",a[0]);
    printf("Last Element: %d\n",a[a.size()-1]);
}
~~~

##

<br>
<br>
<br>

# C++_알고리즘

<br>
<br>

## ✓ 자주 사용되는 헤더(Header)

<br>

### <bits/stdc++.h>
- 알고리즘 간 사용될 수 있는 모든 기능을 사용할 수 있다.
- Visual Studio가 아닌 Xcode 등 일부 환경에서는 사용 불가능하다.

<br>
<br>

## ✓ 자료구조

<br>

### Array 배열
- 기본적으로 사용하는 컨네이너

~~~ C++
// 배열 초기화 방법 1)
array<int, 26> arr = {0,};
// 배열 초기화 방법 2)
int arr[26] = {0,};
~~~
- Array 초기화 방법 
  - fill_in
  - memset

### set 집합
- 집합구조, 중복요소가 들어가지 않는다.
~~~ C++
// Set 사용 방법 
    set<string> noteSet;
    // magazine 벡터요소에 중복문자가 있을시 중복문자는 단 하나씩만 들어간다.
    for(auto v : magazine) {
        magaSet.insert(v);
    }
~~~

### pair 
- 두개의 값을 가지며, 두개의 값의 타입은 다를 수 있다.
~~~ C++
// pair 사용 예)
pair<int,int> p;
printf("%d",p.first);
printf("%d",p.second);

// Vecter에 pair 넣는 방법 
vec.push_back(make_pair(mp.first, mp.second));
~~~

<br>

### vector
- 배열 외로 사용할 수 있는 자료구조, vector
- push_back(<Value>) 등 으로 값을 넣을 수 있다. 

~~~ C++
// vector 사용 예)
// * vector + pair의 사용 예 : 7개의 pair값을 갖는 벡터 정의 예시이다.
vector<pair<int,int>> chk = {{0,0}, {0,1}, {0,2}, {1,1}, {2,0}, {2,1}, {2,2}};
~~~

## ✓ 자주 사용되는 함수

<br>
<br>

### find()
- 특정 요소가 있는지 확인 후 해당 요소가 있는 주소를 반환한다.
- 요소가 없을 시 순회했는 자료구조의 맨 끝 주소(end())를 반환한다. 

~~~ C++ 
// find() 사용 예시)
for(auto s : m1) {
	// m2.end() : map자료구조, m2에 요소가 있다면 m2.end()는 반환하지 않는다
	// m2.end()는 m2의 끝 주소로 요소가 없음을 나타내는 것
	// Thus, 아래의 조건문은 요소가 있을 시 "Yes" 문자열을 반환하라는 코드가 된다. 
            if (m2.find(s) != m2.end()) {
                return "YES";
            }
        }
~~~

<br>

### insert()
- map 등의 자료구조에 요소를 넣는데 사용한다. 

~~~ C++
// insert() 사용 예시)
for(auto s : s2) {
        m2.insert(s);
    }
~~~

<br>

### c_str()
- 문자열을 출력 가능한 상태로 만들어 준다. 
- 문자열 데이터를 출력할때 사용한다. 
~~~ C++
// c_str() 사용 예시)
printf("%s",twoStrings("hi","world").c_str());
~~~

<br>
<br>
<br>

# Swift_알고리즘

<br>
<br>

## ✓ 배열 기능 메서드

<br>


### swap()
- 두개의 요소를 교환한다. 

~~~ swift
// swap() 사용 예시)
// j, j+1 인덱스의 요소를 교환한다.
arr.swapAt(j, j+1) 
~~~

<br>

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
// removeSubrange 사용 예시)
// 0 ~ 3 인덱스 사이의 4개의 요소를 삭제
// ... ..< 등의 범위를 지정해서 사용할 수 있다. 
Arr.removeSubrange(0…3) 

// removeSubrange 사용 예시 2)
func rotLeft(a: [Int], d: Int) -> [Int] {
    var a1 = a
    let rot = d % a.count
    a1.removeSubrange(0...rot-1) // removeSubrange의 사용
    for i in 0 ..< rot {
        a1.append(a[i])
    }
    return a1
}

~~~

<br>
<br>

## ✓ String 문자열 기능 메서드
### components(saparatedBy:)
 - 문자열을 특정 separator 기준으로 잘라서 배열로 만들어준다.

<br>

### index(, offsetBy:)
- 문자열 인덱스 접근에 사용한다.
~~~ swift 
// index(, offsetBy:) 사용 예시
for i in 0..<a.count {
        let idx = a.index(a.startIndex, offsetBy: i)
        let index = Int(a[idx].unicodeScalars.first!.value - Unicode.Scalar("a").value)
        arr[index] += 1
}
~~~

### unicodeScalars (+ Unicode.Scalar)
- 문자열 요소인 문자(Character)의 아스키 값을 얻어오고 처리하는데 사용할 수 있다. 
~~~ swift 
// unicodeScalars, Unicode.Scalar 사용 예시
let index = Int(a[idx].unicodeScalars.first!.value - Unicode.Scalar("a").value)
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

## ✓ 유용한 클로져 함수(고차함수)

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

