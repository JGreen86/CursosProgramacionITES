#include <iostream>
using namespace std;

struct nodo {
  int dato;
  struct nodo *siguiente;
};
struct nodo *tope;

void push(struct nodo **pila, int v) {
  struct nodo *nuevo = new(struct nodo);
  nuevo->dato = v;
  nuevo->siguiente = *pila;
  *pila = nuevo;
}
int pop(struct nodo **pila) {
  int v = (*pila)->dato;
  *pila = (*pila)->siguiente;
  return v;
}

int main() {
  tope = NULL;
  push(&tope,3);
  push(&tope,2);
  push(&tope,1);

  cout<<pop(&tope)<<endl;
  cout<<pop(&tope)<<endl;
  cout<<pop(&tope)<<endl;
  return 0;
}
