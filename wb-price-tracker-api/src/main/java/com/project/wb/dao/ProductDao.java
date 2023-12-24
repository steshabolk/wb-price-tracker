package com.project.wb.dao;

import com.project.wb.dto.ProductDto;
import java.time.OffsetDateTime;
import java.util.List;
import java.util.Optional;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

@RequiredArgsConstructor
@Component
public class ProductDao {

    private static final RowMapper<ProductDto> PRODUCT_DTO_ROW_MAPPER = (rs, rowNum) ->
        new ProductDto(
            rs.getLong("code"),
            rs.getString("brand"),
            rs.getString("name"),
            rs.getInt("last_price")
        );
    private static final RowMapper<Long> ID_ROW_MAPPER = (rs, rowNum) -> rs.getLong("id");
    private final JdbcTemplate jdbcTemplate;

    public Optional<Long> getProductIdByCodeAndUsername(Long code, String username) {
        String sql = """
            SELECT p.id
            FROM products p
                     JOIN users_products up ON p.id = up.product_id
                     JOIN users u ON u.id = up.user_id
            WHERE p.code = ?
              AND u.username = ?
            """;
        return jdbcTemplate.query(sql, SingletonOptionalExtractor.extractor(ID_ROW_MAPPER), code, username);
    }

    public List<ProductDto> getUserProducts(Long userId) {
        String sql = """
            SELECT DISTINCT p.code, p.brand, p.name,
                    (SELECT price as last_price FROM prices WHERE product_id = p.id ORDER BY updated_at DESC LIMIT 1)
            FROM users_products up
                     JOIN products p ON up.product_id = p.id
                     JOIN users u ON up.user_id = u.id
            WHERE u.id = ?
            """;
        return jdbcTemplate.query(sql, PRODUCT_DTO_ROW_MAPPER, userId);
    }

    public void removeNonTrackedProducts(Integer batchSize) {
        String sql = """
            DELETE
            FROM products p
            WHERE p.id IN
                  (SELECT id
                   FROM products
                   WHERE id NOT IN
                         (SELECT DISTINCT product_id FROM users_products)
                   LIMIT ?)
            """;
        jdbcTemplate.update(sql, batchSize);
    }

    public List<Long> getProductCodesToUpdate(Integer batchSize, OffsetDateTime offsetDateTime) {
        String sql = """
            SELECT p.code
            FROM products p
            WHERE p.id IN
                  ((SELECT DISTINCT up.product_id FROM users_products up)
                   INTERSECT
                   (SELECT DISTINCT pr.product_id FROM prices pr GROUP BY pr.product_id HAVING max(pr.updated_at) < ?))
            LIMIT ?
            """;
        return jdbcTemplate.queryForList(sql, Long.class, offsetDateTime, batchSize);
    }

    public void updateProductDetails(ProductDto productDetails) {
        String sqlProductUpdate = """
            UPDATE products SET brand = ?, name = ? WHERE code = ?
            """;
        jdbcTemplate.update(sqlProductUpdate, productDetails.brand(), productDetails.name(), productDetails.code());
        String sqlPriceUpdate = """
            INSERT INTO prices (product_id, price)
            VALUES ((SELECT id FROM products WHERE code = ?), ?)
            """;
        jdbcTemplate.update(sqlPriceUpdate, productDetails.code(), productDetails.price());
    }
}
