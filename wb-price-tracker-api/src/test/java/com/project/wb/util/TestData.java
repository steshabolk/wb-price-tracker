package com.project.wb.util;

import com.project.wb.dto.ProductCodeDto;
import com.project.wb.entity.Product;
import lombok.SneakyThrows;

import java.net.URI;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.HashSet;

public class TestData {

    public static final String userApi = "/api/v1/users";
    public static final String wbUrl = "https://card.wb.ru/cards/detail?locale=ru&curr=rub&nm=";

    public static final String username = "Anna_K";
    public static final String password = "userPassword0";

    public static final Product product = Product.builder().code(14909291L).brand("Ticle").name("Свитшот оверсайз")
            .users(new HashSet<>()).build();
    public static final ProductCodeDto productCodeDto = new ProductCodeDto(14909291L);
    public static final Product newProduct = Product.builder().code(19935037L).brand("ТВОЕ").name("Футболка Искусство Третьяковская галерея")
            .users(new HashSet<>()).build();

    @SneakyThrows
    public static String newProductJson() {
        URI uri = ClassLoader.getSystemResource("newProductJson").toURI();
        return Files.readString(Paths.get(uri));
    };
}
