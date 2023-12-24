package com.project.wb.model;

import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.project.wb.enums.DomainEventType;
import lombok.Getter;

@JsonTypeInfo(
        use = JsonTypeInfo.Id.NAME,
        include = JsonTypeInfo.As.EXISTING_PROPERTY,
        property = "type"
)
@JsonSubTypes({
        @JsonSubTypes.Type(value = PriceUpdateEvent.class, name = "PRICE_UPDATE"),
        @JsonSubTypes.Type(value = ProductDetailsUpdateEvent.class, name = "PRODUCT_DETAILS_UPDATE")
})
@Getter
public abstract class DomainEvent {

    private final DomainEventType type;

    public DomainEvent(DomainEventType type) {
        this.type = type;
    }

    public abstract Object getMessage();
}
