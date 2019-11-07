#include <iostream>
using namespace std;

struct nodo {
  int dato;
  struct nodo *izq;
  struct nodo *der;
};
typedef struct nodo *nraiz;

void insertar(nraiz *raiz, int v) {
  struct nodo *nuevo = new(struct nodo);
  nuevo->dato = v;
  nuevo->izq = NULL;
  nuevo->der = NULL;

  if(*raiz == NULL) { // Arbol vacio
    *raiz = nuevo;
    return;
  }
  // Arbol no vacio
  struct nodo *padre = NULL;
  struct nodo *actual = *raiz;
  // Buscar el nodo
  while(actual != NULL && actual->dato != v) {
    padre = actual;
    if(v > actual->dato) actual = actual->der;
    else if(v < actual->dato) actual = actual->izq;
  }
  if(actual != NULL) return; // El nodo ya se encuentra en el arbol
  // Si actual está vacio, entonces insertar nodo
  if(v > padre->dato) {
    padre->der = nuevo;
  } else if(v < padre->dato) {
    padre->izq = nuevo;
  }
}
void inorder(nraiz raiz) {
  if(raiz != NULL) {
    inorder(raiz->izq);
    cout<<raiz->dato<<endl;
    inorder(raiz->der);
  }
}

int main() {
  nraiz raiz = NULL;
  insertar(&raiz, 30);
  insertar(&raiz, 20);
  insertar(&raiz, 10);
  insertar(&raiz, 15);
  insertar(&raiz, 45);
  insertar(&raiz, 35);
  insertar(&raiz, 50);

  inorder(raiz);
  
  return 0;
}
