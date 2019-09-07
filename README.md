
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

### abs()
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
// 내림차순 정렬 {최댓값....최솟값}
sort(prices.begin(), prices.end());

// 내림차순 정렬 (위와 동일)
sort(prices.begin(), prices.end(), greater<int>());

// 오름차순 정렬 {최솟값....최댓값}
sort(prices.begin(), prices.end(), less<int>());

// 3번째 인자로 사용자정의 정렬 함수를 적용할 수 있다. (두개의 인자값, 하나의 Bool 리턴값 형태의 함수)
sort(prices.begin(), prices.end(), compare());
~~~

<br>

- 정렬 방식을 재정의 하여 사용할 수 도 있다. 
~~~ C++
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

~~~ C++
// 익명함수로 바로 정렬 재정의 방식 적용하는 방법
sort(contests.begin(), contests.end(),
         [](vector<int> con1, vector<int> con2) {
             return con1[0] > con2[0];
         });
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

<br>

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

<br>

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

### tuple
- 세개 이상의 값을 가지는 자료구조

~~~ C++
// tuple 사용 예)
queue<tuple<int,int,int>> q;

// tuple 값 읽어오기 예시)
// get<'tuple인덱스'>
int nx=get<2>(q.front());
        int ny=get<1>(q.front());
        int nz=get<0>(q.front());

// tuple 값 쓰기 예시)
// make_tuple(<값1>,<값2>,<값3>) 형식으로 사용 가능
q.push(make_tuple(mz,ny,nx));	
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

<br>

### Priority Queue
- 우선순위 큐
- 기존 큐와 달리 항시 큐의 top은 최소 or 최댓값이 위치하게 된다. 

~~~ C++
// 우선순위 큐 사용 예시 
// greter<int> 설정 시 항상 q.top()에는 queue 내 최솟값이 위치하게 된다.
priority_queue<int, vector<int>, greater<int>> q;
    
    for(auto v : element)
        q.push(v);
    
    while(q.top()<K){
        if(q.size()==1) return -1;
        
	// 큐 내의 가장 작은 값
        int first = q.top(); 
        q.pop();
	
	// 큐 내에 두번째로 작은 값(가장 작은 값 pop() 이후 남은 값 중 가장 작은 값)
        int second = q.top(); 
        q.pop();
    }
~~~

<br>
<br>

## ✓ 반복자로 주소 접근하기, iterator
- 반복자(iterator) 사용방법
  - <타입>::iterator `반복자이름`;
- 반복자 활용 예시 ▼
~~~ C++
// 반복자(iterator) 정의
vector<vector<int>>::iterator iter;

// iter 변수의 초기값이 vector contest의 첫 주소값을 가리키게, 주소값 끝까지 순회한다. 
    for(iter=contests.begin(); iter!=contests.end(); iter++) {
    // 특정 주소에 위치한 값을 접근하려면 iter 앞에 `*`를 붙이면 된다. 
        if((*iter)[1]==1) {
            if(k>0) {
                Ans += (*iter)[0];
                k--;
            } else {
                Ans -= (*iter)[0];
            }
        } else {
            Ans += (*iter)[0];
        }
    }
~~~



<br>
<br>

## ✓ 자주 사용되는 함수

<br>
<br>

### c_str()
- 문자열을 출력 가능한 상태로 만들어 준다. 
- 문자열 데이터를 출력할때 사용한다. 
~~~ C++
// c_str() 사용 예시)
printf("%s",twoStrings("hi","world").c_str());
~~~

<br>

### substr()
- 사용방법 
~~~ C++
s.substr(<시작인덱스>,<잘라낼길이>)ㅣ
~~~

<br>

<div>
<img width=600 src="https://user-images.githubusercontent.com/4410021/64427784-f69f3900-d0ec-11e9-9e0a-5c08f48ddc67.png">
</div>

<br>
	
- 문자열을 일부 잘라 반환해준다.

~~~ C++
// substr() 사용 예시 
// 0번째 인덱스부터 5 길이 만큼 문자열을 잘라 반환한다.
string str = s.substr(0,5); 
~~~

<br>

### stoi(<string>), stol(<string>), stof(<string>), stod(<string>)
- string에서 다른 타입으로 변환 시 사용
- Convert String to Int/long/Float/Double
- 함수원형
  - **stoi (string to Int(정수형))**
    - int stoi(const string& str, size_t* idx=0, int base=10)
  - stol (string to long(정수형))
    - long stol(const string& str, size_t* idx=0, int base=10)
  - stof (string to float(실수형))
    - float stof(const string& str, size_t* idx=0)
  - stod (string to double(실수형))
    - double stod(const string& str, size_t* idx=0)
  
- 사용 에시 ▼
~~~ C++
string str_i = "3";
string str_li = "2100000000";
string str_f = "7.2";
string str_d = "3.141592";

// stoi의 사용 : string to int
int i = stoi(str_i);

// stol의 사용 : string to long
long int li = stol(str_li)

// stof의 사용 : string to float
float f = stof(str_f);

// stod의 사용 : string to double
double d = stod(str_d);
~~~

<br>

### erase()
- 사용방법
  - erase(<시작인덱스>) : 시작인덱스 ~ 끝까지 요소를 삭제한다.
  - erase(<시작인덱스>,<삭제할길이>) : 시작인덱스 기준 특정 삭제할길이만큼 삭제한다.

<br>

~~~ C++
// erase() 사용 예시)

int main() {
  string s = "This is an example";
  cout << s << '\n';

// Erase "This " 
// -> 0인덱스 기준, 5만큼의 길이를 삭제한다.
  s.erase(0, 5);  
  cout << s << '\n';

// Erase ' ' 
// -> ' ' 최초 공백을 제거한다.
  s.erase(find(s.begin(), s.end(), ' '));  
  cout << s << '\n';

 // Trim from ' ' to the end of the string
 // -> 최초 공백부터 끝까지 삭제한다.
  s.erase(s.find(' ')); 
  cout << s << '\n';
}
~~~

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

<br>

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

var sorted = contests.sorted { (v1, v2) in
        return v1[0] > v2[0]
	// `return` 없이 v1[0] > v2[0] 만 명시해도 문제없음.
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

<br>
<br>

### Array
- 스위프트의 기본적인 배열
- 정의 방법 

<br>

~~~ swift 
// 배열의 초기화 사용 예시)
let arr: [Int] = []
let arr2 = [String]()
let arr3: Array<Float> = Array()
~~~

- 배열 인덱스, **Array.Index의 접근(읽기) 복잡도 : O(1)**
  - **String.Index의 접근 복잡도는 O(N)**
    - 그러므로 String 접근 시 효율성이 필요하다면 배열로 변환 후 접근할 필요가 있다. 
   
<br>

~~~ swift
// 배열 사용 예제
func sherlockAndAnagrams(s: String) -> Int {
    
    // 아래처럼 문자열 s를 배열화 시켜서 다룰 수 있다.
    let arr = Array(s)
    
    var Anagram = 0
    for length in 0 ... arr.count - 2 {
        var dic = [String: Int]()
        for j in 0 ..< arr.count - length {
	
	// 스위프트에서는 배열접근 시 아래와 같이 범위(...)를 지정해서 요소들을 접근할 수 있다.
        for j in 0 ..< arr.count - length {
            let txt = String(arr[j ... j + length].sorted())
            dic[txt] = (dic[txt] ?? 0) + 1
        }

        for k in dic {
            Anagram += (k.value * (k.value - 1) / 2)
        }
    }
    return Anagram
}
~~~

- Array 기능
  - count : 배열의 크기를 반환한다. 
  - sorted(), filter(), map(), reduce()등 고차함수 사용 가능

<br>

### Dictionary
- 키(Key)와 값(Value)로 이루어 져 있는 자료구조
- 키와 값은 특정 타입을 허용한다. 
  - 키(Key) : Hashable프로토콜을 준수하는 값만 사용 가능
  - 값(Value) : Any(어떠한 값이던 사용 가능)
- 딕셔너리의 키를 접근하면 옵셔널(?)값이 나온다. 
- 사용 방법(초기화 방법)

<br>

~~~ swift 
// 딕셔너리의 초기화 사용 예시)
let dictionary: [Int:String] = [:]
let dictionary = [String:Int]()

// 
for length in 0...arr.count-2 {
        var dic = [String:Int]()
        for i in 0..<arr.count-length {
            let txt = String(arr[i...i+length].sorted())
            dic[txt] = (dic[txt] ?? 0) + 1
        }

	// for k in dic 순회 중 딕셔너리의 값 접근은 .value()로 가능
        for k in dic {
            Ans += (k.value * (k.value-1) / 2)
        }
    }
~~~

- Dictionary 기능
  - values : 현재 딕셔너리 내에 있는 값들을 출력한다. 
  - sorted(), filter(), map(), reduce()등 고차함수 사용 가능
  - key, value : 키, 값을 반환한다.
  
<br>

### Set
- 집합 자료구조
- 집합요소는 각각 중복 요소가 없는 단일 값이다. 
<br>

~~~ swift 
// Set 초기화 사용 예시)
let set = Set<Int>()
~~~

<br>

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

