package com.jego;

public class PilaEnlazada<T> extends PilaAbstracta {
    private Nodo tope=null;
    private int size=0;

    @Override
    void push(Object e) {
        if (size == 0) {
            tope = new Nodo(e, null);
            size++;
        } else {
            Nodo n = new Nodo(e,tope);
            tope = n;
            size++;
        }
    }

    @Override
    Object pop() {
        T t = (T) tope.getDato();
        tope = tope.getSiguiente();
        size--;
        return t;
    }

    @Override
    Object peek() {
        return null;
    }

    @Override
    int size() {
        return 0;
    }

    @Override
    boolean isEmpty() {
        return false;
    }

    private class Nodo<T> {
        private T dato;
        private Nodo siguiente;

        public Nodo(T dato, Nodo siguiente) {
            this.dato = dato;
            this.siguiente = siguiente;
        }

        public T getDato() {
            return dato;
        }

        public Nodo getSiguiente() {
            return siguiente;
        }
    }
}
