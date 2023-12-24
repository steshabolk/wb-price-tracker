package com.project.wb.service;

import com.project.wb.dao.PriceDao;
import com.project.wb.dto.PriceDto;
import com.project.wb.dto.PriceListDto;
import com.project.wb.dto.PriceListFilter;
import com.project.wb.entity.Price;
import com.project.wb.entity.Product;
import com.project.wb.entity.User;
import com.project.wb.exception.ApiError;
import com.project.wb.model.PriceUpdateEvent;
import com.project.wb.repository.ProductRepository;
import com.project.wb.repository.UserRepository;
import com.project.wb.util.PostgresTestContainer;
import com.project.wb.util.TestData;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.boot.test.mock.mockito.SpyBean;
import org.springframework.context.annotation.Import;
import org.springframework.test.context.ContextConfiguration;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import static com.project.wb.util.TestData.newProduct;
import static com.project.wb.util.TestData.product;
import static com.project.wb.util.TestData.username;
import static com.project.wb.util.TestUtils.expectApiError;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.doReturn;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;

@Import(PriceService.class)
@ContextConfiguration(initializers = {PostgresTestContainer.Initializer.class})
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
@DataJpaTest
class PriceServiceTest {

    @SpyBean
    private PriceDao priceDao;

    @MockBean
    private UserService userService;

    @SpyBean
    private UserRepository userRepository;

    @SpyBean
    private ProductRepository productRepository;

    @SpyBean
    private PriceService priceService;

    @Nested
    class GetPriceList {

        @Test
        void successWithPriceFilter() {

            LocalDateTime curr = LocalDateTime.now();
            PriceListFilter filter = new PriceListFilter(curr.minusDays(60), curr.minusDays(25));

            User user = userRepository.findWithProductsByUsername(username).get();
            doReturn(user).when(userService).getUserFromAuthentication();
            doReturn(user).when(userService).getWithProductsByUsername(any());

            List<PriceListDto> priceList = priceService.getPriceList(product.getCode(), filter, null);

            assertEquals(35, priceList.size());

            verify(userService, times(1)).getWithProductsByUsername(any());
            verify(priceDao, times(1)).getPriceListByFilter(any(), any(), any());
        }

        @Test
        void successWithLimit() {

            User user = userRepository.findWithProductsByUsername(username).get();
            doReturn(user).when(userService).getUserFromAuthentication();
            doReturn(user).when(userService).getWithProductsByUsername(any());

            List<PriceListDto> priceList = priceService.getPriceList(product.getCode(), new PriceListFilter(), 15);

            assertEquals(15, priceList.size());

            verify(userService, times(1)).getWithProductsByUsername(any());
            verify(priceDao, times(1)).getPriceListByFilter(any(), any(), any());
        }

        @Test
        void shouldThrowExceptionIfProductNotFound() {

            User user = userRepository.findWithProductsByUsername(username).get();
            doReturn(user).when(userService).getUserFromAuthentication();
            doReturn(user).when(userService).getWithProductsByUsername(any());

            expectApiError(ApiError.PRODUCT_NOT_FOUND,
                    () -> priceService.getPriceList(newProduct.getCode(), new PriceListFilter(), null));

            verify(userService, times(1)).getWithProductsByUsername(any());
            verify(priceDao, times(0)).getPriceListByFilter(any(), any(), any());
        }
    }

    @Nested
    class AddPricesFromParser {

        @Test
        void success() {

            PriceUpdateEvent event = new PriceUpdateEvent(new PriceDto(product.getCode(), 1000, LocalDateTime.now()));

            priceService.addPricesFromParser(List.of(event));

            Product product = productRepository.findWithPricesByCode(TestData.product.getCode()).get();
            Price price = product.getPrices().get(product.getPrices().size() - 1);

            assertEquals(1000, price.getPrice());
            assertEquals(LocalDate.now(), price.getUpdatedAt().toLocalDate());
        }
    }
}
