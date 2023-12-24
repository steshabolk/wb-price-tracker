package com.project.wb.service;

import com.project.wb.dao.PriceDao;
import com.project.wb.dao.ProductDao;
import com.project.wb.exception.ApiError;
import com.project.wb.security.AuthUtil;
import java.time.OffsetDateTime;
import java.util.Optional;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockedStatic;
import org.mockito.junit.jupiter.MockitoExtension;
import static com.project.wb.util.TestData.CODE;
import static com.project.wb.util.TestData.USER;
import static com.project.wb.util.TestUtils.expectApiError;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.doReturn;
import static org.mockito.Mockito.mockStatic;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;

@ExtendWith(MockitoExtension.class)
class PriceServiceTest {

    @Mock
    private PriceDao priceDao;
    @Mock
    private ProductDao productDao;
    @InjectMocks
    private PriceService priceService;
    private static MockedStatic<AuthUtil> authUtilMock;

    @BeforeAll
    public static void init() {
        authUtilMock = mockStatic(AuthUtil.class);
        authUtilMock.when(AuthUtil::getUserFromAuthentication)
            .thenReturn(USER);
    }

    @AfterAll
    public static void close() {
        authUtilMock.close();
    }

    @Nested
    class GetPriceList {

        @Test
        void whenProductNotFound_thenThrowException() {

            doReturn(Optional.empty()).when(productDao).getProductIdByCodeAndUsername(any(), any());

            expectApiError(
                ApiError.PRODUCT_NOT_FOUND,
                () -> priceService.getPriceList(CODE, OffsetDateTime.now(), OffsetDateTime.now(), null)
            );
            verify(productDao, times(1)).getProductIdByCodeAndUsername(any(), any());
            verify(priceDao, times(0)).getPriceListByFilter(any(), any(), any());
        }

        @Test
        void whenProductExists_thenSucceed() {

            doReturn(Optional.of(1L)).when(productDao).getProductIdByCodeAndUsername(any(), any());

            priceService.getPriceList(CODE, OffsetDateTime.now(), OffsetDateTime.now(), null);

            verify(productDao, times(1)).getProductIdByCodeAndUsername(any(), any());
            verify(priceDao, times(1)).getPriceListByFilter(any(), any(), any());
        }
    }
}
