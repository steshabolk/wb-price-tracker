package com.project.wb.service;

import com.project.wb.dao.ProductDao;
import com.project.wb.entity.Product;
import com.project.wb.exception.ApiError;
import com.project.wb.repository.ProductRepository;
import com.project.wb.security.AuthUtil;
import java.util.Optional;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockedStatic;
import org.mockito.junit.jupiter.MockitoExtension;
import org.mockito.junit.jupiter.MockitoSettings;
import org.mockito.quality.Strictness;
import static com.project.wb.util.TestData.CODE;
import static com.project.wb.util.TestData.PRODUCT;
import static com.project.wb.util.TestData.PRODUCT_DTO;
import static com.project.wb.util.TestData.USER;
import static com.project.wb.util.TestUtils.expectApiError;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.doReturn;
import static org.mockito.Mockito.mockStatic;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;

@ExtendWith(MockitoExtension.class)
@MockitoSettings(strictness = Strictness.LENIENT)
class ProductServiceTest {

    @Mock
    private ProductRepository productRepository;
    @Mock
    private WbService wbService;
    @Mock
    private UserService userService;
    @Mock
    private ProductDao productDao;
    @InjectMocks
    private ProductService productService;
    private static MockedStatic<AuthUtil> authUtilMock;

    @BeforeAll
    public static void init() {
        authUtilMock = mockStatic(AuthUtil.class);
        authUtilMock.when(AuthUtil::getUserFromAuthentication)
            .thenReturn(USER);
    }

    @BeforeEach
    public void setup() {
        USER.getProducts().clear();
        PRODUCT.getUsers().clear();
    }

    @AfterAll
    public static void close() {
        authUtilMock.close();
    }

    @Nested
    class AddProductToAccount {

        @Test
        void whenProductExists_thenAddToAccount() {

            doReturn(Optional.of(PRODUCT)).when(productRepository).findWithUsersByCode(any());
            doReturn(USER).when(userService).getByUsernameWithProducts(any());

            productService.addProductToAccount(CODE);

            assertTrue(PRODUCT.getUsers().contains(USER));
            assertTrue(USER.getProducts().contains(PRODUCT));

            verify(productRepository, times(1)).findWithUsersByCode(any());
            verify(wbService, times(0)).getProductDtoFromWb(any());
            verify(userService, times(1)).getByUsernameWithProducts(any());
        }

        @Test
        void whenProductNotFound_thenAddNewProductFromWb() {

            doReturn(Optional.empty()).when(productRepository).findWithUsersByCode(any());
            doReturn(PRODUCT_DTO).when(wbService).getProductDtoFromWb(any());
            doReturn(USER).when(userService).getByUsernameWithProducts(any());

            productService.addProductToAccount(CODE);

            Product product = USER.getProducts().stream().findFirst().get();

            assertEquals(CODE, product.getCode());
            assertTrue(product.getUsers().contains(USER));

            verify(productRepository, times(1)).findWithUsersByCode(any());
            verify(wbService, times(1)).getProductDtoFromWb(any());
            verify(userService, times(1)).getByUsernameWithProducts(any());
        }

        @Test
        void whenProductAlreadyAddedToAccount_thenThrowException() {

            doReturn(Optional.of(PRODUCT)).when(productRepository).findWithUsersByCode(any());
            doReturn(USER).when(userService).getByUsernameWithProducts(any());

            PRODUCT.getUsers().add(USER);
            USER.getProducts().add(PRODUCT);

            expectApiError(
                ApiError.PRODUCT_ALREADY_EXISTS,
                () -> productService.addProductToAccount(CODE)
            );

            verify(productRepository, times(1)).findWithUsersByCode(any());
            verify(wbService, times(0)).getProductDtoFromWb(any());
            verify(userService, times(1)).getByUsernameWithProducts(any());
        }
    }

    @Nested
    class RemoveProductFromAccount {

        @Test
        void whenProductExists_thenRemoveFromAccount() {

            doReturn(Optional.of(PRODUCT)).when(productRepository).findWithUsersByCode(any());
            doReturn(USER).when(userService).getByUsernameWithProducts(any());

            PRODUCT.getUsers().add(USER);
            USER.getProducts().add(PRODUCT);

            productService.removeProductFromAccount(CODE);

            assertTrue(PRODUCT.getUsers().isEmpty());
            assertTrue(USER.getProducts().isEmpty());

            verify(productRepository, times(1)).findWithUsersByCode(any());
            verify(userService, times(1)).getByUsernameWithProducts(any());
        }

        @Test
        void whenProductNotFound_thenThrowException() {

            doReturn(Optional.empty()).when(productRepository).findWithUsersByCode(any());
            doReturn(USER).when(userService).getByUsernameWithProducts(any());

            expectApiError(
                ApiError.PRODUCT_NOT_FOUND,
                () -> productService.removeProductFromAccount(CODE)
            );

            verify(productRepository, times(1)).findWithUsersByCode(any());
            verify(userService, times(0)).getByUsernameWithProducts(any());
        }

        @Test
        void whenProductDoesNotAddedToAccount_thenThrowException() {

            doReturn(Optional.of(PRODUCT)).when(productRepository).findWithUsersByCode(any());
            doReturn(USER).when(userService).getByUsernameWithProducts(any());

            expectApiError(
                ApiError.PRODUCT_NOT_FOUND,
                () -> productService.removeProductFromAccount(CODE)
            );

            verify(productRepository, times(1)).findWithUsersByCode(any());
            verify(userService, times(1)).getByUsernameWithProducts(any());
        }
    }
}
