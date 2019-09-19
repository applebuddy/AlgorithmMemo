
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
### - [정렬 알고리즘](https://github.com/applebuddy/AlgorithmMemo#-_알고리즘)
### - [수학 알고리즘](https://github.com/applebuddy/AlgorithmMemo#-수학_알고리즘)
### - [수학 함수](https://github.com/applebuddy/AlgorithmMemo#-수학_함수)


<br>

## ✤  [C++](https://github.com/applebuddy/AlgorithmMemo/blob/master/README.md#c_알고리즘)
### - [자료구조](https://github.com/applebuddy/AlgorithmMemo#C++_자료구조)
- [Array](https://github.com/applebuddy/AlgorithmMemo#-Array)
- [Vector](https://github.com/applebuddy/AlgorithmMemo#-Vector)
- [Set](https://github.com/applebuddy/AlgorithmMemo#-Set)
- [Pair](https://github.com/applebuddy/AlgorithmMemo#-Pair)
- [Tuple](https://github.com/applebuddy/AlgorithmMemo#-Tuple)
- [Stack](https://github.com/applebuddy/AlgorithmMemo#-Stack)
- [Queue](https://github.com/applebuddy/AlgorithmMemo#-Queue)
- [Priority_Queue](https://github.com/applebuddy/AlgorithmMemo#-Priority_Queue)
- [Map](https://github.com/applebuddy/AlgorithmMemo#-Map)
- [Unordered_Map](https://github.com/applebuddy/AlgorithmMemo#-Unordered_Map)
- [MultiMap](https://github.com/applebuddy/AlgorithmMemo#-MultiMap)
### - [주요 헤더](https://github.com/applebuddy/AlgorithmMemo#%EC%9E%90%EC%A3%BC-%EC%82%AC%EC%9A%A9%EB%90%98%EB%8A%94-%ED%97%A4%EB%8D%94header)
### - [주요 함수](https://github.com/applebuddy/AlgorithmMemo#%EC%9E%90%EC%A3%BC-%EC%82%AC%EC%9A%A9%EB%90%98%EB%8A%94-%ED%95%A8%EC%88%98)

<br>

## ✤  [Swift](https://github.com/applebuddy/AlgorithmMemo/blob/master/README.md#swift_알고리즘)
### - [자료구조](https://github.com/applebuddy/AlgorithmMemo#Swift_자료구조)
- [Array](https://github.com/applebuddy/AlgorithmMemo#-Array-1)
- [Dictionary](https://github.com/applebuddy/AlgorithmMemo#-dictionary)
- [Set](https://github.com/applebuddy/AlgorithmMemo#-Set-1)
- [Queue](https://github.com/applebuddy/AlgorithmMemo#-Queue-1)
- [QueueArray](https://github.com/applebuddy/AlgorithmMemo#-QueueArray)
- [Stack](https://github.com/applebuddy/AlgorithmMemo#-Stack-1)
- [DoubleStack](https://github.com/applebuddy/AlgorithmMemo#-DoubleStack)
### - [문자열](https://github.com/applebuddy/AlgorithmMemo/blob/master/README.md#문자열)
- [String](https://github.com/applebuddy/AlgorithmMemo#-string)
- [Character](https://github.com/applebuddy/AlgorithmMemo#-character)
### - [반복문](https://github.com/applebuddy/AlgorithmMemo#%EB%B0%98%EB%B3%B5%EB%AC%B8)
### - [문자열 메서드](https://github.com/applebuddy/AlgorithmMemo#-string-%EB%AC%B8%EC%9E%90%EC%97%B4-%EA%B8%B0%EB%8A%A5-%EB%A9%94%EC%84%9C%EB%93%9C)
### - [콘솔출력 메서드](https://github.com/applebuddy/AlgorithmMemo#-%EC%BD%98%EC%86%94-%EC%B6%9C%EB%A0%A5-%EB%A9%94%EC%84%9C%EB%93%9C)
### - [주요 클로저함수](https://github.com/applebuddy/AlgorithmMemo#-%EC%9C%A0%EC%9A%A9%ED%95%9C-%ED%81%B4%EB%A1%9C%EC%A0%B8-%ED%95%A8%EC%88%98%EA%B3%A0%EC%B0%A8%ED%95%A8%EC%88%98)


<br>
<br>
<br>

# 공통_알고리즘

<br>
<br>

## ✓ 정렬_알고리즘

<br>

### 퀵정렬 알고리즘(sort())
- 분할정복 알고리즘, O(nlogn)의 복잡도를 가진다.
- swift, C++ 전부 sorting 메서드를 지원한다.
  - swift : sorted()로 정렬 지원
  - C++ : sort(시작주소,끝주소,정렬방식)으로 지원
    - 퀵소트 + 힙소트 방식의 정렬함수
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

<br>
<br>

## ✓ 수학_알고리즘
### 약수의 갯수가 홀수개인 숫자인지 판별하는 방법
- **해당 수 N의 제곱근, A을 구한다. N == A*A ? true : false**

<br>

### 에라토스 테네스의 체
- 소수를 가벼운 복잡도로 구할 수 있는 알고리즘
- 2부터 시작하여 소수의 배수 값들은 소수아님 처리하며 체로 소수가 아닌 값들을 걸러낸다.
- 에라토스 테네스의 체 사용 예시) ▼

~~~ swift
// swift 에라토스테네스의 체 사용 예시
func findPrime(_ n:Int) -> Int {
    var chk = [Bool](repeating: true, count: n+1)
    var Ans = 0
    
    // 에라토스 테네스의 체 구현 예시)
    for i in stride(from: 2, through: Int(sqrt(Double(n))), by: 1) {
        if chk[i] == true {
            for j in stride(from: i+i, through: n, by: i) {
                chk[j] = false
            }
        }
    }
    
    for i in 2...n {
        if chk[i] == true { Ans += 1 }
    }
    return Ans
}
~~~

<br>

### **카탈린 수** 
- **함수, y=x 그래프를 넘지않는 최단거리 구하기**
- Catalan number, 카탈랑 수
- 동일한 완전 쌍의 조합의 갯수 
  - ex) 올바른 괄호 갯수 찾기 
- 카탈린 수 연산 예시) ▼

~~~ C++
/// MARK: - 올바른 괄호의 갯수 : 카탈린 알고리즘
/// '{', '}' 각각 n개를 갖고 있는 올바른 괄호의 갯수 경우의 수를 출력하라!!

// * 경우의 수 + 괄호내용 출력 버전)
#include <string>
#include <vector>

using namespace std;

int Ans = 0;
char str[30];
void getBrace(int idx, int open, int close) {
/// open Brace '{'가 n개 전부 사용되었다면, 더이상 '{'은 사용 불가, 나머지 사용하지 않은 '}'를 추가
/// 처음 getBrace 함수에서 받은 인자, open, close값만 사용, 
/// -> open Brace < close Brace일때만 close Brace를 사용하기때문에 올바른 괄호만 출력된다. 
    if(open == 0) {
        while(close--) str[idx++] = '}';
        Ans++;
        printf("%s\n",str);
        return;
    }
    
    // open Brace '{' 사용
    str[idx] = '{';
    // open Brace 사용 후 open-1 재귀함수 실행
    getBrace(idx+1, open-1, close);
    
    // open Brace가 Close 보다 작은경우
    if(open < close) {
    /// close Brace '}' 사용
        str[idx] = '}';
	// close Brace 사용 후 close-1 재귀함수 실행
        getBrace(idx+1, open, close-1);
    }
}
~~~

<br>
<br>

## ✓ 수학_함수

<br>

### 올림, 내림, 반올림
- C++, Swift
  - ceil(<값>) : 올림 함수
  - floor(<값>) : 내림 함수
~~~ swift
/// Swift 소수럼 1자리 제외 버리기 -> floor(<값>) 사용 예시
let input = 1.123456789
let output = floor(input * 10) / 10
// output == 10.1
~~~
  - round(<값>) : 반올림 함수


<br>

### 제곱근 (Square Root)
- 어떤 수, x를 두개 곱했을때 a가 된다면 x를 a의 제곱근이라 한다. 
- a에 root를 씌우면 제곱근이 나온다. 
- 제곱근 (Square Root) 사용예시 ▼

~~~ C++
#include <cmath>
int n = 64;
int main() {
    int num = sqrt(n);
    return 0;
}
~~~
~~~ swift 
import foundation 

func makeSqut(_ num: Int) -> Int {
    // swift는 강타입 언어로, Int로 직접 형변환을 해준 뒤 값을 처리할 수 있다.
    // 1번째 sqrt 처리 방법
    var sqt = Int(sqrt(Double(num)))
    
    // 2번째 sqrt 처리 방법
    var sqt2 = Int(Double(n).squareRoot())
    
    return sqt
}

~~~

<br>

### 비트연산자 ^, XOR
- 배타적 논리합
- 두개의 값이 다르면 1, 같으면 0

<br>

### 비트연산자 &, AND
- 논리곱
- 두개의 값이 1이어야 1, 하나라도 0이면 0

<br>

### 비트연산자 |, OR
- 논리합
- 두개의 값 중 하나라도 1이면 1, 둘다 0일때만 0

<br>

### 비트연산자 ~, NOT
- NOT 연산자
- 1->0, 0->1
- NOT 사용 예시 ▼
~~~ C++
#include <cmath>

long flippingBits(long n) {
    // NOT(~) 연산자 적용
    // 1) ~n의 값이 -값이라는 것은 32비트의 맨 앞자리가 1이라는 것, 맨 앞은 부호로 취급하므로 추가로 2^32값을 더해준다.
    // 2) ~n의 값으 +값이라는 것은 32비트의 맨 앞자리가 0이라는 것으로 부호취급과 상관없이 그대로 ~n의 값을 출력하면 된다.
    return ~n<0 ? (long)pow(2,32)+~n:~n;
}
~~~

<br>

### min(<값1>, <값2>), max(<값1>,<값2>)
- 두 수 사이의 최솟값, 최댓값을 구해준다. 

<br>

### abs()
- 절대값을 구해준다.
- Swift, C++ 동일 지원

<br>

### pow(<값1>,<값2>)
- <값1>을 <값2>번 곱해준다.
- Swift의 경우 두개의 정수값 허용이 안된다. 
  - 두개의 인자 중 하나는 실수형 변환 처리 후 계산 -> Int형 변환하여 Int형 값을 반환받을 수 있다. 
  - Swift의 pow(: lhs, : rhs)는 Decimal 구조체 타입을 반환하므로 필요시 Int() 등으로  형변환을 해주어야한다.
~~~ swift 
// Swift 내 pow 활용 예시)
// Int(pow(Double(2),32)) -> 2^32(2의 32승)을 수행하는 과정이다. 
func flippingBits(n: Int) -> Int {
    return ~n < 0 ? ~n + Int(pow(Double(2),32)) : ~n
}

~~~

<br>
<br>
<br>

# C++_알고리즘

<br>
<br>

## C++_자료구조

<br>
<br>

## ✓ Array
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
<br>

## ✓ Vector
- 배열 외로 사용할 수 있는 자료구조, vector
- C++에서 쉽게 사용 가능한 Sequence Container, 배열과 유사하다.
  - 벡터 내 원소는 하나의 메모리 블록에 연속적으로 저장이 된다.
- 임의 접근 반복자(Random Access Iterator)를 지원하는 Container

- **탐색속도는 느리나, 삽입속도가 빠른 자료구조**
- push_back(<Value>) 등 으로 값을 넣을 수 있다. 

~~~ C++
// vector 사용 예)
// * vector + pair의 사용 예 : 7개의 pair값을 갖는 벡터 정의 예시이다.
vector<pair<int,int>> chk = {{0,0}, {0,1}, {0,2}, {1,1}, {2,0}, {2,1}, {2,2}};
~~~

<br>

### Vector 초기화 방법
~~~ C++
vector vec; // 텅 빈 vector 컨테이너
vector vec2(5); // 5개의 기본값으로 초기화된 원소를 갖는 컨테이너
vector vec3(n,x) // n개의 x값으로 초기화 된 원소를 갖는 벡터 컨테이너
~~~

<br>

### Vector 기능
- assign(<시작 주소>,<끝 주소>), assign(<할당갯수>,<초기화값>)
  - 벡터에 특정 크기의 테이터를 할당한다. 
~~~ C++
vector<int> vec;
vector<int> vec2;
vec.assign(3,5); // {5,5,5}
vec2.assign(vec.begin(),vec.end()); // {5,5,5}
~~~

<br>

- push_back(<값>)
  - 벡터에 값을 추가한다. 
~~~ C++
vector<int> vec;
vec.push_back(1); // {1}
vec.push_back(2); // {1,2}
~~~

<br>

- pop_back()
  - 벡터의 마지막 값을 제거한다 .
~~~ C++
vector<int> vec;
vec.push_back(1); // {1}
vec.pop_back(); // {}
~~~

<br>

- insert(<시작주소>, <값>), insert(<시작주소>, <추가갯수>, <값>)
  - 특정 위치에 값을 추가한다. 
~~~ C++
// initialising the vector 
    vector<int> vec = { 10, 20, 30, 40 }; 
  
    // inserts 3 at front   
    auto it = vec.insert(vec.begin(), 3); // {3, 10, 20, 30, 40}
      
    // inserts 2 at front  
    vec.insert(it, 2); // {2, 3, 10, 20, 30, 40}
    
    // inserts 5 at front three times in a row
    vec.insert(it, 3, 5); // {5, 5, 5, 2, 3, 10, 20, 30, 40}
~~~

<br>

- erase(<값 주소>), erase(<값 시작주소>, <값 끝주소>)
  - 1) <특정주소>의 값 제거 
  - 2) <시작주소> ..< <끝주소> 영역의 값 제거

<br>

- vec.at(i), vec.[i]
  - i 번째 원소를 반환한다. 
  
<br>

- vec.front()
  - 벡터의 첫 원소를 반환한다.

<br>

- vec.back()
  - 벡터의 마지막 원소를 반환한다.

<br>

- vec.swap(vec2)
  - 벡터(vec, vec2) 간 스왑


<br>

- vec.clear()
  - 벡터의 모든 원소를 제거한다.
  
<br>

- vec.empty()
  - 벡터가 비었는지를 boolean 값으로 반환
  
<br>

- vec.size()
  - 벡터의 원소갯수 반환 
  
<br>

- vec.resize(<공간크기>), vec.resize(<공간크기>, <초기화 값>)
  - 벡터 크기를 재조정한다. 
  
<br>

- vec.max_size()
  - 벡터가 담을 수 있는 최대 원소 갯수 반환 
  
<br>

- capacity() 
  - 메모리 할당크기 확인 가능

<br>
<br>

## ✓ Set
- 집합구조, 중복요소가 들어가지 않는다.
~~~ C++
// Set 사용 방법 
    #include <set>
    set<string> noteSet;
    // magazine 벡터요소에 중복문자가 있을시 중복문자는 단 하나씩만 들어간다.
    for(auto v : magazine) {
        magaSet.insert(v); // set 자료구조에 요소 삽입
    }
~~~

~~~ C++
#include <set>
#include <vector>
using namespace std;

int frogRiverOne(int X, vector<int> &A) {
    
    set<int> setV;
    for(int i=0; i<int(A.size()); i++) {
        setV.insert(A[i]);
        if(int(setV.size()) == X) return i;
    }
    return -1;
}
~~~

<br>
<br>

## ✓ Pair 
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
<br>

## ✓ Tuple
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
<br>

## ✓ Stack 
- FILO (First In Last Out) 방식의 자료구조 

### ✤ 선언방식 

~~~ C++
stack<int> q;
~~~
<br>

<br>

### ✤ stack 기능
- push(<값>) : 요소를 한개 삽입한다.
- pop() : 요소를 한개 빼낸다.
- top() : 가장 먼저 pop() 될 요소를 반환한다.
- empty() : 스택 내 요소가 비었는지 체크한 뒤 Bool값을 반환한다.
- size() : 스택 내 들어간 원소의 갯수를 반환한다.

<br>
<br>

## ✓ Queue 
- FIFO (First In First Out) 방식의 자료구조

### ✤ 선언방식

~~~ C++
queue<int> q;
~~~

<br>

### ✤ queue 기능
- push(<값>) : 요소를 한개 삽입한다.
- pop() : 요소를 한개 빼낸다.
- top() : 가장 먼저 pop() 될 요소를 반환한다.
- empty() : 큐 내 요소가 비었는지 체크한 뒤 Bool값을 반환한다.
- front() : 큐에 가장 먼저 들어관 원소를 반환한다.
- back() : 큐에 가장 늦게 들어간 원소를 반환한다. 
- size() : 큐 내 들어간 원소의 갯수를 반환한다.

<br>
<br>

## ✓ Priority_Queue 
- **우선순위 큐(Heap 자료구조 중 하나)**
- 일반 Queue와 달리 비선형 자료구조
- 기존 큐와 달리 항시 큐의 top은 최소 or 최댓값이 위치하게 된다. 
- **컬렉션 내 최솟값, 최댓값을 자주 사용해야할 때 유용**하다.
- **push, pop 시간 복잡도는 logN**

<br>

### 선언방식 

~~~ C++
priority_queue<int, vector<int>, greater<int>> q; // q.top은 queue 내의 가장 작은 값
priority_queue<int, vector<int>, less<int>> q; // q.top은 queue 내의 가장 큰 값
~~~

<br>

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

### ✭ 우선순위큐 정렬방식 설정하기
- **priority_queue의 세번째 인자값을 지정하여 설정** 가능

<br>

- **MIN 힙(Heap)**
- priority_queue 세번째 인자 값 -> greater<int> 지정

~~~ C++
// q.top은 queue 내의 가장 작은 값
priority_queue<int, vector<int>, greater<int>> q; 
~~~

<br>

- **MAX 힙(Heap)**
- priority_queue 세번째 인자 값 -> less<int> 지정
	
~~~ C++
// q.top은 queue 내의 가장 큰 값
priority_queue<int, vector<int>, less<int>> q; 
~~~

<br>

- **커스텀 정렬 힙(Heap)**
- 커스텀 정렬을 위한 compare구조체를 지정하여 priority_queue의 세번째 인자값으로 지정한다. 
~~~ C++
#include <string>
#include <vector>
#include <map>
#include <queue>

using namespace std;
typedef pair<int, int> Pair;

/// 우선순위큐 커스텀 정렬 구조체
struct compare{
/// p1, p2의 첫번째 값 내림차순 정렬
/// -> 만약 p1, p2의 첫번쨰 값이 같다면 두번째 값 오름차순 정렬
    bool operator()(const Pair &p1, const Pair &p2){
        if(p1.first < p2.first) return true;
        else if(p1.first == p2.first) {
            if(p1.second > p2.second) return true;
        }
        return false;
    }
};

vector<int> solution(vector<string> genres, vector<int> plays) {
    vector<int> Ans;
	
    // priority_queue<Pair,vector<Pair>,compare>> : 커스텀 정렬 힙
    map<string,priority_queue<Pair,vector<Pair>,compare>> mp;
    map<string,int> totMp;
    map<int,string,greater<int>> totMpr;
    
    for(int i=0; i<genres.size(); i++) {
        mp[genres[i]].push(make_pair(plays[i],i));
        totMp[genres[i]] += plays[i];
    }
}
~~~


<br>
<br>

## ✓ Map

<br>

### 선언방식
~~~ C++
map<int,int> m;
~~~

<br>
<br>

- **해쉬 형태의 키,값으로 이루어진 자료구조**
- **삽입은 느리나, 탐색속도가 빠르다.**
- sort() 함수 적용이 불가능하다. 

### ✱ map 기능
- find(<키값>)
~~~ C++
// map find() 사용 예시)
// 키값이 있는지 확인 후 있으면 해당 주소값을 없다면 map m.end() 반환
map<int,int>::iterator iter = m.find(abs(money-chk));
if(iter != m.end() && i+1 != (*iter).second+1) {
    printf("%d %d\n",i+1,(*iter).second+1);
    return;
}
~~~

<br>

### ✭ 맵 정렬방식 설정하기

~~~ C++
#include <iostream>
#include <map>

using namespace std;

void sortingMapStructure()
{
    // 1) 오름차순으로 map 요소 확인
    // map<double, string> sorted_map;
    // 2) 내림차순 으로 map 요소 확인을 위해서는 map 세번째 인자값으로 greater<int>를 추가한다. 
    map<double, string, greater<int>> sorted_map;
 
    // map 요소 추가 
    sorted_map.insert(make_pair(0.3829, "Mercury"));
    sorted_map.insert(make_pair(0.9499, "Venus"));
    sorted_map.insert(make_pair(1,      "Earth"));
    sorted_map.insert(make_pair(0.532,  "Mars"));
    sorted_map.insert(make_pair(10.97,  "Jupiter"));
    sorted_map.insert(make_pair(9.14,   "Saturn"));
    sorted_map.insert(make_pair(3.981,  "Uranus"));
    sorted_map.insert(make_pair(3.865,  "Neptune"));
    
    // map 내 요소 오름차순/내림차순 출력
    for (auto const& entry: sorted_map) {
        std::cout << entry.second << " (" << entry.first << " of Earth's radius)" << '\n';
    }
}

/// * 출처 : https://riptutorial.com/ko/cplusplus/example/13316/std----map--오름차순-및-내림차순--정렬
~~~

<br>
<br>

## ✓ Unordered_Map
- **데이터 양 n > 32 일 경우, map보다 전체적인 성능이 좋다고 한다.**
- map과 기본적인 동작은 유사하다. 

<br>

### 선언방법

~~~ C++
#include <unordered_map>
unordered_map<int,int> m;
~~~

<br>
<br>


## ✓ MultiMap
- 일반 map과 달리 중복된 키값을 가질 수 있는 자료구조
- key값이 동일하면서 각각 다른 값을 갖는 데이터를 저장할 수 있다. 

<br>

### 선언방법

~~~ C++
#include <map>
multimap<int,int> m;
~~~

<br>
<br>

## 자주 사용되는 헤더(Header)

<br>

### <bits/stdc++.h>
- 알고리즘 간 사용될 수 있는 모든 기능을 사용할 수 있다.
- Visual Studio가 아닌 Xcode 등 일부 환경에서는 사용 불가능하다.

<br>

### <sstream>
- stringstream
- 문자열의 공백 간 분리 기능 사용 예시 ▼
	
~~~ C++
#include <sstream>
#include <iostream>
using namespace std;

int main() {
    string s = "my name is asdf";
    stringstream ss(s);

    string dat;
    while (ss >> dat) cout << dat << '\n';
}
~~~

<br>
<br>

## ✓ iterator, 반복자로 주소 접근하기
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

### iterator 값 접근 방법
- 1) iterator 변수에 -> 를 통한 값 접근
~~~ C++
// map<string,int>::iterator iter의 key 값 접근
iter->first;
// map<string,int>::iterator iter의 value 값 접근
iter->second;
~~~

<br>

- 2) iterator 변수 앞에 *를 찍고 감싼 뒤 '.'으로 접근
~~~ C++
// map<string,int>::iterator iter의 값을 (*iter).<값> 으로 접근 가능
// (*iter)를 사용해 map의 second(value 값)에 접근하고 이다. 
if((*iter).second != 0) { Ans = iter->first; }
~~~


- iterator 값 접근 예시 ▼
~~~ C++
#include <string>
#include <vector>
#include <map>

using namespace std;

string solution(vector<string> participant, vector<string> completion) {
    // 해시테이블로 선수들의 정보를 저장한다.
    // HASH -> Key: 선수들 이름 / Value: 선수들 도착 유무
    map<string,int> m;
    string Ans = "";
    for(auto p : participant) m[p]++;
    for(auto c : completion) m[c]--;
    
    map<string,int>::iterator iter;
    for(iter=m.begin(); iter!=m.end(); iter++) {
        if((*iter).second != 0) { Ans = iter->first; }
    }
    return Ans;
}
~~~

<br>

<br>
<br>

## 자주 사용되는 함수

<br>
<br>

### memset()

<br>

### fill_n(주소, 초기화 영역, 초기화 값)
- 배열, 벡터 초기화 변수
- fill_n 함수 사용 예시) ▼
~~~ C++
chk = new bool[41];
        dp = new Pair[41];
        fill_n(chk, 41, false);
        fill_n(dp, 41, make_pair(0, 0));
~~~
<br>

### memset(주소, 초기화 값, 초기화영역 메모리 크기)
- 배열, 벡터 초기화 변수
- memset 함수 사용 예시) ▼
~~~ C++ 
int a[101];
int main(){
    int K;
    memset(a,0,sizeof(a));
    return 0;
}
~~~

### sizeof(<변수>)
- 변수의 메모리 사이즈를 반환한다. 
- sizeof 사용 예시) ▼
~~~ C++
int score[3] = {0,0,0}; 
sizeof(score)/sizeof(int); // score 메모리사이즈 12(4 * 3byte), int 메모리사이즈 4(4byte)
~~~

<br>

### min_element, max_element
- 배열, 벡터 등의 특정 영역 최댓값, 최솟값을 주소로 반환한다.
- 실제 최솟값, 최댓값을 구하려면 min_element, max_element 함수 앞에 '*'을 붙여 접근 가능하다.
~~~ C++
// min_element, max_element 사용예시
// 실제 최솟값, 최댓값을 구하려면 min_element, max_element 함수 앞에 *을 붙여 접근 가능하다.
for(int i=0; i<arr.size()-k; i++) {
        minV = min(minV,abs(*max_element(arr.begin()+i,arr.begin()+i+k)
        - *min_element(arr.begin()+i,arr.begin()+i+k)));
        if(minV==0) return 0;
    }
~~~


<br>

### c_str()
- C++ string 문자열을 C에 호환 가능한 문자배열형으로 변환시켜준다. 
- 문자열을 출력 가능한 상태로 만들 수 있다.  
- 문자열 데이터를 출력할때 사용할 수 있다. 
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

### to_string 
- Convert Type Int to Stirng
~~~ C++
string answer = "";
vector<int> Ans = {1,2,3,4,5};

// vector Ansd의 맨 앞의 값을 문자열로 변환하여 answer에 추가한다. 
answer += to_string(Ans.front()) + " "; // "1 "
answer += to_string(Ans.back()); // "1 2"
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

### swap(<값1>, <값2>)
- 두개의 값을 받아 스왑한다. 'mutating'
- swap 사용 예시 ▼
~~~ C++
int minimumSwaps(vector<int> arr) {
    int Ans = 0;
    for(int i=0; i<arr.size()-1; i++) {
        // 이미 정렬되어있으면 다음 숫자로 넘어간다.
        if(arr[i]==i+1) continue;
        // 정렬확인이 안된 구간 중 현재 인덱스(i)에 위치해야 하는 숫자, i+1 을 찾아 i위치의 숫자와 스왑한다.
        vector<int>::iterator iter = find(arr.begin()+i+1, arr.end(), i+1);
        swap(arr[i],arr[iter-arr.begin()]);
        // i번째 숫자를 스왑할때마다 횟수를 기록한다.
        Ans++;
    }
    return Ans;
}
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

## Swift_자료구조 

<br>
<br>

## ✓ Array
- 스위프트의 기본적인 배열
- 정의 방법 

<br>

~~~ swift 
// 배열의 초기화 사용 예시)
let arr: [Int] = []
let arr2 = [String]()
let arr3: Array<Float> = Array()
~~~

<br>

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

<br>

### 초기화 방법 
- Array<타입>(repeating:<반복값>,count:<할당크기>)
- Array Initialzation Example ▼
~~~ swift
// 배열 초기화 예시)
// chk: [Bool] 배열에 n+1의 크기만큼 true값을 적용한다. 
var chk = [Bool](repeating: true, count: n+1)
~~~

<br>

### ✱ Array 기능
- count
  - 배열의 크기를 반환한다. 
- min() -> Int?
  - 요소 내 최솟값을 반환한다. 
- min() -> Int?
  - 요소 내 최댓값을 반환한다. 
- first?
  - 배열의 맨 앞 요소를 반환한다.
- last?
  - 배열의 맨 마지막 요소를 반환한다.
- sorted(), filter(), map(), reduce() 등 고차함수 사용 가능(고차함수 탭 참고)
- append(<값>), append(contentsOf: <범위값>)
  - 배열의 맨 뒤에 요소를 추가한다.
- isEmpty -> Bool
  - 배열 요소가 비어있는지 확인 후 Bool값을 반환한다.
~~~ swift 
func appnd() {
    var arr = [Int]()
    arr.append(3) // arr 뒤에 3을 추가한다. -> [3]
    arr.append(2) // arr 뒤에 2을 추가한다. -> [3,2]
    print(arr) // -> [3,2]
    
    var arr = [1,2,3,4,5,6]
    print("nowArray elements : \(arr)") // -> [1,2,3,4,5,6]
    arr.removeSubrange(0...1) // 0 ~ 1번째 인덱스의 값을 삭제
    print("arr.removeSubrange(0...1) : \(arr)") // -> [3,4,5,6]
    
    arr.append(contentsOf: arr[0...1]) // 현재 arr의 0 ~ 1번째 인덱스 영역의 값을 arr 뒤에 추가한다.
    print("arr.append(contentsOf: arr[0...1]) : \(arr)") // -> [3,4,5,6,3,4]
}
~~~

<br>

- insert(_ newElement: Element, at i: Int)
  - 특정 인덱스에 값을 추가한다. 
    - (at: <값>)
~~~ swift
func insertion() {
    var arr = [1,2,3]
    print("nowArray elements : \(arr)") // -> [1,2,3]
    
    arr.insert(99, at: 0) // 맨 앞에 99를 추가한다.
    print("arr.insert(99, at: 0) : \(arr)") // -> [99, 1, 2, 3]
    
    arr.insert(99, at: arr.endIndex) // 맨 뒤에 99를 추가한다.
    print("arr.insert(99, at: arr.count) : \(arr)") // -> [99, 1, 2, 3, 99]
}
~~~

<br>
  
- remove(at:<인덱스>)
  - <인덱스>번째의 요소를 제거한다. 
~~~ swift 
func rm() {
    var arr = [1,2,3,4,5,6]
    print("nowArray elements : \(arr)")
    
    arr.remove(at: 0)
    print("arr.remove(at: 0) : \(arr)") // => [2,3,4,5,6]
    
    arr.remove(at: arr.count-1)
    print("arr.remove(at: arr.count-1) : \(arr)") // => [2,3,4,5]
}
~~~

<br>

- removeLast()
  - 마지막 요소를 삭제한다. 
~~~ swift 
func rmLast() {
    var arr = [1,2,3,4,5,6]
    print("nowArray elements : \(arr)")
    
    arr.removeLast()
    print("arr.removeLast() : \(arr)") // => [1,2,3,4,5]
}
~~~

<br>

- removeFirst() 
  - 맨 앞의 요소를 삭제한다. 
~~~ swift 
func rmFirst() {
    var arr = [1,2,3,4,5,6]
    print("nowArray elements : \(arr)")
    
    arr.removeFirst()
    print("arr.removeFirst() : \(arr)") // => [2,3,4,5,6]
}
~~~

<br>

- removeAll()
  - 배열 내 모든 요소를 제거하여 빈 배열로 만든다. 
~~~ swift 
func rmAll() {
    var arr = [1,2,3,4,5,6]
    print("nowArray elements : \(arr)")
    
    arr.removeAll()
    print("removeAll() : \(arr)") // []
}
~~~

<br>

- removeSubrange
  - 특정 범위 인덱스의 값들을 제거한다.
~~~ swift
func rmSubrange() {
    var arr = [1,2,3,4,5,6]
    
    arr.removeSubrange(0...1) // 0 ~ 1번째 인덱스의 값을 삭제
    print("arr.removeSubrange(0...1) : \(arr)") // [3,4,5,6]
}
~~~

<br>

- firstIndex(of:<값>) -> Int?
  - 배열 맨 앞에 나오는 <값>의 정수형 인덱스를 반환한다.
- firstIndex(of:<값>) -> Int?
  - 배열 맨 마지막에 나오는 <값>의 정수형 인덱스를 반환한다.  
  
<br>

- swapAt(<인덱스1>,<인덱스2>)
  - 두개의 요소를 교환한다. 

~~~ swift
// swapAt() 사용 예시)
// j, j+1 인덱스의 요소를 교환한다.
arr.swapAt(j, j+1) 
~~~

<br>

- elementsEqual()
  - 요소를 비교한 결과를 반환한다.

<br>
<br>

## ✓ Dictionary
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

<br>

### ✱ Dictionary 기능
- values : 현재 딕셔너리 내에 있는 값들을 출력한다. 
- **sorted(), filter(), map(), reduce()등 고차함수 사용 가능**
- key, value : 키, 값을 반환한다.
- **index(forKey:) -> Dictionary.Index** : 딕셔너리의 인덱스를 반환한다.
~~~ swift

// index(forKey:) 사용 예시)
// 딕셔너리 변수, dic 초기화 
var dic = [Int:Int]()
    for i in cost.indices {
        dic[cost[i]] = i
    }
    
for i in 0..<cost.count-1 {

// Dictionary 변수인 dic의 특정 키값이 있는지 확인한다 
// => 있으면 해당 Index, 없으면 nil을 반환한다.
        let dicIdx = dic.index(forKey: money-cost[i])
	
	// ✭ 해당 키값이 존재 했으면 Index가 반환되여 해당 인덱스의 키, 값에 접근할 수 있다. 
        if dicIdx != nil && i != dic[dicIdx!].value {
            print(i+1,dic[dicIdx!].value+1, separator: " ")
            return
        }
    }
~~~
  
<br>
<br>

## ✓ Set
- 집합 자료구조
- 집합요소는 각각 중복 요소가 없는 단일 값이다. 
<br>

### Set 초기화 방법
- Set 초기화 방법 예시) ▼
~~~ swift 
// Set 초기화 사용 예시)
let set = Set<Int>()
let set2: Set = [1,2,3]
let set3: Set<String> = []
~~~

<br>

### Set 기능
- insert(<값>)
  - Set 자료구조에 요소를 삽입한다. 
~~~ swift 
var setV = Set<Int>()
setV.insert(3) // 요소 삽입
setV.insert(3) // 요소 삽입 시 중복값은 취급안함 
~~~

<br>


- index(of:<값>) -> Int? 
  - 특정 값의 인덱스를 반환
~~~ swift 
var idx = setV.index(of: 3)! //index(of:) 사용 후 만약 해당 값이 존재하지 않으면 nil을 반환한다.
~~~

<br>

- remove(<값>), remove(at:<Set.Index>)
  - 특정 값, 특정 위치의 요소를 제거한다. 
~~~ swift
var setV: Set = ["1", "2", "3"]
setV.remove("3") // 특정 값을 인자로 받아 해당 값을 제거
setV.remove(at: setV.index(of:"1")!) // 특정 정수형 인덱스에 위치한 값을 제거(Set.Index)
~~~

<br>

- removeAll()
  - Set 자료구조 내 모든 요소를 지운다. 
~~~ swift 
setV.removeAll() // => [] 
~~~

<br>

- **집합연산 기능**
  - 합집합, union
  - 교집합, intersection
  - 여집합, subtracting
  - 합집합 - 여집합, symmetricDifference

~~~swift

var a: Set = [1,2,3]
var b: Set = [3,4,5]

// 집합 연산 사용예시
// 합집합 연산
a.union(b) // => [1,2,3,4,5]

// 교집합 연산
a.intersection(b) // => [3]

// 여집합 연산
a.subtracting(b) // => [1,2]

// 합집합 - 교집합 연산
a.symmetricDiffernce(b) // => [1,2,4,5]
~~~


<br>
<br>

## ✓ Queue 
- 스위프트 Queue의 사용
- FIFO(Fire In First Out) 방식

- 간단한 QueueArray 구현 예시) ▼ 
~~~ swift
struct Queue<T> { 
    private(set) var elements: Array<T> = []
    mutating func push(value: T) { elements.append(value) } // O(1)
    mutating func pop() -> T { return elements.removeFirst() } // O(`count`)
}
~~~

- Queue 프로토콜 구현 예시) ▼

~~~ swift 
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
~~~

<br>
<br>

## ✓ QueueArray 
- Array를 활용한 Queue의 구현 + Queue프로토콜 활용
- **push 시간 복잡도 : 평소 O(1) 최악 O(N)** -> 배열 공간의 요소가 다 찼을때 배열공간 확장으로 O(N)의 복잡도 될 수 있음
- **pop 시간 복잡도 : O(N)** -> 배열 맨 앞의 요소 제거 후 전체 요소를 전부 좌 쉬프트 해야하기 때문이다.
- 구현 예시) ▼

~~~ swift 
// MARK: - QueueArray

// MARK: Array를 사용한 Queue 구현

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
~~~

<br>
<br>

## ✓ Stack 
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

<br>
<br>

## ✓ DoubleStack
- 두 개의 Stack을 사용해 큐와 같은 기능을 수행한다. 
- 배열을 사용한 큐보다 Enqueue, Dequeue에서의 시간복잡도가 가볍다.
  - **두개의 스택을 사용하여 enQueue, deQueue의 시간복잡도 O(1)** 을 이룰 수 있다.
  - **공간복잡도 O(N)**
~~~ swift 
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
~~~

<br>
<br>

## ✓ 문자열

### String
- Swift의 문자열 타입 
- String 초기화 예시 ▼
~~~ swift 
var str0 = "ABC"
var str: String = "HELLOWORLD"
print(str) // -> "HELLOWORLD"
~~~

<br>

### Character
- 별칭, String.Element
- String의 부분적 요소 

<br>

### 문자 아스키코드 값 변환하기 
- unicodeScalars.first!.value
  - 문자열의 특정 문자를 아스키코드값으로 변환 시킨다.
  - 반환타입은 UInt32(Unsigned Integer 32)이다.
- Unicode.Scalar(<Int>) -> Unicode.Scalar
  - 반환타입을 문자열로 사용하기 위해서 String, Character형 등으로 타입 변환하여 사용한다. 
  - Int 타입 변수를 문자열로 변환 시킨다.
- unicodeScalars, Unicode.Scalar 사용 예시 ▼
	
~~~ swift 
func sizierCode(_ s: String, _ n: Int) -> String {
    var arr = Array(s)

    for i in arr.indices {
        for _ in 0 ..< n {
            if arr[i] == " " { break }
	    // ✓ arr[i] 문자를 unicodeScalars.first!.value를 사용해 아스키코드 값으로 변환 시킨다.
            let ascV = Int(arr[i].unicodeScalars.first!.value)
            if ascV == 122 { arr[i] = "a"; continue }
            if ascV == 90 { arr[i] = "A"; continue }
	    // ✓ arr[i] 문자를 Unicode.Scalar()를 사용해 아스키코드 값으로 변환 시킨다.
            arr[i] = Character(Unicode.Scalar(ascV + 1)!)
        }
    }
    return arr.map { String($0) }.joined()
}
~~~

<br>
<br>

## ✓ 반복문

<br>

### for <인덱스변수> in <범위, 컬렉션..> {}
- 지정 영역을 순회하여 반복실행한다. 
- for문 사용 예시 ▼
~~~ swift 
if i+1 >= h.count { continue }
        for j in i+1 ..< h.count {
            if h[i] > h[j] { break }
            index += 1
            Ans = max(Ans, index * h[i])
}
~~~
<br>

### stride(from:,through/to:,by:)
 - *Float 등의 부동소수점을 반복문으로 돌릴 수 없을까?*
   - Swift에서는 stride 전역함수를 이용하여 구현할 수 있다.
   - 부동소수점 이외에 문자열의 인수 등도 셀 수 있다.
- stride 사용 예시 ▼

 ~~~ swift
 // for i stride 사용 예시)
 // for (i = 0.5; i<=15.25; i+=0.3) 과 같은 동작의 stride 사용 예
 for i in stride(from: 0.5, through: 15.25, by: 0.3) {

 }
~~~

<br>

~~~ swift 
// 반복문 내의 i-1 ~ 0까지 내려가면서 순회한다. 실행마다 -1씩 감소한다.
// from, to, by를 통해 증가하며 순회하는 실행도 가능
Ans = max(Ans, index * h[i])
        for j in stride(from: i-1, through: 0, by: -1) {
            if h[i] > h[j] { break }
            index += 1
            Ans = max(Ans, index * h[i])
}
~~~

<br>
<br>

## ✓ String 문자열 기능 메서드
### components(saparatedBy:) -> Array<T>
- 문자열을 특정 separator 기준으로 잘라서 배열로 만들어준다.
~~~ swift 
public func sad(_ S : String) -> Int {
    Components를 사용하여 "?", "!", "."간격으로 분리, 배열화 한다.
    let arr = S.components(separatedBy: ["?","!","."])
}
~~~
~~~ swift 
/// components + 고차함수 응용 예시)
func getMinMax(_ s: String) -> String {
    // 1) 입력한 문자열의 공백을 기준으로 잘라 배열로 만든다.
    // 2) map을 이용해 배열 요소를 각각 Int 형으로 강제 변환
    // 3) 변환한 Int형 요소들을 sorted()를 이용해 오름차순 정렬한다. 
    let Ans = s.components(separatedBy: " ").map { Int($0)! }.sorted()
    return "\(Ans[0]) \(Ans[Ans.count-1])"
}	
~~~
	
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
 
<br>

### filter()
- 특정 조건을 충족하는 요소만 필터링하여 배열에 저장한다. 
~~~ swift 
let A: [Int] = [-1,1,-1,2]
let sorted = A.filter { $0 > 0 } // [1,2]
~~~

<br>

### sort() `mutating`
- 정렬 메서드
- 해당 배열의 값 자체를 변경한다. 

<br>

### sorted(), sorted(by: )
- 정렬 메서드
- 두개의 인자값을 통해 비교함수를 재정의할 수도 있음.
- sorted(by: )는 인자값을 >, < 으로 받아 내림차순 or 오름차순 정렬을 실행한다.
- sorted() 사용 예시 ▼
~~~ swift 
ans.sorted { (c1, c2) -> Bool in 
	// 재정의 부분, true를 리턴 시 두개의 값이 서로 스왑된다.
}

var sorted = contests.sorted { (v1, v2) in
        return v1[0] > v2[0]
	// `return` 없이 v1[0] > v2[0] 만 명시해도 문제없음.
}
~~~

<br>

- sorted(by:) 사용 예시 ▼
~~~ swift
// sorted(by: ) 사용 예시
// 위와 동일한 내림차순 결과를 보여준다. 
sorted = con.sorted(by: >)

// 오름차순 결과를 보여준다. 
sorted = con2.sorted(by: <)
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
- **삽입속도는 느리나, 탐색속도가 빠른 자료구조**

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


