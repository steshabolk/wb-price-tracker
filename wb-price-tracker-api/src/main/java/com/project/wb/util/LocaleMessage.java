package com.project.wb.util;

import lombok.RequiredArgsConstructor;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Component;

@RequiredArgsConstructor
@Component
public class LocaleMessage {

    private final MessageSource messageSource;

    public String getMessageFromProps(String code, String... args) {
        return messageSource.getMessage(code, args, LocaleContextHolder.getLocale());
    }
}
