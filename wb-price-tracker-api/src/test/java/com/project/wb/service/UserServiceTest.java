package com.project.wb.service;

import com.project.wb.dto.request.LoginRequest;
import com.project.wb.dto.request.RegisterRequest;
import com.project.wb.entity.Product;
import com.project.wb.entity.Role;
import com.project.wb.entity.User;
import com.project.wb.exception.ApiError;
import com.project.wb.repository.ProductRepository;
import com.project.wb.repository.UserRepository;
import com.project.wb.util.PostgresTestContainer;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.mockito.ArgumentCaptor;
import org.mockito.Captor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.boot.test.mock.mockito.SpyBean;
import org.springframework.context.annotation.Import;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;

import java.util.Optional;

import static com.project.wb.util.TestData.newProduct;
import static com.project.wb.util.TestData.password;
import static com.project.wb.util.TestData.product;
import static com.project.wb.util.TestData.username;
import static com.project.wb.util.TestUtils.expectApiError;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.doReturn;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;

@Import({UserService.class, BCryptPasswordEncoder.class})
@ContextConfiguration(initializers = {PostgresTestContainer.Initializer.class})
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
@DataJpaTest
class UserServiceTest {

    @SpyBean
    private UserRepository userRepository;

    @SpyBean
    private ProductRepository productRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @MockBean
    private ProductService productService;

    @MockBean
    private ParserService parserService;

    @SpyBean
    private UserService userService;

    @Captor
    private ArgumentCaptor<User> userCaptor;

    @Nested
    class GetByUsername {

        @Test
        void success() {

            User user = userService.getByUsername(username);

            assertEquals(Role.ROLE_USER, user.getRole());
            verify(userRepository, times(1)).findByUsername(username);
        }

        @Test
        void shouldThrowExceptionIfUserNotFound() {

            expectApiError(ApiError.USER_NOT_FOUND,
                    () -> userService.getByUsername("username"));
        }
    }

    @Nested
    class GetWithProductsByUsername {

        @Test
        void success() {

            userService.getWithProductsByUsername(username);

            verify(userRepository, times(1)).findWithProductsByUsername(username);
        }

        @Test
        void shouldThrowExceptionIfUserNotFound() {

            expectApiError(ApiError.USER_NOT_FOUND,
                    () -> userService.getWithProductsByUsername("username"));
        }
    }

    @Nested
    class Register {

        @Test
        void success() {

            userService.register(new RegisterRequest("username", password));

            verify(userRepository).save(userCaptor.capture());

            assertEquals(Role.ROLE_USER, userCaptor.getValue().getRole());
            assertTrue(passwordEncoder.matches(password, userCaptor.getValue().getPassword()));
        }
    }

    @Nested
    class Login {

        @Test
        void success() {

            User user = userService.login(new LoginRequest(username, password));

            assertEquals(Role.ROLE_USER, user.getRole());
            assertTrue(passwordEncoder.matches(password, user.getPassword()));
        }

        @Test
        void shouldThrowExceptionIfUserNotFound() {

            expectApiError(ApiError.USER_NOT_FOUND,
                    () -> userService.login(new LoginRequest("username", password)));
        }

        @Test
        void shouldThrowExceptionIfWrongPassword() {

            expectApiError(ApiError.WRONG_PASSWORD,
                    () -> userService.login(new LoginRequest(username, "password")));
        }
    }

    @Nested
    class AddCodeToAccount {

        @Test
        void success() {

            User user = userRepository.findByUsername(username).get();
            doReturn(user).when(userService).getUserFromAuthentication();
            doReturn(Optional.empty()).when(productService).findByCodeWithUsers(any());
            doReturn(newProduct).when(productService).saveProduct(any(), any());

            userService.addProductToAccount(newProduct.getCode());

            assertTrue(user.getProducts().stream().anyMatch(product -> product.getCode().equals(newProduct.getCode())));
            assertTrue(newProduct.getUsers().stream().anyMatch(u -> u.getUsername().equals(user.getUsername())));

            verify(parserService, times(1)).getJsonFromWb(any());
            verify(productService, times(1)).saveProduct(any(), any());
        }

        @Test
        void shouldThrowExceptionIfProductAlreadyAdded() {

            User user = userRepository.findByUsername(username).get();
            doReturn(user).when(userService).getUserFromAuthentication();
            Product existing = productRepository.findWithUsersByCode(product.getCode()).get();
            doReturn(Optional.of(existing)).when(productService).findByCodeWithUsers(any());

            assertTrue(user.getProducts().stream().anyMatch(p -> p.getCode().equals(existing.getCode())));
            assertTrue(existing.getUsers().stream().anyMatch(u -> u.getUsername().equals(user.getUsername())));

            expectApiError(ApiError.PRODUCT_ALREADY_ADDED,
                    () -> userService.addProductToAccount(existing.getCode()));

            verify(parserService, times(0)).getJsonFromWb(any());
            verify(productService, times(0)).saveProduct(any(), any());
        }
    }

    @Nested
    class RemoveProductFromAccount {

        @Test
        void success() {

            User user = userRepository.findByUsername(username).get();
            doReturn(user).when(userService).getUserFromAuthentication();
            Product existing = productRepository.findWithUsersByCode(product.getCode()).get();
            doReturn(Optional.of(existing)).when(productService).findByCodeWithUsers(any());

            assertTrue(user.getProducts().stream().anyMatch(p -> p.getCode().equals(existing.getCode())));
            assertTrue(existing.getUsers().stream().anyMatch(u -> u.getUsername().equals(user.getUsername())));

            userService.removeProductFromAccount(existing.getCode());

            assertFalse(user.getProducts().stream().anyMatch(p -> p.getCode().equals(existing.getCode())));
            assertFalse(existing.getUsers().stream().anyMatch(u -> u.getUsername().equals(user.getUsername())));
        }

        @Test
        void shouldThrowExceptionIfProductNotFound() {

            User user = userRepository.findByUsername(username).get();
            doReturn(user).when(userService).getUserFromAuthentication();
            doReturn(Optional.empty()).when(productService).findByCodeWithUsers(any());

            expectApiError(ApiError.PRODUCT_NOT_FOUND,
                    () -> userService.removeProductFromAccount(newProduct.getCode()));
        }

        @Test
        void shouldThrowExceptionIfProductNotFoundInAccount() {

            User user = userRepository.findByUsername(username).get();
            doReturn(user).when(userService).getUserFromAuthentication();
            Product existing = productRepository.findWithUsersByCode(12052242L).get();
            doReturn(Optional.of(existing)).when(productService).findByCodeWithUsers(any());

            assertFalse(user.getProducts().stream().anyMatch(p -> p.getCode().equals(existing.getCode())));
            assertFalse(existing.getUsers().stream().anyMatch(u -> u.getUsername().equals(user.getUsername())));

            expectApiError(ApiError.PRODUCT_NOT_FOUND,
                    () -> userService.removeProductFromAccount(existing.getCode()));
        }
    }
}
