package com.project.wb.service;

import com.project.wb.dao.ProductDao;
import com.project.wb.dto.ProductDto;
import com.project.wb.entity.Price;
import com.project.wb.entity.Product;
import com.project.wb.entity.User;
import com.project.wb.exception.ApiError;
import com.project.wb.repository.ProductRepository;
import com.project.wb.security.AuthUtil;
import java.time.OffsetDateTime;
import java.util.List;
import java.util.Optional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Slf4j
@RequiredArgsConstructor
@Service
public class ProductService {

    @Value("${app.schedulers.product-remove-batch}")
    private Integer productRemoveBatch;
    @Value("${app.schedulers.product-update-batch}")
    private Integer productUpdateBatch;
    @Value("${app.schedulers.product-update-time-hours}")
    private Integer productUpdateTimeHours;
    private final ProductRepository productRepository;
    private final WbService wbService;
    private final UserService userService;
    private final ProductDao productDao;

    @Transactional
    public void addProductToAccount(Long code) {
        Product product = findByCodeWithUsers(code)
            .orElseGet(() -> getProductFromWb(code));
        User user = userService.getByUsernameWithProducts(AuthUtil.getUserFromAuthentication().getUsername());
        boolean isAdded = user.addProduct(product);
        if (isAdded) {
            log.debug("user{id={}} added product{code={}} to the account", user.getId(), product.getCode());
        } else {
            throw ApiError.PRODUCT_ALREADY_EXISTS.toException(product.getCode());
        }
    }

    @Transactional
    public void removeProductFromAccount(Long code) {
        Product product = findByCodeWithUsers(code)
            .orElseThrow(() -> ApiError.PRODUCT_NOT_FOUND.toException(code));
        User user = userService.getByUsernameWithProducts(AuthUtil.getUserFromAuthentication().getUsername());
        boolean isRemoved = user.removeProduct(product);
        if (isRemoved) {
            log.debug("user{id={}} removed product{code={}} from the account", user.getId(), product.getCode());
        } else {
            throw ApiError.PRODUCT_NOT_FOUND.toException(code);
        }
    }

    @Transactional
    public void removeNonTrackedProducts() {
        productDao.removeNonTrackedProducts(productRemoveBatch);
    }

    public List<ProductDto> getUserProducts() {
        return productDao.getUserProducts(AuthUtil.getUserFromAuthentication().getId());
    }

    public List<Long> getProductCodesToUpdate() {
        return productDao.getProductCodesToUpdate(
            productUpdateBatch,
            OffsetDateTime.now().minusHours(productUpdateTimeHours)
        );
    }

    @Transactional
    public void updateProductDetails(Long code) {
        ProductDto productDto = wbService.getProductDtoFromWb(code);
        productDao.updateProductDetails(productDto);
    }

    private Optional<Product> findByCodeWithUsers(Long code) {
        return productRepository.findWithUsersByCode(code);
    }

    private Product getProductFromWb(Long code) {
        ProductDto productDto = wbService.getProductDtoFromWb(code);
        Price price = buildPrice(productDto);
        Product product = buildProduct(productDto);
        product.addPrice(price);
        return product;
    }

    private Product buildProduct(ProductDto productDto) {
        return Product.builder()
            .code(productDto.code())
            .name(productDto.name())
            .brand(productDto.brand())
            .build();
    }

    private Price buildPrice(ProductDto productDto) {
        return Price.builder()
            .price(productDto.price())
            .build();
    }
}
