package com.project.wb.dto;

import java.time.OffsetDateTime;

public record PriceListFilter(OffsetDateTime dateFrom, OffsetDateTime dateTo) {
}
