package com.project.wb.service;

import com.project.wb.model.PriceUpdateEvent;
import com.project.wb.model.ProductDetailsUpdateEvent;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

@Service
public class AsyncTask {

    private final ParserService parserService;

    public AsyncTask(ParserService parserService) {
        this.parserService = parserService;
    }

    @Async
    public void updatePrice(Long code) {
        String json = parserService.getJsonFromWb(code);
        PriceUpdateEvent event = parserService.getPriceUpdateEvent(json, code);
        parserService.sendEventToKafka(event);
    }

    @Async
    public void updateProductDetails(Long code) {
        String json = parserService.getJsonFromWb(code);
        ProductDetailsUpdateEvent event = parserService.getProductDetailsUpdateEvent(json, code);
        parserService.sendEventToKafka(event);
    }
}
