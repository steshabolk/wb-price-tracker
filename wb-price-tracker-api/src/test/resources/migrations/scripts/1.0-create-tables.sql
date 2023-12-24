--liquibase formatted sql

--changeset steshabolk:create-users-table
CREATE TABLE IF NOT EXISTS users
(
    id       BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    username VARCHAR(64) UNIQUE NOT NULL,
    password VARCHAR            NOT NULL,
    role     VARCHAR(64)        NOT NULL
);

--changeset steshabolk:create-products-table
CREATE TABLE IF NOT EXISTS products
(
    id    BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    code  BIGINT UNIQUE NOT NULL,
    brand VARCHAR(128)  NOT NULL,
    name  VARCHAR(128)  NOT NULL
);

--changeset steshabolk:create-users-products-table
CREATE TABLE IF NOT EXISTS users_products
(
    user_id    BIGINT REFERENCES users (id) ON DELETE CASCADE,
    product_id BIGINT REFERENCES products (id) ON DELETE CASCADE
);

--changeset steshabolk::create-prices-table
CREATE TABLE IF NOT EXISTS prices
(
    id         BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    product_id BIGINT REFERENCES products (id) ON DELETE CASCADE,
    price      INT       NOT NULL,
    updated_at TIMESTAMP DEFAULT now() NOT NULL
);
