//
//  FESTIVAL.cpp
//  JongManBookStudy
//
//  Created by MinKyeongTae on 25/09/2019.
//  Copyright © 2019 MinKyeongTae. All rights reserved.
//

/// MARK: - 종만북 입문 문제, FESTIVAL
/// L일 이상의 연속 스케쥴을 잡으로 한다. 이떄의 최소 평균 비용을 출력하라!!

#include <iostream>
#include <vector>
#include <tuple>
#include <string>
#include <algorithm>

using namespace std;

typedef pair<double,double> Pair;

int main() {
    ios_base :: sync_with_stdio(0); cin.tie(0);
    int T;
    cin >> T;
    while(T--) {
        int N, L;
        cin >> N >> L;
        vector<int> V(N,0);
        Pair MIN = make_pair(2100000000,1.0);
        
        /// 입력을 받는다. 초기 성립되는 sum 값을 설정한다.
        for(int i=0; i<N; i++) cin >> V[i];
        
        for(int i=0; i<N; i++) {
            int sum=0;
            int cnt=0;
            for(int j=0; j<N; j++) {
                sum+=V[j];
                cnt++;
                if(cnt < L) continue;
                else {
                    if(MIN.first/MIN.second > double(sum)/cnt) {
                        MIN.first = sum;
                        MIN.second = cnt;
                    }
                }
            }
        }
        printf("%.10f\n",MIN.first/MIN.second);
    }
    return 0;
}
