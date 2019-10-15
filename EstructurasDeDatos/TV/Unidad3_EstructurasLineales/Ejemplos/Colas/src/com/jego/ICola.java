package com.jego;

public interface ICola<T> {

    void add(T t);
    T remove();
    T get();
    int size();
    boolean isEmpty();
}
