// Lista simplemente enlazada
// Falta agregar métodos para buscar, actualizar, eliminar,
// imprimir, etc...
#include <iostream>
using namespace std;
// Representación de un nodo
struct nodo {
  int dato;
  struct nodo *siguiente; // solo tenemos un apuntador al elemento siguiente
};
// Lista mantendrá un apuntador al inicio y final de la Lista
// También almacena su tamaño
typedef struct {
  struct nodo *inicio;
  struct nodo *final;
  int size;
}Lista;
// Insertar el valor 'v' al final de la lista
void insertarFinal(Lista *lista, int v) {
  nodo *nuevo = new(struct nodo);
  nuevo->dato = v;
  nuevo->siguiente = NULL;
  lista->final->siguiente = nuevo;
  lista->final = nuevo;
  lista->size = lista->size + 1;
}
// Agrega 'v' al final de la lista (por default)
void insertar(Lista *lista, int v) {
  nodo *nuevo = new(struct nodo);
  nuevo->dato = v;
  nuevo->siguiente = NULL;
  if(lista->size == 0) { // Lista vacia
    lista->inicio = nuevo;
    lista->final = nuevo;
    lista->size = lista->size + 1;
  } else { // No vacia
    insertarFinal(lista, v);
  }
}
// Insertar 'v' al inicio de la lista
void insertarInicio(Lista *lista, int v) {
  nodo *nuevo = new(struct nodo);
  nuevo->dato = v;
  nuevo->siguiente = lista->inicio;
  lista->inicio = nuevo;
  lista->size = lista->size + 1;
}
// Inserta 'v' en la posición 'pos' de la lista
void insertar(Lista *lista, int v, int pos) {
    if(pos == 0) { // Si posición es cero entonces insertamos al inicio
      insertarInicio(lista, v);
      return;
    }
    if(pos == (lista->size - 1)) { // Si posición corresponde al final, insertamos al final
      insertarFinal(lista, v);
      return;
    }
    // Si no se cumplen las condiciones anterios,
    // entonces insertamos en posiciones intermedias entre inicio y final
    nodo *aux = lista->inicio;
    int i=1;
    // Buscamos el nodo anterior a la posición deseada
    while(i < (lista->size) && i < pos) {
      aux = aux->siguiente;
      i++;
    }
    // Creamos el nodo a insertar
    nodo *nuevo = new(struct nodo);
    nuevo->dato = v;
    // Enlazamos 'nuevo' con el nodo a la derecha de 'aux'
    nuevo->siguiente = aux->siguiente;
    // Enlazamos 'aux' con nuevo
    aux->siguiente = nuevo;
    // Incrementamos el tamaño de la lista
    lista->size = lista->size + 1;
}
// Creamos una Lista
Lista crearLista() {
  Lista lista;
  lista.inicio = NULL;
  lista.final = NULL;
  lista.size = 0;
  return lista;
}
int main() {
  Lista lista = crearLista();
  insertar(&lista, 1);
  insertarFinal(&lista, 2);
  insertarInicio(&lista, 3);
  insertar(&lista, 4, 1);
  // Hay que imprimir para corroborar las inserciones
  return 0;
}
