#include <iostream>
using namespace std;

struct nodo {
  int dato;
  struct nodo *siguiente;
};
typedef struct nodo *pila;
typedef struct nodo *tnodo;

void push(pila *p, int v) {
  tnodo nuevo = new(struct nodo);
  nuevo->dato = v;
  nuevo->siguiente = *p;
  *p = nuevo;
}
int pop(pila *p) {
  tnodo n = *p; // n apunta al tope
  int v = n->dato;
  *p = n->siguiente;
  return v;
}

int main() {
  pila mpila;
  push(&mpila, 1);
  push(&mpila, 2);
  push(&mpila, 3);
  cout<<pop(&mpila)<<endl;
  cout<<pop(&mpila)<<endl;
  cout<<pop(&mpila)<<endl;
  return 0;
}
