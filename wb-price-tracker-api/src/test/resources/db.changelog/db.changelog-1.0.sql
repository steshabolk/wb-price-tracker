--liquibase formatted sql

--changeset steshabolk:1
CREATE TABLE IF NOT EXISTS users
(
    id       BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    username VARCHAR(30) UNIQUE NOT NULL,
    password VARCHAR            NOT NULL,
    role     VARCHAR(20)        NOT NULL
);
--rollback DROP TABLE users;


--changeset steshabolk:2
CREATE TABLE IF NOT EXISTS products
(
    id    BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    code  BIGINT UNIQUE NOT NULL,
    brand VARCHAR(64)   NOT NULL,
    name  VARCHAR(64)   NOT NULL
);
--rollback DROP TABLE products;


--changeset steshabolk:3
CREATE TABLE IF NOT EXISTS users_products
(
    user_id    BIGINT REFERENCES users (id) ON DELETE CASCADE,
    product_id BIGINT REFERENCES products (id) ON DELETE CASCADE
);
--rollback DROP TABLE users_products;


--changeset steshabolk:4
CREATE TABLE IF NOT EXISTS prices
(
    id         BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    product_id BIGINT REFERENCES products (id) ON DELETE CASCADE,
    price      INT       NOT NULL,
    updated_at TIMESTAMP NOT NULL
);
--rollback DROP TABLE prices;
