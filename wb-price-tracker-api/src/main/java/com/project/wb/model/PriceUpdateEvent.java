package com.project.wb.model;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonTypeName;
import com.project.wb.dto.PriceDto;
import com.project.wb.enums.DomainEventType;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@JsonTypeName("PRICE_UPDATE")
public class PriceUpdateEvent extends DomainEvent {

    private static final DomainEventType type = DomainEventType.PRICE_UPDATE;
    private final PriceDto message;

    @JsonCreator
    public PriceUpdateEvent(@JsonProperty("message") PriceDto message) {
        super(type);
        this.message = message;
    }

    @Override
    public PriceDto getMessage() {
        return message;
    }
}
