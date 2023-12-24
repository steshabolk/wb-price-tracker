package com.project.wb.dao;

import com.project.wb.dto.ProductDetailsDto;
import com.project.wb.dto.ProductDto;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

@RequiredArgsConstructor
@Component
public class ProductDao {

    private final JdbcTemplate jdbcTemplate;

    public List<ProductDto> getUserProducts(Long userId) {
        String sql = "SELECT DISTINCT p.code, p.brand, p.name, " +
                "(SELECT price as last_price FROM prices WHERE product_id = p.id ORDER BY updated_at DESC LIMIT 1) " +
                "FROM users_products up " +
                "JOIN products p ON up.product_id = p.id " +
                "JOIN users u ON up.user_id = u.id " +
                "WHERE u.id = ?";
        return jdbcTemplate.query(sql, (rs, rowNum) -> new ProductDto(
                rs.getLong("code"),
                rs.getString("brand"),
                rs.getString("name"),
                rs.getInt("last_price")
        ), userId);
    }

    public void updateProductDetails(List<ProductDetailsDto> productDetails) {
        String sql = "UPDATE products SET brand = ?, name = ? WHERE code = ?";

        jdbcTemplate.batchUpdate(sql, new BatchPreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement ps, int i) throws SQLException {
                ProductDetailsDto details = productDetails.get(i);
                ps.setObject(1, details.getBrand());
                ps.setObject(2, details.getName());
                ps.setObject(3, details.getCode());
            }

            @Override
            public int getBatchSize() {
                return productDetails.size();
            }
        });
    }
}
