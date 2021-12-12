package com.lifecheatsheet.springbackend.exception;

import org.springframework.security.core.AuthenticationException;

public class UnAuthorizedException extends AuthenticationException {
    public UnAuthorizedException(String msg, Throwable cause) {
        super(msg, cause);
    }

    public UnAuthorizedException(String msg) {
        super(msg);
    }
}
