package com.jego;

import java.util.ArrayList;

public class PilaArreglo<T> extends PilaAbstracta {

    private ArrayList<T> elementos = new ArrayList<>();
    private int tope = -1;

    @Override
    void push(Object e) {
        elementos.add((T)e);
        tope++;
    }

    @Override
    Object pop() {
        T t = elementos.remove(tope);
        tope--;
        return t;
    }

    @Override
    Object peek() {
        T t = elementos.get(tope);
        return t;
    }

    @Override
    int size() {
        return elementos.size();
    }

    @Override
    boolean isEmpty() {
        return elementos.isEmpty();
    }
}