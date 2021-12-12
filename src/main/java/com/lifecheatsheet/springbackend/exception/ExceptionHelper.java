package com.lifecheatsheet.springbackend.exception;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@ControllerAdvice
public class ExceptionHelper {
    @ExceptionHandler(value = {UserAlreadyExistException.class})
    public ResponseEntity<?> userAlreadyExistsException(UserAlreadyExistException ex){
        return new ResponseEntity<Object>(ex.getMessage(), HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(value = {BadRequestException.class})
    public ResponseEntity<?> userAlreadyExistsException(BadRequestException ex){
        return new ResponseEntity<Object>(ex.getMessage(), HttpStatus.BAD_REQUEST);
    }
}
