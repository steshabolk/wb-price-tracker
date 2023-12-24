package com.project.wb.exception;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;

@Getter
@RequiredArgsConstructor
public class ApiException extends RuntimeException {

    private final String code;
    private final String messageProp;
    private final String[] messageArgs;
    private final HttpStatus status;
}
