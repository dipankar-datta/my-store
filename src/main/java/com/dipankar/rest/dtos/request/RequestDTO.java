package com.dipankar.rest.dtos.request;

public interface RequestDTO<T> {
    T toEntity();
}
