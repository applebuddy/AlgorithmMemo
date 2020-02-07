
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
### - [타입](https://github.com/applebuddy/AlgorithmMemo/blob/master/README.md#c_)
### - [자료구조](https://github.com/applebuddy/AlgorithmMemo#C++_자료구조)
- [Array](https://github.com/applebuddy/AlgorithmMemo#-Array)
- [Vector](https://github.com/applebuddy/AlgorithmMemo#-Vector)
- [Set](https://github.com/applebuddy/AlgorithmMemo#-Set)
- [Pair](https://github.com/applebuddy/AlgorithmMemo#-Pair)
- [Tuple](https://github.com/applebuddy/AlgorithmMemo#-Tuple)
- [Stack](https://github.com/applebuddy/AlgorithmMemo#-Stack)
- [Queue](https://github.com/applebuddy/AlgorithmMemo#-Queue)
- [Priority_Queue](https://github.com/applebuddy/AlgorithmMemo#-Priority_Queue)
- [Deque](https://github.com/applebuddy/AlgorithmMemo#-Deque)
- [Map](https://github.com/applebuddy/AlgorithmMemo#-Map)
- [Unordered_Map](https://github.com/applebuddy/AlgorithmMemo#-Unordered_Map)
- [MultiMap](https://github.com/applebuddy/AlgorithmMemo#-MultiMap)
### - [문자열](https://github.com/applebuddy/AlgorithmMemo#-c_문자열)
### - [주요 헤더](https://github.com/applebuddy/AlgorithmMemo#%EC%9E%90%EC%A3%BC-%EC%82%AC%EC%9A%A9%EB%90%98%EB%8A%94-%ED%97%A4%EB%8D%94header)
- [iostream](https://github.com/applebuddy/AlgorithmMemo#iostream)
- [Algorithm](https://github.com/applebuddy/AlgorithmMemo#algorithm)
- [bits/stdc++.h](https://github.com/applebuddy/AlgorithmMemo#bitsstdch)
- [string](https://github.com/applebuddy/AlgorithmMemo#string)
- [sstream](https://github.com/applebuddy/AlgorithmMemo#sstream)

### - [입출력](https://github.com/applebuddy/AlgorithmMemo#C_입출력)
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
### - [콘솔 입출력](https://github.com/applebuddy/AlgorithmMemo#-%EC%BD%98%EC%86%94-%EC%B6%9C%EB%A0%A5-%EB%A9%94%EC%84%9C%EB%93%9C)
### - [주요 클로저함수](https://github.com/applebuddy/AlgorithmMemo#-%EC%9C%A0%EC%9A%A9%ED%95%9C-%ED%81%B4%EB%A1%9C%EC%A0%B8-%ED%95%A8%EC%88%98%EA%B3%A0%EC%B0%A8%ED%95%A8%EC%88%98)


<br>
<br>
<br>

# 공통_알고리즘

<br>
<br>

## ✓ 정렬_알고리즘

### 내장 정렬함수

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

### 퀵정렬 알고리즘(QuickSort Algorithm)
- 분할정복 알고리즘, O(nlogn)의 복잡도를 가진다.
- swift, C++ 전부 sorting 메서드를 지원한다.
  - swift : sorted()로 정렬 지원
  - C++ : sort(시작주소,끝주소,정렬방식)으로 지원
    - 퀵소트 + 힙소트 방식의 정렬함수
- 메서드 기본 기능은 오름차순 정렬이다.
  
- Swift 퀵소트(QuickSort)구현 예시 ▼
~~~ swift 
// MARK: QuickSort Implementation

extension Array where Element == Int {
    mutating func quickSort(_ start: Int, _ end: Int) 
    {
        if start >= end { return }
        let key = start
        var left = start + 1
        var right = end
        while left <= right {
            while left <= end, self[left] <= self[key] {
                left += 1
            }
            
            while right > start, self[right] >= self[key] {
                right -= 1
            }
            
            if left > right {
                self.swapAt(key, right)
            } else {
                self.swapAt(left, right)
            }
        }
        
        quickSort(start, right - 1)
        quickSort(right + 1, end)
    }
}

var arr = [1,9,2,8,3,7,4,7,5,0,2]
arr.quickSort(0, arr.count-1) // [0,1,2,2,3,4,5,7,7,8,9]
print(arr)
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

## ✓ 파인만 알고리즘
- 문제해결과정을 단계벼로 나누어 푸는 알고리즘
- **"문제해결과정을 단계별로 나눈다" 라는 아이디어는 단순할지 모르지만 굉장히 강력하다.**
- 파인만 알고리즘 순서(3단계 ver.)
  - 1) 칠판에 문제를 적는다. 
  - 2) 골똘히 생각한다. 
  - 3) 칠판에 답안을 적는다. 
  
<br>

- 파인만 알고리즘 순서(4단계 ver.)
  - 1) **문제를 이해**한다.
  - 2) 어떻게 풀지 **계획을 세운다.**
  - 3) **계획을 수행해서 문제를 해결**한다. 
  - 4) 어떻게 풀었는지 돌아보고, 개선할 방법이 있는지 찾아본다.

- 파인만 알고리즘 계획 세부뷴류(6단계 ver.)
  - 1) 문제를 읽고 이해한다.
  - 2) 문제를 익숙한 용어로 재정의한다.
  - 3) 어떻게 해결할지 계획을 세운다.
  - 4) 계획을 검증한다. 
  - 5) 프로그램으로 구현한다. 
  - 6) 어떻게 풀었는지 돌아보고, 개선할 방법잉 있는지 찾아본다. 
  * ✓ 프로그래밍 대회를 위한 여섯단계 문제 해결 알고리즘 (출처, 종만북)
  
<br>
<br>

## ✓ 그래프_알고리즘

### MST 알고리즘
- Kruskal Algorithm, Prim Algorithm이 있다. 
- 1) Kruskal Algorithm
  - 간선의 가중치를 오름차순, 내림차순 정렬 후 차례대로 간선을 적용해보며 최선의 간선 루트를 구한다. (순환하지 않는 간선 경로를 구한다.)
~~~ C++
/// MARK: - Kruskal Algorithm : MST Algorithm

#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

/// MARK: 크루스칼 알고리즘은 순환이 최소신장트리가 순환이 되면 안되므로, Union Find(서로소집합) 알고리즘을 결합하여 사용한다.
/// MARK: Adjusting Union Find Algorithm
// - getParentNode(int node[], int x)
// - unionParent(int node[], int a, int b)
// - checkParent
int getParentNode(int node[], int x) {
    if(node[x]==x) return x;
    return getParentNode(node, node[x]);
}

void unionParent(int node[], int a, int b) {
    a = getParentNode(node,a);
    b = getParentNode(node,b);
    if(a<b) node[b] = a;
    else node[a] = b;
    return;
}

bool checkParent(int node[], int a, int b) {
    a = getParentNode(node, a);
    b = getParentNode(node, b);
    return a!=b ? false : true;
}

// MARK: 간선 노드 클래스를 정의한다.
class Edge {
    public:
    int node[2];
    int weight;
    Edge(int x, int y, int w) {
        this->node[0] = x;
        this->node[1] = y;
        this->weight = w;
    }
};

int main() {
    
    int N = 7; // 노드 갯수
    int M = 11; // 간선 갯수
    vector<Edge> V;
    V.push_back(Edge(1, 7, 12));
    V.push_back(Edge(4, 7, 13));
    V.push_back(Edge(1, 4, 18));
    V.push_back(Edge(1, 2, 67));
    V.push_back(Edge(1, 5, 17));
    V.push_back(Edge(2, 4, 24));
    V.push_back(Edge(2, 5, 62));
    V.push_back(Edge(3, 5, 20));
    V.push_back(Edge(3, 6, 37));
    V.push_back(Edge(5, 6, 45));
    V.push_back(Edge(5, 7, 73));
    
    // 간선 노드의 오름차순 정렬 후, 가장 적은 비용의 노드를 연결하는 경우를 찾는다.
    sort(V.begin(), V.end(), [](Edge &a, Edge &b) {
        return a.weight < b.weight;
    });
    
    int C[N];
    for(int i=0; i<N; i++) C[i]=i;
    
    // 누적합을 저장 할 변수, SUM
    int SUM = 0;
    for(int i=0; i<V.size(); i++) {
        // 만약 노드가 순환되지 않는다면(순환체크를 위해 UnionFind Algorithm을 사용)
        // * 부모노드를 체크하는 C 배열의 인덱스는 0부터 시작하므로, checkParent의 인자값 인덱스는 1씩 감소 후 사용
        if(!checkParent(C, V[i].node[0]-1, V[i].node[1]-1)) {
            // 순환이 일어나지 않으며, 해당 가중치를 누적시킨 후
            SUM+=V[i].weight;
            // 이미 사용 된 간선 루트는 서로소집합(Union Find Algorithm) 적용시킨다.
            unionParent(C, V[i].node[0]-1, V[i].node[1]-1);
        }
    }
    printf("%d\n",SUM);
    
    return 0;
}
~~~

<br>

### 위상정렬 알고리즘
- 유향그래프의 꼭짓점들을 변의 방향을 거스르지 않고 나열하는 것.
- 줄세우기 등의 방향성을 거스르지 않게 정렬 하는 경우 사용할 수 있다. 
~~~ C++
/// MARK: - 위상정렬 알고리즘 예시)
#include <iostream>
#include <vector>
#include <queue>
using namespace std;

// C: 방향 체크 배열
// G: 위상정렬에 사용하는 유향그래프
int C[32001] = {0,};
vector<int> G[32001];

void theLiningSorting() {
    int N,M; cin>>N>>M;
    queue<int> Q;
    for(int i=0; i<M; i++) {
        int A,B; cin>>A>>B;
	// 목표 지즘의 노드 C 인덱스를 증가
        C[B]++;
	// A->B 방향으로 유향 그래프를 그려준다. 
        G[A].push_back(B);
    }
    
    // 0 일경우(지표가 없는 노드 순서의 경우) 그대로 큐에 삽입한다. 
    for(int i=1; i<=N; i++) if(C[i]==0) Q.push(i);
    
    // 큐가 텅 빌 때까지 유향그래프를 순회하며 줄세우기를 실시한다. 
    while(!Q.empty()) {
    // 현재 순서가 정해 진 큐의 front 노드를 출력하고 pop() 처리한다. 
        int node = Q.front();
        printf("%d",node);
        Q.pop();
        for(int i=0; i<G[node].size(); i++) {
	// C 카운트를 가감시켰을 때 0이 되면 해당 인덱스의 노드를 큐에 push(), 삽입하여 줄세우기에 사용한다. 
            C[G[node][i]]--;
            if(C[G[node][i]]==0) Q.push(G[node][i]);
        }
        if(!Q.empty()) printf(" ");
        else printf("\n");
    }
    return;
}
~~~

<br>

### 최단경로 알고리즘
#### 다익스트라 알고리즘 
  - **단일 시작점 기준, 모든 목적지의 최단경로를 구하는 알고리즘**
  - 우선순위큐(Heap)을 사용하여 최단거리를 구한다. 
  - **시간 복잡도 약 O(NlogN)**
  
#### 플로이드 와셜 알고리즘 
  - **모든 쌍 최단경로 알고리즘**
  - 3중 포문을 사용해 특정 노드를 경유한 경우 vs 노드 간 다이렉트 이동경우 를 체크하여 모든 노드 이동 간 최단거리를 구한다. 
  - **시간 복잡도 약 O(N^3)**

#### 벨만-포드 알고리즘
  - **음의 가중치가 존재할때도 사용가능 한 최단경로 알고리즘**
  - 모든 간선의 가중치를 V(노드의 갯수) 번 순회하며 체크한다. 
    - 보통 N 순회시마다 N번 이동시의 최단경로가 구해진다. 
    - 간선을 갱신 시 전부 변동사항이 없게 될 경우 연산을 종료하고 결과를 도출한다. 
  - 음의폐로(음의가중치에 의한 무한 순환)을 확인할 수 있다. 
    - 벨만포드 알고리즘 순회가 V(노드의갯수) 번 이상 돌아가면 음의폐로가 존재함을 의미
  - **시간복잡도 약 O(V^3)** 로 느리지만, 대신 다익스트라알고리즘이 못하는 음의 가중치 연산이 가능한 장점이 있다. 
    
#### SPFA 알고리즘(Shortest Path Faster Algorithm)
  - **벨만-포드의 비효율성을 해결한 벨만-포드 최적화 기법 알고리즘**
  - 벨만-포드 알고리즘과 동일하게 음의폐로 확인가능, 음의가중치 연산이 가능하다. 
  - queue를 사용하며 노드간 가중치를 비교연산하며 최단경로를 구한다. 
  - **시간복잡도 O(V*E)지만 실제로는 기존 벨만-포드 알고리즘에 비해 매우 빠른  O(V+E) || O(E)의 성능을 보인다**
  
- 포드-폴커슨 알고리즘
  - 최대 유량 알고리즘 
  
  
<br>

### 최소 스패닝 트리 알고리즘
- Minimum Spanning tree Algorithm
- 노드 간 최소한의 간선을 사용한 최적의 가중치 트리를 찾는 알고리즘 

#### Kruskal Algorithm
- 그리디 특성을 가진 간선 기준 최소 스패팅 트리 알고리즘
- 간선을 가중치 기준 정렬하여 스패닝 트리를 구한다.
  - 이때 순환이 일어나지 않도록 UnionFind(서로소집합) 알고리즘을 사용한다.
  - V-1 개의 간선만을 이용해 최적의 스패닝트리를 구한다. 
  - * UnionFind 알고리즘 : 연결된 노드 간 부모노드를 통합시킴으로서 간선이 이어질 시의 순환여부를 체크하는데 사용할 수 있다. 

<br>

#### Prim Algorithm
- 노드 기준으로 최소 스패닝 트리를 구하는 알고리즘

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

### LIS : 가장 긴 증가하는 수열 알고리즘
- <Algorithm>, lower_bound() 기능을 활용한다.
- 수열의 증가하는 긴 수열을 구할때 사용한다. 
- LIS 알고리즘 활용 예시 ▼
~~~ C++
#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;
void effectiveBandoChaeDesign() {
    ios_base::sync_with_stdio(0); cin.tie(0);
    int N;
    cin >> N;
    vector<int> V(40001,0);
    vector<int> Ans;
    for(int i=0; i<N; i++) cin >> V[i];
    for(int i=0; i<N; i++) {
        int idx = lower_bound(Ans.begin(), Ans.end(), V[i]) - Ans.begin(); // V[i]값 이상 존재하는 반복자를 반환한다.
        if(idx == Ans.size()) Ans.push_back(V[i]); // Ans벡터 안에 만약 V[i]이상의 값이 없으면 V[i]를 Ans 벡터에 추가
        else Ans[idx] = V[i]; // Ans벡터 안에 V[i]이상의 값이 존재했다면, 그곳의 값을 V[i]로 만든다.
    }
    printf("%d\n",(int)Ans.size());
}
~~~
		      
<br>
<br>

### Prefix Sum 알고리즘
- 미지 특정 인덱스 까지의 합을 기록하려 구간합을 구하는 알고리즘
- Prefix Sum Algorithm Example)
~~~ C++
/// MARK: - 합 구하기_11441 : Prefix Sum Problems

#include <iostream>
#include <string.h>
using namespace std;

void solveTheSumOfNumber() {
    int N; cin>>N;
    int arr[N];
    memset(arr,0,sizeof(arr));
    
    /// 1) 미리 배열 arr에 구간값을 기록한다. 
    for(int i=0; i<N; i++) {
        cin>>arr[i];
        if(i!=0) arr[i]+=arr[i-1];
    }
    
    int T; cin>>T;
    for(int i=0; i<T; i++) {
        int s,e; cin>>s>>e;
	
        /// 2) e번째까지의 구간합 - s번째까지의 구간합을 계산하여 s ~ e 구간의 부분합을 구할 수 있다. 
        printf("%d\n",arr[e-1]-((s!=1) ? arr[s-2] : 0));
    }
    return;
}
~~~

### Manacher's Algorithm
- 가장 긴 펠린드롬(좌우 대칭 문자열) 문자열을 O(N) 복잡도로 구할 수 있는 특수한 알고리즘
- Manacher's Algorithm(마나커 알고리즘)은 A[i]가 존재할때, i-A[i] ~ A[i]+i 범위의 팰린드롬문자열이 존재하면, i-A[i]-1 ~ A[i]+i+1 의 팰린드롬 문자열은 없음을 이용하는 O(N) 복잡도의 특수 알고리즘 기법이다.
~~~ C++
/// MARK: - 가장 긴 펠린드롬 부분 문자열 문제 예시 : Manacher's Algorithm Problem

#include <iostream>
#include <vector>
using namespace std;

vector<int> A(1000000,0);
class LongestPalindromicSubstring {
public:
    /// MARK: manacherAlgorithm
    string manacherAlgorithm(string S) {
        // r : 가장 큰 팰린드롬 문자열의 우측 범위를 저장 -> 해당 값이 줄어드는 경우는 없으므로 S 문자열을 순회하며 O(N)의 복잡도를 가진 후 종료
        // p : 가장 큰 팰린드롬 문자열의 중심 축을 저장
        int r=0,p=0;
        int sum=0,mxIdx=0;
        string Ans = "";
        for(int i=0; i<S.length(); i++) {
            // 현재 식별된 펠린드롬 문자열 범위 안에 있으면, 펠린드롬 범위 내 대칭점의 값과 '최근 펠린드롬 우측범위(r)-i' 값의 최솟값으로 초기화
            // 현재 식별된 펠린드롬 문자열 범위 밖이라면, 0으로 초기화
        for(int i=0; i<S.length(); i++) {
            if(i <= r) A[i] = min(A[2*p-i],r-i);
            else A[i] = 0;
            
            /// 펠린드롬 문자열 여지가 있는 인덱스를 기준으로 펠린드롬 가능 범위를 지정한다. 
            //  0 이상으로 초기화 된 경우에도 그 이상의 바깥 문자열을 비교하며, 더욱 긴 펠린드롬 문자열이 식별 시 A[i]를 증가시킨다. 
            while(i-A[i]-1 >= 0 && i+A[i]+1 <S.length() && S[i-A[i]-1]==S[i+A[i]+1]) A[i]++;
            
            /// 더 큰 팰린드롬 문자열 우측 범위가 식별되면 갱신 후, 그 중심점(P) 또한 갱신한다.
            if(r < i+A[i]) {
                r = i+A[i];
                p = i;
            }
            
            // 가장 긴 팰린드롬 문자열 길이 밎 그 중심점 인덱스를 저장한다. 
            if(sum < A[i]) {
                sum = A[i];
                mxIdx = i;
            }
        }
	
        for(int i=max(mxIdx-A[mxIdx],0); i<min(mxIdx+A[mxIdx],(int)S.length()-1); i++) {
            Ans += S[i];
        }

        return Ans;
    }
    
    string longestPalindrome(string s) {
        
        // "bb" 같은 짝수 개의 펠린드롬 부분문자열까지 식별하기 위해 문자열 사이에 '@' 문자를 임의로 끼워서 manacher's Algorithm을 수행한다.
        string S = "@";
        for(int i=0; i<s.length(); i++) {
            S+=s[i];
            S+='@';
        }

        string ANS = manacherAlgorithm(S);
        string Ans = "";
        
        /// '@' 문자를 제외한 가장 긴 펠린드롬 부분문자열을 반환한다.
        for(auto s: ANS) {
            if(s!='@') Ans+=s;
        }
        return Ans;
    }
};
~~~

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

<br>

  - round(<값>) : 반올림 함수
  - ✓ floor(value + 0.5)를 통한 반올림 기법 예시
~~~ C++
int getRound() {
    double N;
    cin >> N;
    for(int i=10; i<100000000; i*=10) {
        if(N>i) {
	/// * floor(value+0.5)를 통해 반올림과 같은 연산을 할 수 있다. 
            int temp = floor(N/i+0.5);
            N = temp*i;
        }
    }
    return N;
}
~~~

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

## C++_타입

<br>

### 타입 최댓값 출력방법
- <climits>
- <climits> 사용 예시 ▼
~~~ C++
#include <iostream>
#include <climits>
using namespace std;

int main() {
    
    unsigned int us = UINT_MAX;
    int is = INT_MAX;
    long ls = LONG_MAX;
    long long lls = LONG_LONG_MAX;
    printf("unsigned int range: %u\n",us);
    printf("int range: %d\n",is);
    printf("long range: %ld\n",ls);
    printf("long long range: %lld\n",lls);
    
    return 0;
}	
~~~

<br>

<div> <img width=460 src="https://user-images.githubusercontent.com/4410021/65826312-6d2ef100-e2bd-11e9-8b8e-e1e3a9995c43.png">
<div>

<br>
<br>

## C++_자료구조

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

  - insert를 활용한 벡터 합치기
~~~ C++
vector<int> answer = {1,2,3};
vector<int> temp(3,6);
answer.insert(answer.end(),temp.begin(),temp.end()); // 1 2 3 6 6 6
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

- unique(<시작주소>,<끝주소>)
  - 특정 범위의 중복값을 제거 후 컨테이너 뒤로 처박아 둔다.
    * 완벽한 중복값 제거를 위해 erase 함께 활용 필요 
~~~ C++
/// unique 사용예시 1)
#include <vector>
#include <algorithm>
int main() {    
    vector<int> v = {1,1,1,2,2,2,3,3,3,4,5,6};
    v.erase(unique(s.begin(),s.end()),s.end()) // 1 2 3 4 5 6
    return 0;
}
~~~

~~~ C++
/// unique 사용예시 2)
#include <iostream>
#include <algorithm>
#include <vector>
using namespace std;

void removeTheDuplicate() {
    while(1) {
        int N; cin>>N;
        vector<int> V(N,0);
        if(N==0) break;
        for(int i=0; i<N; i++) cin>>V[i];
        V.erase(unique(V.begin(), V.end()),V.end());
        for(auto v: V) printf("%d ",v);
        printf("$\n");
    }
    return;
}
~~~

<br> 

- reverse(<시작주소>,<끝주소>)
  - Algorithm 헤더로 사용 가능
  - **특정 영역의 요소를 역순으로 뒤집는다.**
  - **시간복잡도 : O(n)**
~~~ C++
/// reverse() 사용 예시)
#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;


int arrayReverseExample() {
    int n;
    cin >> n;
    vector<int> arr(n,0);
    for(int i=0; i<n; i++) {
        cin >> arr[i];
    }
    /// * 벡터 arr의 전체영역을 역순으로 뒤집는다. 
    reverse(arr.begin(), arr.end());
    for(auto v : arr) printf("%d ",v); // 역순으로 뒤집어진 vector Element 출력

    return 0;
}
~~~
  
- lower_bound(<주소시작>,<주소끝>,<타겟값>), upper_bound(<주소시작>,<주소끝>,<타겟값>)
  - <타겟값> 이상 / 이하의 값이 있는 주소를 반환한다. 
  - 이진탐색으로 작동하기 때문에 사용되는 컨테이너 내 요소는 정렬되어있어야 사용 가능하다. 
  - **시간복잡도, logN**
  
~~~ C++
// lower_bound 사용 예시)
#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

int main() {
    int T; cin>>T;
    vector<int> V(T,0);
    vector<int> Ans;
    for(int i=0; i<T; i++) cin>>V[i];
    for(int i=0; i<T; i++) {
    	/// V[i] 이상의 값이 Ans 벡터 내 존재하는 지 확인한다. 
        auto IDX = (lower_bound(Ans.begin(), Ans.end(), V[i]) - Ans.begin());
	/// 만약 값이 존재하지 않는다면, (IDX == Ans.size()) 해당 값을 Ans에 추가하고 만약 존재하면 해당 인덱스의 값을 갱신
        if(IDX == Ans.size()) Ans.push_back(V[i]);
        else Ans[IDX] = V[i];
    }
    
    printf("%d\n",(int)Ans.size());
    puts("");
    
    return 0;
}
~~~

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

## ✓ Deque
- 앞/뒤로 푸시/팝이 가능한 자료구조

<br>

### Deque 기능
- **시간복잡도**
  - **원소추가 N(1), 원소제거 N(1)**
- push_back()
  - 뒤에 요소를 추가한다.
- push_front()
  - 앞에 요소를 추가한다.
- pop_back()
  - 뒤의 요소를 제거한다. 
- pop_front()
  - 앞의 요소를 제거한다. 
- size()
  - 현재 크기 반환
- empty() 
  - 컨테이너가 비었는지 Boolean 값 반환 
  
~~~ C++
/// MARK: - Deque_10866 : Deque Structure Implementation Problem
//  덱(deque) 사용 예시)
#include <iostream>
#include <deque>
using namespace std;

void theDequeImplementation() {
    deque<int> DQ;
    int T; cin>>T;
    while(T--) {
        string S; cin>>S;
        if(S=="push_back") {
            int N; cin>>N;
            DQ.push_back(N);
        } else if(S=="push_front") {
            int N; cin>>N;
            DQ.push_front(N);
        } else if(S=="front") {
            if(DQ.empty()) printf("%d\n",-1);
            else {
                printf("%d\n",DQ.front());
            }
        } else if(S=="back") {
            if(DQ.empty()) printf("%d\n",-1);
            else {
                printf("%d\n",DQ.back());
            }
        } else if(S=="size") {
            printf("%d\n",(int)DQ.size());
        } else if(S=="pop_front") {
            if(DQ.empty()) printf("%d\n",-1);
            else {
                printf("%d\n",DQ.front());
                DQ.pop_front();
            }
        } else if(S=="pop_back") {
            if(DQ.empty()) printf("%d\n",-1);
            else {
                printf("%d\n",DQ.back());
                DQ.pop_back();
            }
        } else if(S=="empty") {
            printf("%d\n",DQ.empty());
        }
    }
    return;
}
~~~

<br>
<br>

## ✓ Map

<br>

### 선언방식
~~~ C++
/// MARK: map 기본 설정 
map<int,int> m;

/// MARK: map 값 사전 설정 방법, {<키>,<값>}...
unordered_map<string,int> MP = {{"i",-1},{"pa",-1},{"te",-1},{"ni",-1},{"niti",-1},{"a",-1},{"ali",-1},{"nego",-1},{"no",-1},{"ili",-1}};
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
- map과 기본적인 동작, 선언, 초기화 방법 등 유사하다. 

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

## C++_문자열
- string Type
- <string>, <string.h> 헤더를 통해 string 문자열 타입을 사용 가능
- string 초기화 방법
~~~ C++
string str = "";
string str2(3,'T'); // TTT
~~~

### 문자열 반복 문자 얻기
- std::string(<반복횟수>,<반복시킬문자>)
- 특정 문자 반복 문자열 활용 예시 ▼)
~~~ C++
for(int i=0; i<N; i++) {
        string before,ansStr=""; cin>>before;
        SV.push_back(before);
	
	/// ansStr 문자열 변수에 SV[i][j] 문자가 2번 반복된 문자열을 추가한다. 
        for(int j=0; j<SV[i].length(); j++) {
            ansStr += string(2, SV[i][j]);
        }
        Ans.push_back(ansStr);
    }
~~~

<br>

### char[] 문자열 -> string 문자열로 변환하기
~~~ C++

/// 1) char[] 배열 문자열, str을 초기화 인자로 하여 초기화 하면 
char str[11]; memset(str,' ',sizeof(str));

/// 2) 쉽게 char[] to string 문자열 변환이 가능하다. 
string Str(str);
~~~

<br>

### string 문자열 -> char[] 문자열로 변환하기 
- char 배열에 string 변수를 할당 + 맨 뒤에 '\0' 추가한다.
~~~ C++

#include <string.h>
#include <string>
#include <algorithm>

int main() {
     /// string을 한줄 입력받는다.
     getline(cin,str,'\n');
     
     /// char형 배열에 string 값 할당
     vector<char> S(str.begin(), str.end());
     
     /// 맨 끝 '\0' 추가
     S.push  _back('\0');
     
     /// char 포인터에 char 배열 맨 앞의 값 주소를 할당
     /// -> string to char 변환 완료 
     ch = &S[0];
     vector<int> V;
     if(str.length()==1 && S[0]=='0') break;
     
     /// 변환된 char 문자열의 활용
     char *tok;
     tok = strtok(ch," ");
     while(tok!=NULL) {
         V.push_back(stoi(tok));
         tok = strtok(NULL, " ");
     }
  }
~~~

<br>

### 문자열 기능 함수 `mutating`
- reverse(string.begin(), string.end())
  - 문자열을 뒤집어준다. 접근한 문자열 자체 함수 내에서 변경된다.
~~~ C++
/// MARK: - reverse() 사용 예시)
#include <iostream>
#include <vector>
#include <algorithm>
#include <string>
using namespace std;

int calcReversedNumber(const int &a, const int &b) {
    string aStr = to_string(a);
    string bStr = to_string(b);
    /// 1) aStr, bStr을 뒤집는다. 
    reverse(aStr.begin(), aStr.end());
    reverse(bStr.begin(), bStr.end());
    
    /// 2) 뒤집은 문자열을 숫자로 변환 후 계산한 결과를 다시 문자열 변환 후 reversedResult에 넣는다. 
    string reversedResult = to_string(stoi(aStr) + stoi(bStr));
    
    /// 3) 연산 결과를 다시 뒤집어 숫자로 변환 -> 값을 반환한다. 
    reverse(reversedResult.begin(), reversedResult.end());
    return stoi(reversedResult);
}

int main() {
    ios_base :: sync_with_stdio(0); cin.tie(0);
    int T; cin >> T;
    while(T--) {
        int a,b; cin >> a >> b;
        int Ans = calcReversedNumber(a,b);
        printf("%d\n",Ans);
    }
    return 0;
}
~~~

<br>

- tolower(), toupper()
  - 문자 or 문자열의 대소문자 변환 함수 
~~~ C++
/// 문자열 대소문자 변환 예시)
int main() {
    ios_base :: sync_with_stdio(0); cin.tie(0);
    string S; cin>>S;
    /// * 만약 대문자면 tolower(), 소문자면 toupper()를 사용하면 대소문자를 변환 시킨다. 
    for(int i=0; i<S.length(); i++) S[i] = S[i]<97 ? tolower(S[i]) : toupper(S[i]);
    printf("%s\n",S.c_str());
    return 0;
}
~~~

<br>

- strtol
  - 문자열의 진법표현을 다른 진법표현으로 변환할 수 있다. 
  - <stdlib.h> 기능
~~~ C++
// 8진법은 oct, 16진법은 hex
// 8진법 0, 16진법 0x
#include <stdllib.h>
void convertHexCode() {
    string S;
    int cnt=0;
    while(cnt<=1000) {
        cin>>S;
        cnt+=S.length();
        string Ans="";
        while(S.length()!=0) {
            string temp = "0x" + S.substr(0,2);
	    /// * strtol() 함수를 사용해 16진수를 10진수로 변환한다.
            long num = strtol(temp.c_str(),NULL,16);
            Ans += char(num);
            S = S.substr(2);
        }
        printf("%s\n",Ans.c_str());
    }
    return;
}
~~~
  
<br>

~~~ C++
/// MARK: - 8진수, 10진수, 16진수 별 10진수 변환 출력하기 예제 
//  * stdlib.h 를 추가 후, strtol을 사용하여 간단하게 진수 변환 가능
#include <iostream>
#include <stdlib.h>
#include <string>
using namespace std;

void octalAndDecimalAnsHexaDecimal() {
    string S; cin>>S;
    long Ans=0;
    if(S[0]=='0') {
        if(S[1]=='x') Ans = strtol(S.c_str(), NULL, 16);
        else Ans = strtol(S.c_str(), NULL, 8);
    } else Ans=stoi(S);
    printf("%ld\n",Ans);
    return;
}
~~~

<br>
<br>

## 자주 사용되는 헤더(Header)

<br>

### iostream
- C++ 입출력 헤더 
- cin, cout 등의 입출력 함수 사용 가능 
- * C++_입출력 코너 참고
	
<br>
	
### algorithm
- sort(), fill(), reverse() 등 다양한 유용 함수 제공
- sort()
  - 퀵정렬+힙정렬을 혼합한 정렬함수 제공
~~~ C++
sort(V.begin(), V.end(), greater<int>);
~~~
	
<br>

- reverse
  - 시퀀스 컨테이너의 요소를 뒤집어주는 함수, mutating 함수
~~~ C++
reverse(S.begin(), S.end());
~~~

<br>

- fill
  - 특정 시퀄스 영역을 특정 값으로 채워 줌
~~~ C++
// 배열의 경우)
fill(begin(Visit), begin(Visit)+N+1, false);

// 벡터의 경우)
fill(V.begin(), V.end(), true);
~~~

<br>

### bits/stdc++.h
- 알고리즘 간 사용될 수 있는 모든 기능을 사용할 수 있다.
- Visual Studio가 아닌 Xcode 등 일부 환경에서는 사용 불가능하다.

<br>

### string
- 문자열 타입, string 사용 시 추가 

<br>

### sstream
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
<br>

## ✓ C++_입출력
- 출력
  - printf("...") / cout << ...
- 입력
  - scanf("%d",&value) / cin >> ...
  
<br>

### cin / cout 입출력 속도 개선 
  - printf(), scanf() 사용에 제한이 생기므로 사용에 주의가 따른다. 
~~~ C++
/// cin / cout 입출력 속도 개선방법 예시)
ios_base :: sync_with_stdio(0); cin.tie(0); cout.tie(0);
~~~

<br>

### while + 일괄 입력 처리
- while문 + cin 을 사용해서 일괄적인 값들을 읽어들일 수 있다. 
~~~ C++
/// while(cin >> value) 사용예시
int sum=0;
int value=0;
while(cin >> value) {
    sum += value;
}
~~~

<br>

### 끝을 모르는 입력을 받을때 사용하는 while(scanf())
  - 입력의 구체적인 끝이 주어지지 않았을때 사용할 수 있다.
  - while(1), while(true)를 사용하면 출력초과가 발생하는 경우 대체로 사용 가능하다.
~~~ C++
/// 끝을 모르는 입력 받을때 사용 예시 
void thePermutation() {
    char str[11]; memset(str,' ',sizeof(str));
    int pos;
    
    while(scanf("%s %d",str,&pos)!=EOF) {
        string S(str);
        sort(S.begin(),S.end());
        int cnt=1;
        bool flag=false;
        printf("%s %d = ",S.c_str(),pos);
        do {
            if(cnt==pos) {
                printf("%s\n",S.c_str());
                flag=true;
                break;
            }
            cnt++;

        }while(next_permutation(S.begin(),S.end()));
        if(!flag) printf("No permutation\n");
    }
    return;
}
~~~

<br>

### 특정 길이의 문자열을 계속 입력받을 때 사용하는 getchar(), fgets..., ~scanf()...
- while(~scanf("%c", &C)) {}
- while((C=getchar()) != EOF) {} 
~~~ swift
#include <iostream>
#include <vector>
using namespace std;
    
int main() {
    vector<int> AV(26,0);
    char C;
    // 문자열 특정 갯수까지 계속 입력받기 1)
    while(~scanf("%c", &C)) {
        if(C>='a' && C<='z') AV[C-'a']++;
    }
    
    // 문자열 특정 갯수까지 계속 입력받기 2)
//    while((C=getchar()) != EOF) {
//        if(C>='a' && C<='z') AV[C-'a']++;
//    }
    
    int max = 0;
    for(int i=0; i<26; i++) max = max<AV[i] ? AV[i] : max;
    for(int i=0; i<26; i++) if(max==AV[i]) printf("%c",i+'a');
    
    return 0;
}
~~~

<br>

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

### iterator 역방향 반복자 사용하기
- iterator에 rbegin(), rend() 를 로 접근해서 역방향 반복자를 사용 가능하다. 
- 반복자를 역순으로 순회하고자 할 때 사용 가능하다. 
- 역방향 반복자 사용 예시 
~~~ swift
#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

int main() {
    ios_base :: sync_with_stdio(0); cin.tie(0);
    int N; cin>>N;
    vector<int> V(N,0);
    for(int i=0; i<N; i++) cin>>V[i];
    sort(V.begin(),V.end());
    // V.rbegin() ~ V.rend() 구간은 V 벡터의 역방향 순회를 하게 된다. 
    for(auto iter = V.rbegin(); iter!=V.rend(); ++iter) {
        printf("%d\n",*iter);
    }
    
    return 0;
}
~~~

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
- <Algorithm> 기능
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

### lower_bound(first iterator, last iterator, Value)
- Binary Search Structure
- Value값 이상의 값이 존재하는 iterator를 반환한다. 

### upper_bound(first iterator, last iterator, Value)
- Binary Search Structure
- Vallue값 초과의 값이 존재하는 iterator를 반환핟나. 

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

### strcat(<문자열1>,<문자열2>)
- 문자열 두개를 붙인다. 
~~~ C++
#include <string.h>
int main() {
	string s1="AB", s2="AV";
	strcat(s1,s2); // "ABAV"
	return 0;
}
~~~

<br>

### strtok
- 문자열을 특정 문자 기준으로 잘라낸다.
~~~ C++
/// MARK: - strtok 사용, 문자열 잘라내기 예시)

int main() {
    char s1[30] = "The Little Prince";  // 크기가 30인 char형 배열을 선언하고 문자열 할당

    char *ptr = strtok(s1, " ");      // " " 공백 문자를 기준으로 문자열을 자름, 포인터 반환

    while (ptr != NULL)               // 자른 문자열이 나오지 않을 때까지 반복
    {
        printf("%s\n", ptr);          // 자른 문자열 출력
        ptr = strtok(NULL, " ");      // 다음 문자열을 잘라서 포인터를 반환
    }

    return 0;
}
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


