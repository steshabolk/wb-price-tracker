package com.project.wb.exception;

import org.springframework.http.HttpStatus;

import java.util.Arrays;

public enum ApiError {

    USER_NOT_FOUND(HttpStatus.BAD_REQUEST, "ex.api.userNotFound"),
    WRONG_PASSWORD(HttpStatus.BAD_REQUEST, "ex.api.wrongPassword"),
    WB_ERROR(HttpStatus.BAD_REQUEST, "ex.api.wbError"),
    WB_ERROR_BRAND(HttpStatus.BAD_REQUEST, "ex.api.wbErrorBrand"),
    WB_ERROR_NAME(HttpStatus.BAD_REQUEST, "ex.api.wbErrorName"),
    WB_ERROR_PRICE(HttpStatus.BAD_REQUEST, "ex.api.wbErrorPrice"),
    PRODUCT_ALREADY_ADDED(HttpStatus.BAD_REQUEST, "ex.api.productAlreadyAdded"),
    PRODUCT_NOT_FOUND(HttpStatus.BAD_REQUEST, "ex.api.productNotFound"),
    TOKEN_EXPIRED(HttpStatus.UNAUTHORIZED, "ex.api.tokenExpired"),
    MISSING_TOKEN(HttpStatus.BAD_REQUEST, "ex.api.missingToken"),
    INVALID_TOKEN(HttpStatus.BAD_REQUEST, "ex.api.invalidToken");

    private final HttpStatus httpStatus;
    private final String messageProp;

    ApiError(HttpStatus httpStatus, String messageProp) {
        this.httpStatus = httpStatus;
        this.messageProp = messageProp;
    }

    public ApiException toException(Object... args) {
        return new ApiException(messageProp, Arrays.stream(args).map(Object::toString).toArray(String[]::new), name(), httpStatus);
    }
}
