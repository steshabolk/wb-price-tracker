package com.project.wb.service;

import com.project.wb.dao.ProductDao;
import com.project.wb.dto.ProductDetailsDto;
import com.project.wb.dto.ProductDto;
import com.project.wb.entity.Product;
import com.project.wb.model.ProductDetailsUpdateEvent;
import com.project.wb.repository.ProductRepository;
import com.project.wb.repository.UserRepository;
import com.project.wb.util.PostgresTestContainer;
import jakarta.persistence.EntityManager;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.mock.mockito.SpyBean;
import org.springframework.context.annotation.Import;
import org.springframework.test.context.ContextConfiguration;

import java.util.List;
import java.util.Optional;

import static com.project.wb.util.TestData.newProduct;
import static com.project.wb.util.TestData.newProductJson;
import static com.project.wb.util.TestData.product;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;

@Import(ProductService.class)
@ContextConfiguration(initializers = {PostgresTestContainer.Initializer.class})
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
@DataJpaTest
class ProductServiceTest {

    @SpyBean
    private ProductRepository productRepository;

    @SpyBean
    private UserRepository userRepository;

    @SpyBean
    private ParserService parserService;

    @SpyBean
    private ProductDao productDao;

    @SpyBean
    private ProductService productService;

    @Autowired
    private EntityManager entityManager;

    @Nested
    class FindAll {

        @Test
        void success() {

            List<Product> products = productService.findAll();

            assertEquals(16, products.size());
            verify(productRepository, times(1)).findAll();
        }
    }

    @Nested
    class FindByCodeWithUsers {

        @Test
        void success() {

            Optional<Product> optionalProduct = productService.findByCodeWithUsers(product.getCode());

            assertTrue(optionalProduct.isPresent());
            assertEquals(product.getBrand(), optionalProduct.get().getBrand());
            assertEquals(product.getName(), optionalProduct.get().getName());
            verify(productRepository, times(1)).findWithUsersByCode(product.getCode());
        }
    }

    @Nested
    class SaveProduct {

        @Test
        void success() {

            Product product = productService.saveProduct(newProduct.getCode(), newProductJson());

            assertEquals(newProduct.getBrand(), product.getBrand());
            assertEquals(newProduct.getName(), product.getName());

            verify(productRepository, times(1)).saveAndFlush(any());
            verify(parserService, times(1)).parseWbJson(any());
        }
    }

    @Nested
    class RemoveNonTrackedProducts {

        @Test
        void success() {

            Product saved = productRepository.save(newProduct);
            assertTrue(productRepository.existsById(saved.getId()));

            productService.removeNonTrackedProducts();

            assertFalse(productRepository.existsById(saved.getId()));
            verify(productRepository, times(1)).findNonTrackedProductIds();
            verify(productRepository, times(1)).removeProductsByIds(List.of(saved.getId()));
        }
    }

    @Nested
    class GetUserProducts {

        @Test
        void success() {

            assertTrue(userRepository.existsById(1L));

            List<ProductDto> products = productService.getUserProducts(1L);

            assertEquals(6, products.size());
            verify(productDao, times(1)).getUserProducts(1L);
        }
    }

    @Nested
    class UpdateProductDetails {

        @Test
        void success() {

            Product existing = productRepository.findWithUsersByCode(product.getCode()).get();
            String oldBrand = existing.getBrand();
            String oldName = existing.getName();
            ProductDetailsUpdateEvent event = new ProductDetailsUpdateEvent(
                    new ProductDetailsDto(existing.getCode(), "updatedBrand", "updatedName"));

            productService.updateProductDetails(List.of(event));

            entityManager.refresh(existing);
            assertNotEquals(oldBrand, existing.getBrand());
            assertNotEquals(oldName, existing.getName());

            verify(productDao, times(1)).updateProductDetails(any());
        }
    }
}
