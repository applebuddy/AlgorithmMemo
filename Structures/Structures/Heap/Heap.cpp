//
//  Heap.cpp
//  Structures
//
//  Created by MinKyeongTae on 2020/01/23.
//  Copyright © 2020 MinKyeongTae. All rights reserved.
//

// MARK: Heap
#if 0
#include <stdio.h>
#include <vector>
using namespace std;

int main() {
    
    vector<int> heap = {8, 7, 5, 6, 3, 5, 9, 1, 6};
    for(int i=1; i<heap.size(); i++) {
        int c = i;
        do {
            int root = (c - 1) / 2;
            if(heap[root] < heap[c]) {
                int temp = heap[root];
                heap[root] = heap[c];
                heap[c] = temp;
            } else break;
            c = root;
        }while(c!=0);
    }
    
    printf("-First Heapify-\n");
    for(auto v: heap) printf("%d ",v);
    puts("");
    
    // 가장 큰값인 루트 값을 맨 뒤로 빼면서 Heapify를 반복, 오름차순을 만들 수 있다.
    for(int i=(int)heap.size()-1; i>=0; i--) {
        int temp = heap[0];
        heap[0] = heap[i];
        heap[i] = temp;
        int root = 0;
        int c = 1;
        do {
            c = 2 * root + 1;
            // 자식 중에 더 큰 값을 찾기
            if(heap[c] < heap[c+1] && c < i-1) {
                c++;
            }
            // 루트보다 자식이 더 크다면 서로 교환
            if(heap[root] < heap[c] && c < i) {
                int temp = heap[root];
                heap[root] = heap[c];
                heap[c] = temp;
            } else break;
            root = c;
        }while(c<i);
    }
    
    printf("-Result of HeapSorting-\n");
    for(auto v: heap) printf("%d ",v);
    puts("");
    
    return 0;
}
#endif
