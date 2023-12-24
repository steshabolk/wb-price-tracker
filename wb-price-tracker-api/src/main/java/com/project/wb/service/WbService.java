package com.project.wb.service;

import com.project.wb.client.WbClient;
import com.project.wb.dto.ProductDto;
import com.project.wb.dto.wb.WbCardDto;
import com.project.wb.exception.ApiError;
import jakarta.validation.ConstraintViolationException;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.reactive.function.client.WebClientResponseException;

@Slf4j
@RequiredArgsConstructor
@Validated
@Service
public class WbService {

    private final WbClient wbClient;
    private static final int PRICE_DIVISOR = 100;

    public ProductDto getProductDtoFromWb(Long code) {
        WbCardDto wbCard = getWbCard(code);
        return parseProductDto(wbCard, code);
    }

    private WbCardDto getWbCard(Long code) {
        try {
            log.debug("get wb card for code={}", code);
            return wbClient.getWbCard(code);
        } catch (WebClientResponseException e) {
            log.debug("wb client error: {}", e.getResponseBodyAsString());
            throw ApiError.WB_SERVICE_UNAVAILABLE.toException();
        }
    }

    private ProductDto parseProductDto(@Valid WbCardDto wbCardDto, Long code) {
        try {
            log.debug("parse wb card={}", wbCardDto);
            return wbCardDto.data().products().stream()
                .map(it -> new ProductDto(it.code(), it.brand(), it.name(), it.price() / PRICE_DIVISOR))
                .findFirst()
                .orElseThrow(() -> ApiError.WB_INVALID_CODE.toException(code));
        } catch (ConstraintViolationException e) {
            throw ApiError.WB_INVALID_CODE.toException(code);
        }
    }
}
