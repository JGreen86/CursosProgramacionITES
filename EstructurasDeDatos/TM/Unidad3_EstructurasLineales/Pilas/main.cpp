#include <iostream>
using namespace std;

struct nodo {
  int dato;
  struct nodo *siguiente;
};
struct nodo *tope;

void push(int v) {
  struct nodo *nuevo = new(struct nodo);
  nuevo->dato = v;
  nuevo->siguiente = tope;
  tope = nuevo;
}
int pop() {
  int v = tope->dato;
  tope = tope->siguiente;
  return v;
}

int main() {
  tope = NULL;
  push(3);
  push(1);
  push(2);

  cout<<pop()<<endl;
  cout<<pop()<<endl;
  cout<<pop()<<endl;
  return 0;
}
