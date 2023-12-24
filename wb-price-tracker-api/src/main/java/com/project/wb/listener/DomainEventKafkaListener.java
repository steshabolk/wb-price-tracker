package com.project.wb.listener;

import com.project.wb.model.PriceUpdateEvent;
import com.project.wb.model.ProductDetailsUpdateEvent;
import com.project.wb.service.PriceService;
import com.project.wb.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class DomainEventKafkaListener {

    private final PriceService priceService;
    private final ProductService productService;

    @Autowired
    public DomainEventKafkaListener(PriceService priceService, ProductService productService) {
        this.priceService = priceService;
        this.productService = productService;
    }

    @KafkaListener(topics = "${kafka.topics.price-update.name}", containerFactory = "kafkaDomainEventListenerContainerFactory")
    public void priceUpdateListener(@Payload List<PriceUpdateEvent> events) {
        priceService.addPricesFromParser(events);
    }

    @KafkaListener(topics = "${kafka.topics.product-details-update.name}", containerFactory = "kafkaDomainEventListenerContainerFactory")
    public void productDetailsUpdateListener(@Payload List<ProductDetailsUpdateEvent> events) {
        productService.updateProductDetails(events);
    }
}
