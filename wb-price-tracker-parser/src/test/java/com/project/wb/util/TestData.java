package com.project.wb.util;

import lombok.SneakyThrows;

import java.net.URI;
import java.nio.file.Files;
import java.nio.file.Paths;

public class TestData {

    public static final String wbUrl = "https://card.wb.ru/cards/detail?locale=ru&curr=rub&nm=";

    public static final Long code = 14909291L;
    public static final String brand = "Ticle";
    public static final String name = "Свитшот оверсайз";
    public static final Integer price = 1729;

    @SneakyThrows
    public static String productJson() {
        URI uri = ClassLoader.getSystemResource("productJson").toURI();
        return Files.readString(Paths.get(uri));
    };
}
