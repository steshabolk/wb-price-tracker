package com.project.wb.enums;

import lombok.Getter;

@Getter
public enum DomainEventType {
    PRICE_UPDATE("price-update"),
    PRODUCT_DETAILS_UPDATE("product-details-update");

    private final String topicPropName;

    DomainEventType(String topicPropName) {
        this.topicPropName = topicPropName;
    }
}
