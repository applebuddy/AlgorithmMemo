//
//  BinaryTree.cpp
//  Structures
//
//  Created by MinKyeongTae on 2020/02/02.
//  Copyright © 2020 MinKyeongTae. All rights reserved.
//

// MARK: Binary Tree

#if 0
#include <iostream>
using namespace std;
template <typename T> // 다형성을 위해 타입은 템플릿을 사용,
class Node {
private:
    T value;
    Node *left;
    Node *right;
    Node *root;
public:
    Node() : value(0), left(nullptr), root(nullptr) {};
    Node(T _value) : value(_value), right(nullptr), root(nullptr) {};
    Node(T _value, Node* _left, Node* _right) : value(_value), left(_left), right(_right), root(nullptr) {
        // 만약 왼쪽 오른쪽 노드가 존재한다면, 현재 노드는 부모노드이다.
        if(nullptr != _left)
            _left->root = this;
        if(nullptr != _right)
            _right->root = this;
    };
    
    ~Node() {};
    
    void setLeft(Node* node) { this->left = node; }
    void setRight(Node* node) { this->right = node; }
    Node* getLeft() { return left; }
    Node* getRight() { return right; }
    T getValue() { return value; }
};

// 재귀를 사용한 전위 / 중위 / 후위 노드 출력
template <typename T>
void printPreorder(Node<T>* node) // 전위
{
    if(node == nullptr) return;
    cout << node->getValue() << " ";
    printPreorder(node->getLeft());
    printPreorder(node->getRight());
}

template <typename T>
void printInorder(Node<T>* node) // 중위
{
    if(node == nullptr) return;
    printInorder(node->getLeft());
    cout << node->getValue() << " ";
    printInorder(node->getRight());
}

template <typename T>
void printPostOrder(Node<T>* node) { // 후위
    if(node == nullptr) return;
    printPostOrder(node->getLeft());
    printPostOrder(node->getRight());
    cout << node->getValue() << " ";
}

int main() {
    ios_base :: sync_with_stdio(0); cin.tie(0); cout.tie(0);
    
    // TREE STATUS
        
    //            3
    //        1       2
    //      4   5   6
    
    // inorder : 4 1 5 3 6 2
    // preorder : 3 1 4 5 2 6
    // postorder : 4 5 1 6 2 3
    
    Node<int>* node1 = new Node<int>(1);
    Node<int>* node2 = new Node<int>(2);
    Node<int>* node3 = new Node<int>(3, node1, node2);
    Node<int>* node4 = new Node<int>(4);
    Node<int>* node5 = new Node<int>(5);
    Node<int>* node6 = new Node<int>(6);

    node1->setLeft(node4);
    node1->setRight(node5);
    node2->setLeft(node6);
    
    cout << "전위 결과 : ";
    printPreorder(node3);
    puts("");
    cout << "중위 결과 : ";
    printInorder(node3);
    puts("");
    cout << "후위 결과 : ";
    printPostOrder(node3);
    puts("");
    return 0;
}
#endif
