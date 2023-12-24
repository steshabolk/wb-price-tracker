package com.project.wb.model;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonTypeName;
import com.project.wb.dto.ProductDetailsDto;
import com.project.wb.enums.DomainEventType;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@JsonTypeName("PRODUCT_DETAILS_UPDATE")
public class ProductDetailsUpdateEvent extends DomainEvent {

    private static final DomainEventType type = DomainEventType.PRODUCT_DETAILS_UPDATE;
    private final ProductDetailsDto message;

    @JsonCreator
    public ProductDetailsUpdateEvent(@JsonProperty("message") ProductDetailsDto message) {
        super(type);
        this.message = message;
    }

    @Override
    public ProductDetailsDto getMessage() {
        return message;
    }
}
