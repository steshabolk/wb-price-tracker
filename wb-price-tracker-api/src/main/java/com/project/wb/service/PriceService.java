package com.project.wb.service;

import com.project.wb.dao.PriceDao;
import com.project.wb.dao.ProductDao;
import com.project.wb.dto.PriceListDto;
import com.project.wb.dto.PriceListFilter;
import com.project.wb.exception.ApiError;
import com.project.wb.security.AuthUtil;
import java.time.OffsetDateTime;
import java.util.List;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Slf4j
@RequiredArgsConstructor
@Service
public class PriceService {

    private final PriceDao priceDao;
    private final ProductDao productDao;

    public List<PriceListDto> getPriceList(Long code, OffsetDateTime dateFrom, OffsetDateTime dateTo, Integer limit) {
        PriceListFilter priceListFilter = new PriceListFilter(dateFrom, dateTo);
        Long productId =
            productDao.getProductIdByCodeAndUsername(code, AuthUtil.getUserFromAuthentication().getUsername())
                .orElseThrow(() -> ApiError.PRODUCT_NOT_FOUND.toException(code));
        return priceDao.getPriceListByFilter(productId, priceListFilter, limit);
    }
}
