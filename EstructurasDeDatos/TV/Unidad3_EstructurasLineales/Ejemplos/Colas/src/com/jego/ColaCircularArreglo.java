package com.jego;

public class ColaCircularArreglo<T> implements ICola {

    private T[] datos;
    private int frente=0;
    private int cola=-1;
    private int size;

    public ColaCircularArreglo(int tam) {
        datos = (T[]) new Object[tam];
        size = tam;
    }

    @Override
    public void add(Object o) {
        if (cola == (size - 1)) {
            cola = 0;
        } else {
            cola++;
        }
        datos[cola] = (T) o;
    }

    @Override
    public Object remove() {
        T t = datos[frente];
        if (frente == (size - 1)) {
            frente = 0;
        } else {
            frente++;
        }
        return t;
    }

    @Override
    public Object get() {
        return datos[frente];
    }

    @Override
    public int size() {
        return 0;
    }

    @Override
    public boolean isEmpty() {
        return false;
    }
}
