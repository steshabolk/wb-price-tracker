package com.project.wb.dao;

import com.project.wb.dto.PriceDto;
import com.project.wb.dto.PriceListDto;
import com.project.wb.dto.PriceListFilter;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@RequiredArgsConstructor
@Component
public class PriceDao {

    private final JdbcTemplate jdbcTemplate;

    public List<PriceListDto> getPriceListByFilter(Long id, PriceListFilter priceListFilter, Integer limit) {
        String SELECT = "SELECT MIN(p.price) as min_price, " +
                "TO_DATE(TO_CHAR(p.updated_at, 'yyyy-mm-dd'), 'yyyy-mm-dd') as updated_date " +
                "FROM prices p JOIN products product ON p.product_id = product.id ";

        StringBuilder WHERE = new StringBuilder("WHERE product.id = ? ");
        List<Object> args = Stream.of(id).collect(Collectors.toList());
        if (priceListFilter.getDateFrom() != null) {
            WHERE.append("AND p.updated_at >= ? ");
            args.add(priceListFilter.getDateFrom());
        }
        if (priceListFilter.getDateTo() != null) {
            WHERE.append("AND p.updated_at <= ? ");
            args.add(priceListFilter.getDateTo());
        }

        String GROUPING = "GROUP BY TO_CHAR(p.updated_at, 'yyyy-mm-dd') " +
                "ORDER BY updated_date DESC";

        String SQL = SELECT + WHERE + GROUPING;

        if (limit != null) {
            SQL += " LIMIT ?";
            args.add(limit);
        }

        return jdbcTemplate.query(SQL, (rs, rowNum) -> new PriceListDto(
                rs.getInt("min_price"),
                rs.getObject("updated_date", LocalDate.class)
        ), args.toArray());
    }

    public void priceBatchInsert(List<PriceDto> prices) {
        String SQL = "INSERT INTO prices (product_id, price, updated_at) " +
                "VALUES ((SELECT id FROM products WHERE code = ?), ?, ?)";

        jdbcTemplate.batchUpdate(SQL, new BatchPreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement ps, int i) throws SQLException {
                PriceDto price = prices.get(i);
                ps.setObject(1, price.getCode());
                ps.setObject(2, price.getPrice());
                ps.setObject(3, price.getUpdatedAt());
            }

            @Override
            public int getBatchSize() {
                return prices.size();
            }
        });
    }
}
