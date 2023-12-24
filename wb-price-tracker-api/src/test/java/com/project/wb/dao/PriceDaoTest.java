package com.project.wb.dao;

import com.project.wb.dto.PriceListDto;
import com.project.wb.dto.PriceListFilter;
import com.project.wb.integration.IntegrationTest;
import com.project.wb.integration.config.JdbcTestConfig;
import java.time.OffsetDateTime;
import java.util.List;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.jdbc.Sql;
import org.springframework.transaction.annotation.Transactional;
import static org.junit.jupiter.api.Assertions.assertEquals;

@SpringBootTest(classes = {PriceDao.class})
@ContextConfiguration(classes = {JdbcTestConfig.class})
@Transactional
class PriceDaoTest extends IntegrationTest {

    @Autowired
    private PriceDao priceDao;

    @Nested
    class GetPriceListByFilter {

        @Test
        @Sql(scripts = {"/sql/products/add-product.sql", "/sql/prices/add-product-prices.sql"})
        @Rollback
        void whenNoConditions_thenReturnAll() {
            List<PriceListDto> priceList =
                priceDao.getPriceListByFilter(1L, new PriceListFilter(null, null), null);

            assertEquals(3, priceList.size());
            assertEquals(180, priceList.get(0).price());
            assertEquals("2023-01-03", priceList.get(0).updatedAt());
            assertEquals(200, priceList.get(1).price());
            assertEquals("2023-01-02", priceList.get(1).updatedAt());
            assertEquals(100, priceList.get(2).price());
            assertEquals("2023-01-01", priceList.get(2).updatedAt());
        }

        @Test
        @Sql(scripts = {"/sql/products/add-product.sql", "/sql/prices/add-product-prices.sql"})
        @Rollback
        void whenLimitCondition_thenReturnLimited() {
            List<PriceListDto> priceList =
                priceDao.getPriceListByFilter(1L, new PriceListFilter(null, null), 2);

            assertEquals(2, priceList.size());
            assertEquals(180, priceList.get(0).price());
            assertEquals("2023-01-03", priceList.get(0).updatedAt());
            assertEquals(200, priceList.get(1).price());
            assertEquals("2023-01-02", priceList.get(1).updatedAt());
        }

        @Test
        @Sql(scripts = {"/sql/products/add-product.sql", "/sql/prices/add-product-prices.sql"})
        @Rollback
        void whenDateFromCondition_thenReturnFiltered() {
            List<PriceListDto> priceList =
                priceDao.getPriceListByFilter(
                    1L,
                    new PriceListFilter(OffsetDateTime.parse("2023-01-02T15:00:00Z"), null),
                    null
                );

            assertEquals(2, priceList.size());
            assertEquals(180, priceList.get(0).price());
            assertEquals("2023-01-03", priceList.get(0).updatedAt());
            assertEquals(200, priceList.get(1).price());
            assertEquals("2023-01-02", priceList.get(1).updatedAt());
        }

        @Test
        @Sql(scripts = {"/sql/products/add-product.sql", "/sql/prices/add-product-prices.sql"})
        @Rollback
        void whenDateToCondition_thenReturnFiltered() {
            List<PriceListDto> priceList =
                priceDao.getPriceListByFilter(
                    1L,
                    new PriceListFilter(null, OffsetDateTime.parse("2023-01-02T12:00:00Z")),
                    null
                );

            assertEquals(2, priceList.size());
            assertEquals(250, priceList.get(0).price());
            assertEquals("2023-01-02", priceList.get(0).updatedAt());
            assertEquals(100, priceList.get(1).price());
            assertEquals("2023-01-01", priceList.get(1).updatedAt());
        }
    }
}
