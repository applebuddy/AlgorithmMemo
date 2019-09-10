
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
### - [정렬알고리즘](https://github.com/applebuddy/AlgorithmMemo#-%EA%B8%B0%EB%B3%B8-%EC%A0%95%EB%A0%AC-%EC%95%8C%EA%B3%A0%EB%A6%AC%EC%A6%98)
### - [수학함수](https://github.com/applebuddy/AlgorithmMemo#-%EC%88%98%ED%95%99)


<br>

## ✤  [C++](https://github.com/applebuddy/AlgorithmMemo/blob/master/README.md#swift_알고리즘)
### - [자료구조](https://github.com/applebuddy/AlgorithmMemo#-%EC%9E%90%EB%A3%8C%EA%B5%AC%EC%A1%B0)
### - [주요 헤더](https://github.com/applebuddy/AlgorithmMemo#-%EC%9E%90%EC%A3%BC-%EC%82%AC%EC%9A%A9%EB%90%98%EB%8A%94-%ED%97%A4%EB%8D%94header)
### - [주요 함수](https://github.com/applebuddy/AlgorithmMemo#-%EC%9E%90%EC%A3%BC-%EC%82%AC%EC%9A%A9%EB%90%98%EB%8A%94-%ED%95%A8%EC%88%98)

<br>

## ✤  [Swift](https://github.com/applebuddy/AlgorithmMemo/blob/master/README.md#c_알고리즘)
### - [자료구조](https://github.com/applebuddy/AlgorithmMemo#-%EC%9E%90%EB%A3%8C%EA%B5%AC%EC%A1%B0-1)
### - [배열 메서드](https://github.com/applebuddy/AlgorithmMemo#-%EB%B0%B0%EC%97%B4-%EA%B8%B0%EB%8A%A5-%EB%A9%94%EC%84%9C%EB%93%9C)
### - [문자열 메서드](https://github.com/applebuddy/AlgorithmMemo#-string-%EB%AC%B8%EC%9E%90%EC%97%B4-%EA%B8%B0%EB%8A%A5-%EB%A9%94%EC%84%9C%EB%93%9C)
### - [콘솔출력 메서드](https://github.com/applebuddy/AlgorithmMemo#-%EC%BD%98%EC%86%94-%EC%B6%9C%EB%A0%A5-%EB%A9%94%EC%84%9C%EB%93%9C)
### - [주요 클로저함수](https://github.com/applebuddy/AlgorithmMemo#-%EC%9C%A0%EC%9A%A9%ED%95%9C-%ED%81%B4%EB%A1%9C%EC%A0%B8-%ED%95%A8%EC%88%98%EA%B3%A0%EC%B0%A8%ED%95%A8%EC%88%98)


<br>
<br>
<br>

# 공통_알고리즘

<br>
<br>

## ✓ 기본 정렬 알고리즘

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

## ✓ 수학

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

### sqrt()
- 루트(root )값을 씌어 준다. 

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

## ✓ 자료구조

<br>
<br>

## Array 배열
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

## set 집합
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
<br>

## pair 
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

## tuple
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

## vector
- 배열 외로 사용할 수 있는 자료구조, vector
- **탐색속도는 느리나, 삽입속도가 빠른 자료구조**
- push_back(<Value>) 등 으로 값을 넣을 수 있다. 

~~~ C++
// vector 사용 예)
// * vector + pair의 사용 예 : 7개의 pair값을 갖는 벡터 정의 예시이다.
vector<pair<int,int>> chk = {{0,0}, {0,1}, {0,2}, {1,1}, {2,0}, {2,1}, {2,2}};
~~~

<br>
<br>

## Stack 
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

## Queue 
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

## Priority Queue
- 우선순위 큐
- 기존 큐와 달리 항시 큐의 top은 최소 or 최댓값이 위치하게 된다. 
- **컬렉션 내 최솟값, 최댓값을 자주 사용해야할 때 유용**하다.

### 선언방식 

~~~ C++
priority_queue<int, vector<int>, greater<int>> q;
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
<br>

## map

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
<br>

## unordered_map
- **데이터 양 n > 32 일 경우, map보다 전체적인 성능이 좋다고 한다.**
- map과 기본적인 동작은 유사하다. 

<br>

### 선언방법

~~~ C++
unordered_map<int,int> m;
~~~

<br>
<br>

## ✓ 자주 사용되는 헤더(Header)

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

## ✓ 자료구조 

<br>
<br>

## Array
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

### ✱ Array 기능
- count
  - 배열의 크기를 반환한다. 
- first?
  - 배열의 맨 앞 요소를 반환한다.
- last?
  - 배열의 맨 마지막 요소를 반환한다.
- sorted(), filter(), map(), reduce() 등 고차함수 사용 가능(고차함수 탭 참고)
- append(<값>)
  - 배열의 맨 뒤에 요소를 추가한다.
- remove(at:<인덱스>)
  - <인덱스>번째의 요소를 제거한다. 
- removeLast()
  - 마지막 요소를 삭제한다. 
- removeFirst() 
  - 맨 앞의 요소를 삭제한다. 
- firstIndex(of:<값>) -> Int?
  - 배열 맨 앞에 나오는 <값>의 정수형 인덱스를 반환한다.
- firstIndex(of:<값>) -> Int?
  - 배열 맨 마지막에 나오는 <값>의 정수형 인덱스를 반환한다.  
  
  
<br>
<br>

## Dictionary
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

## Set
- 집합 자료구조
- 집합요소는 각각 중복 요소가 없는 단일 값이다. 
<br>

~~~ swift 
// Set 초기화 사용 예시)
let set = Set<Int>()
~~~

<br>
<br>

## Queue 
- 스위프트 Queue의 사용
- FIFO(Fire In First Out) 방식

~~~ swift
struct Queue<T> { 
    private(set) var elements: Array<T> = []
    mutating func push(value: T) { elements.append(value) } // O(1)
    mutating func pop() -> T { return elements.removeFirst() } // O(`count`)
}
~~~

<br>
<br>

## Stack 
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

## 반복문

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

### Stride(from:,through/to:,by:)
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


