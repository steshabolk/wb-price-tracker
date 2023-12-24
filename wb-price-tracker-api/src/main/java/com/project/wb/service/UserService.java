package com.project.wb.service;

import com.project.wb.dto.ProductDto;
import com.project.wb.dto.request.LoginRequest;
import com.project.wb.dto.request.RegisterRequest;
import com.project.wb.entity.Product;
import com.project.wb.entity.Role;
import com.project.wb.entity.User;
import com.project.wb.exception.ApiError;
import com.project.wb.repository.UserRepository;
import com.project.wb.security.UserDetailsImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class UserService {

    Logger log = LoggerFactory.getLogger(UserService.class);

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final ProductService productService;
    private final ParserService parserService;

    @Autowired
    public UserService(UserRepository userRepository, PasswordEncoder passwordEncoder,
                       ProductService productService, ParserService parserService) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
        this.productService = productService;
        this.parserService = parserService;
    }

    @Transactional(readOnly = true)
    public User getByUsername(String username) {
        return userRepository.findByUsername(username).orElseThrow(() -> {
            throw ApiError.USER_NOT_FOUND.toException(username);
        });
    }

    @Transactional(readOnly = true)
    public User getWithProductsByUsername(String username) {
        return userRepository.findWithProductsByUsername(username).orElseThrow(() -> {
            throw ApiError.USER_NOT_FOUND.toException(username);
        });
    }

    @Transactional
    public void register(RegisterRequest registerRequest) {
        User user = User.builder()
                .username(registerRequest.getUsername())
                .password(passwordEncoder.encode(registerRequest.getPassword()))
                .role(Role.ROLE_USER)
                .build();
        User saved = userRepository.save(user);
        log.debug("save new User{id={}}", saved.getId());
    }

    public User login(LoginRequest loginRequest) {
        User user = getByUsername(loginRequest.getUsername());
        if (!passwordEncoder.matches(loginRequest.getPassword(), user.getPassword())) {
            throw ApiError.WRONG_PASSWORD.toException();
        }
        log.debug("successful authentication of the User{id={}}", user.getId());
        return user;
    }

    @Transactional(readOnly = true)
    public List<ProductDto> getUserProducts() {
        return productService.getUserProducts(getUserFromAuthentication().getId());
    }

    @Transactional
    public void addProductToAccount(Long code) {
        User user = getWithProductsByUsername(getUserFromAuthentication().getUsername());
        Optional<Product> optionalProduct = productService.findByCodeWithUsers(code);
        Product product;
        if (optionalProduct.isEmpty()) {
            String json = parserService.getJsonFromWb(code);
            product = productService.saveProduct(code, json);
        } else {
            product = optionalProduct.get();
        }
        boolean isAdded = user.addProduct(product);
        if (isAdded) {
            log.debug("User{id={}} added Product{code={}} to the account", user.getId(), product.getCode());
        } else {
            throw ApiError.PRODUCT_ALREADY_ADDED.toException(product.getCode());
        }
    }

    @Transactional
    public void removeProductFromAccount(Long code) {
        User user = getWithProductsByUsername(getUserFromAuthentication().getUsername());
        Optional<Product> optionalProduct = productService.findByCodeWithUsers(code);
        if (optionalProduct.isPresent()) {
            Product product = optionalProduct.get();
            boolean isRemoved = user.removeProduct(product);
            if (isRemoved) {
                log.debug("Product{code={}} was removed from User{id={}}", code, user.getId());
            } else {
                throw ApiError.PRODUCT_NOT_FOUND.toException(code);
            }
        } else {
            throw ApiError.PRODUCT_NOT_FOUND.toException(code);
        }
    }

    public User getUserFromAuthentication() {
        UserDetailsImpl authentication = (UserDetailsImpl) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return authentication.getUser();
    }
}
