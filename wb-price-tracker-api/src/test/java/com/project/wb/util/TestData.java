package com.project.wb.util;

import com.project.wb.dto.ProductCodeDto;
import com.project.wb.dto.ProductDto;
import com.project.wb.entity.Product;
import com.project.wb.entity.Role;
import com.project.wb.entity.User;

public class TestData {

    public static final String WB_CARD_URL = "https://card.wb.ru/cards/detail?locale=ru&curr=rub&nm=";
    public static final String PRODUCT_MAPPING = "/products";
    public static final String USERNAME = "Anna_K";
    public static final String PASSWORD = "userPassword0";
    public static final User USER = User.builder().id(1L).username(USERNAME).role(Role.ROLE_USER).build();
    public static final Long CODE = 14909291L;
    public static final String BRAND = "Ticle";
    public static final String NAME = "Свитшот оверсайз";
    public static final Product PRODUCT = Product.builder().id(1L).code(CODE).brand(BRAND).name(NAME).build();
    public static final ProductCodeDto PRODUCT_CODE_DTO = new ProductCodeDto(CODE);
    public static final ProductDto PRODUCT_DTO = new ProductDto(CODE, BRAND, NAME, 1000);
//    public static final Product newProduct = Product.builder().code(19935037L).brand("ТВОЕ").name("Футболка Искусство Третьяковская галерея")
//            .users(new HashSet<>()).build();
//
//    @SneakyThrows
//    public static String wb_card.json() {
//        URI uri = ClassLoader.getSystemResource("wb_card.json").toURI();
//        return Files.readString(Paths.get(uri));
//    };
}
