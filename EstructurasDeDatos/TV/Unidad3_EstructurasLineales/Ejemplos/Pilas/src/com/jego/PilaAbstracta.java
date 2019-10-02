package com.jego;

public abstract class PilaAbstracta<T> {

    abstract void push(T e);
    abstract T pop();
    abstract T peek();
    abstract int size();
    abstract boolean isEmpty();
}