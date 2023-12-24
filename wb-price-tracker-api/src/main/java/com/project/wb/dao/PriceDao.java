package com.project.wb.dao;

import com.project.wb.dto.PriceListDto;
import com.project.wb.dto.PriceListFilter;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

@RequiredArgsConstructor
@Component
public class PriceDao {

    private static final RowMapper<PriceListDto> PRICE_LIST_DTO_ROW_MAPPER = (rs, rowNum) ->
        new PriceListDto(
            rs.getInt("min_price"),
            rs.getString("updated_date")
        );
    private final JdbcTemplate jdbcTemplate;

    public List<PriceListDto> getPriceListByFilter(Long id, PriceListFilter priceListFilter, Integer limit) {
        String select = """
            SELECT MIN(p.price) as min_price, TO_CHAR(p.updated_at, 'yyyy-mm-dd') as updated_date
            FROM prices p JOIN products product ON p.product_id = product.id
            """;

        StringBuilder conditions = new StringBuilder("WHERE product.id = ? ");
        List<Object> args = Stream.of(id).collect(Collectors.toList());
        if (priceListFilter.dateFrom() != null) {
            conditions.append("AND p.updated_at >= ? ");
            args.add(priceListFilter.dateFrom());
        }
        if (priceListFilter.dateTo() != null) {
            conditions.append("AND p.updated_at <= ? ");
            args.add(priceListFilter.dateTo());
        }
        conditions.append("GROUP BY TO_CHAR(p.updated_at, 'yyyy-mm-dd') ORDER BY updated_date DESC");
        if (limit != null) {
            conditions.append(" LIMIT ?");
            args.add(limit);
        }
        return jdbcTemplate.query(select + conditions, PRICE_LIST_DTO_ROW_MAPPER, args.toArray());
    }
}
