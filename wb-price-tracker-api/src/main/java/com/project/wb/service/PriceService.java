package com.project.wb.service;

import com.project.wb.dao.PriceDao;
import com.project.wb.dto.PriceDto;
import com.project.wb.dto.PriceListDto;
import com.project.wb.dto.PriceListFilter;
import com.project.wb.entity.Product;
import com.project.wb.entity.User;
import com.project.wb.exception.ApiError;
import com.project.wb.model.PriceUpdateEvent;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class PriceService {

    Logger log = LoggerFactory.getLogger(PriceService.class);
    private final PriceDao priceDao;
    private final UserService userService;

    public PriceService(PriceDao priceDao, UserService userService) {
        this.priceDao = priceDao;
        this.userService = userService;
    }

    @Transactional(readOnly = true)
    public List<PriceListDto> getPriceList(Long code, PriceListFilter priceListFilter, Integer limit) {
        User user = userService.getWithProductsByUsername(userService.getUserFromAuthentication().getUsername());
        Optional<Product> optionalProduct = user.getProducts().stream().filter(i -> i.getCode().equals(code)).findAny();
        if (optionalProduct.isPresent()) {
            return priceDao.getPriceListByFilter(optionalProduct.get().getId(), priceListFilter, limit);
        } else {
            throw ApiError.PRODUCT_NOT_FOUND.toException(code);
        }
    }

    @Transactional
    public void addPricesFromParser(List<PriceUpdateEvent> events) {
        List<PriceDto> prices = events.stream().map(PriceUpdateEvent::getMessage).toList();
        log.debug("update price for codes: " + prices.stream().map(PriceDto::getCode).toList());
        priceDao.priceBatchInsert(prices);
    }
}
