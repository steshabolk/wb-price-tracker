package com.project.wb.exception;

import lombok.Getter;
import org.springframework.http.HttpStatus;

@Getter
public class ApiException extends RuntimeException {

    private String messageProp;
    private String[] messageArgs;
    private String code;
    private HttpStatus status;

    public ApiException(String messageProp, String[] messageArgs, String code, HttpStatus status) {
        this.messageProp = messageProp;
        this.messageArgs = messageArgs;
        this.code = code;
        this.status = status;
    }
}
