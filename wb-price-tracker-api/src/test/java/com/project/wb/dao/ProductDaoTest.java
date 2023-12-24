package com.project.wb.dao;

import com.project.wb.dto.ProductDto;
import com.project.wb.entity.Price;
import com.project.wb.entity.Product;
import com.project.wb.integration.IntegrationTest;
import com.project.wb.integration.config.JdbcTestConfig;
import java.time.OffsetDateTime;
import java.util.List;
import java.util.Optional;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.jdbc.Sql;
import org.springframework.transaction.annotation.Transactional;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

@SpringBootTest(classes = {ProductDao.class})
@ContextConfiguration(classes = {JdbcTestConfig.class})
@Transactional
class ProductDaoTest extends IntegrationTest {

    @Autowired
    private ProductDao productDao;
    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Nested
    class GetProductIdByCodeAndUsername {

        @Test
        @Sql(scripts = {"/sql/users/add-user.sql", "/sql/products/add-product.sql",
            "/sql/users_products/add-user-product.sql"})
        @Rollback
        void whenExists_thenSucceed() {
            Optional<Long> id = productDao.getProductIdByCodeAndUsername(2282347L, "Anna_K");
            assertTrue(id.isPresent());
            assertEquals(1L, id.get());
        }

        @Test
        @Sql(scripts = {"/sql/users/add-user.sql"})
        @Rollback
        void whenDoesNotExists_thenEmpty() {
            Optional<Long> id = productDao.getProductIdByCodeAndUsername(2282347L, "Anna_K");
            assertTrue(id.isEmpty());
        }
    }

    @Nested
    class GetUserProducts {

        @Test
        @Sql(scripts = {"/sql/users/add-user.sql", "/sql/products/add-products.sql",
            "/sql/users_products/add-user-products.sql", "/sql/prices/add-products-prices.sql"})
        @Rollback
        void whenExists_thenSucceed() {
            List<ProductDto> products = productDao.getUserProducts(1L);
            assertEquals(2, products.size());
            assertEquals(2282347, products.get(0).code());
            assertEquals(190, products.get(0).price());
            assertEquals(83748710, products.get(1).code());
            assertEquals(320, products.get(1).price());
        }

        @Test
        @Sql(scripts = {"/sql/users/add-user.sql"})
        @Rollback
        void whenDoesNotExists_thenEmpty() {
            List<ProductDto> products = productDao.getUserProducts(1L);
            assertEquals(0, products.size());
        }
    }

    @Nested
    class RemoveNonTrackedProducts {

        @Test
        @Sql(scripts = {"/sql/products/add-products.sql", "/sql/prices/add-products-prices.sql"})
        @Rollback
        void succeed() {
            List<Product> productsBefore = findAllProducts();
            assertEquals(2, productsBefore.size());
            List<Price> pricesBefore = findAllPrices();
            assertEquals(12, pricesBefore.size());

            productDao.removeNonTrackedProducts(1);

            List<Product> productsAfter = findAllProducts();
            assertEquals(1, productsAfter.size());
            List<Price> pricesAfter = findAllPrices();
            assertEquals(6, pricesAfter.size());
        }
    }

    @Nested
    class GetProductCodesToUpdate {

        @Test
        @Sql(scripts = {"/sql/users/add-user.sql", "/sql/products/add-products.sql",
            "/sql/users_products/add-user-product.sql", "/sql/prices/add-products-prices.sql"})
        @Rollback
        void whenUpdatedAtIsLess_thenSucceed() {
            List<Long> codes = productDao.getProductCodesToUpdate(2, OffsetDateTime.parse("2023-01-04T12:00:00Z"));
            assertEquals(1, codes.size());
            assertEquals(2282347, codes.get(0));
        }

        @Test
        @Sql(scripts = {"/sql/users/add-user.sql", "/sql/products/add-products.sql",
            "/sql/users_products/add-user-products.sql", "/sql/prices/add-products-prices.sql"})
        @Rollback
        void whenUpdatedAtIsGreater_thenEmpty() {
            List<Long> codes = productDao.getProductCodesToUpdate(2, OffsetDateTime.parse("2023-01-03T12:00:00Z"));
            assertEquals(0, codes.size());
        }
    }

    @Nested
    class UpdateProductDetails {

        @Test
        @Sql(scripts = {"/sql/products/add-product.sql"})
        @Rollback
        void succeed() {
            ProductDto productDto = new ProductDto(2282347L, "updated brand", "updated name", 400);

            productDao.updateProductDetails(productDto);

            List<Product> products = findAllProducts();
            assertEquals(1, products.size());
            assertEquals("updated brand", products.get(0).getBrand());
            assertEquals("updated name", products.get(0).getName());
            List<Price> prices = findAllPrices();
            assertEquals(1, products.size());
            assertEquals(400, prices.get(0).getPrice());
        }
    }

    private List<Product> findAllProducts() {
        String sql = """
            SELECT p.id, p.code, p.brand, p.name
            FROM products p
            """;
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Product.class));
    }

    private List<Price> findAllPrices() {
        String sql = """
            SELECT p.id, p.product_id, p.price, p.updated_at
            FROM prices p
            """;
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Price.class));
    }
}
