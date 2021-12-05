package com.lifecheatsheet.springbackend.exception;

public class BadRequestException extends Exception {
    public BadRequestException(){
        super();
    }

    public BadRequestException(String msg){
        super(msg);
    }
}
