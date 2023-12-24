package com.project.wb.client;

import com.project.wb.dto.wb.WbCardDto;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.service.annotation.GetExchange;
import org.springframework.web.service.annotation.HttpExchange;

@HttpExchange(accept = MediaType.APPLICATION_JSON_VALUE, contentType = MediaType.APPLICATION_JSON_VALUE)
public interface WbClient {

    @GetExchange("https://card.wb.ru/cards/detail?locale=ru&curr=rub")
    WbCardDto getWbCard(@RequestParam("nm") Long code);
}
