package com.project.wb.service;

import com.project.wb.dao.ProductDao;
import com.project.wb.dto.ProductDetailsDto;
import com.project.wb.dto.ProductDto;
import com.project.wb.dto.WbDetailsDto;
import com.project.wb.entity.Price;
import com.project.wb.entity.Product;
import com.project.wb.model.ProductDetailsUpdateEvent;
import com.project.wb.repository.ProductRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;

@Service
public class ProductService {

    Logger log = LoggerFactory.getLogger(ProductService.class);

    private final ProductRepository productRepository;
    private final ParserService parserService;
    private final ProductDao productDao;

    @Autowired
    public ProductService(ProductRepository productRepository, ParserService parserService, ProductDao productDao) {
        this.productRepository = productRepository;
        this.parserService = parserService;
        this.productDao = productDao;
    }

    @Transactional(readOnly = true)
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Transactional(readOnly = true)
    public Optional<Product> findByCodeWithUsers(Long code) {
        return productRepository.findWithUsersByCode(code);
    }

    @Transactional
    public Product saveProduct(Long code, String json) {
        log.debug("parse details for code={}\n" + "json={}", code, json);
        Product product = Product.builder().code(code).users(new HashSet<>()).prices(new ArrayList<>()).build();
        addDetailsFromWb(product, json);
        log.debug("save new Product={code={}, brand={}, name={}}", code, product.getBrand(), product.getName());
        return productRepository.saveAndFlush(product);
    }

    @Transactional
    public void removeNonTrackedProducts() {
        List<Long> ids = productRepository.findNonTrackedProductIds();
        log.debug("non tracked products: {}", ids);
        productRepository.removeProductsByIds(ids);
    }

    public List<ProductDto> getUserProducts(Long userId) {
        return productDao.getUserProducts(userId);
    }

    public void updateProductDetails(List<ProductDetailsUpdateEvent> events) {
        List<ProductDetailsDto> products = events.stream().map(ProductDetailsUpdateEvent::getMessage).toList();
        log.debug("update product details: " + products.stream().map(ProductDetailsDto::getCode).toList());
        productDao.updateProductDetails(products);
    }

    private void addDetailsFromWb(Product product, String json) {
        WbDetailsDto details = parserService.parseWbJson(json);
        product.setBrand(details.getBrand());
        product.setName(details.getName());
        product.getPrices().add(
                Price.builder()
                        .product(product)
                        .price(details.getPrice())
                        .updatedAt(LocalDateTime.now())
                        .build());
    }
}
