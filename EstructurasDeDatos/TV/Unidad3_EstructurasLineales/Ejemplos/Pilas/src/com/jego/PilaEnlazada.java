package com.jego;

public class PilaEnlazada<T> extends PilaAbstracta {
    private Nodo tope=null;
    private int size=0;

    @Override
    void push(Object e) {
        Nodo n = new Nodo(e,tope);
        tope = n;
        size++;
    }

    @Override
    Object pop() {
        if (tope == null || size == 0) return null;
        T t = (T) tope.getDato();
        tope = tope.getSiguiente();
        size--;
        return t;
    }

    @Override
    Object peek() {
        if (tope == null || size == 0) return null;
        return tope.getDato();
    }

    @Override
    int size() {
        return size;
    }

    @Override
    boolean isEmpty() {
        if (size<=0) return true;
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
