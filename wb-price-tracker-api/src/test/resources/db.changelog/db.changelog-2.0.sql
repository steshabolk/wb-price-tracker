--liquibase formatted sql

--changeset steshabolk:1
INSERT INTO users (username, password, role)
VALUES ('Anna_K', '$2a$10$9nPz7sMCVsmPQk2FcnlWIe1BTSkjVGpL0DRuR5rEmNh7VPXzl12qi', 'ROLE_USER'),
       ('Margarita', '$2a$10$2oJAasKzrzHWgl61.ECQ0Odo/LC0sP/cqdPCAawe/kf59JL5pa1Py', 'ROLE_USER'),
       ('Rodion_R', '$2a$10$Xlq0sAx4/mdUNtZrWSwBd.DOhU3Ww.xejHjDadAdZUy8AAgl3iMrO', 'ROLE_USER'),
       ('Andrei_B', '$2a$10$RAuyQkaBEyyAvB8d09BT1uCowKqlkxUGE5vwWX2Otf/LriHU2VvMK', 'ROLE_USER');
--rollback TRUNCATE TABLE users;


--changeset steshabolk:2
INSERT INTO products (code, brand, name)
VALUES (2282347, 'Издательство АСТ', 'Анна Каренина'),
       (83748710, 'Издательство АСТ', 'Мастер и Маргарита'),
       (7420379, 'Издательство АСТ', 'Преступление и наказание'),
       (2309872, 'Азбука', 'Война и мир (в 2-х книгах) (комплект)'),
       (15061503, 'Ticle', 'Футболка оверсайз хлопок однотонная'),
       (14909291, 'Ticle', 'Свитшот оверсайз'),
       (13458176, 'UZcotton', 'Лонгслив футболка с длинным рукавом хлопок'),
       (12801489, 'UZcotton', 'Футболка хлопок однотонная Премиум большие размеры'),
       (12052242, 'Ravenclo', 'Худи оверсайз с капюшоном'),
       (15185363, 'Ravenclo', 'Свитшот'),
       (44110461, 'Нити-Нити', 'Футболка оверсайз спортивная хлопок'),
       (14580842, 'Нити-Нити', 'Свитшот черный оверсайз теплый'),
       (24754283, 'Нити-Нити', 'Худи оверсайз черное теплое'),
       (65984481, '4195', 'Чехол для MacBook Pro 14 A2442 M1 A2779 M2 Макбук Про 14.2"'),
       (83864392, 'Lunomart', 'Ночник'),
       (141248305, 'linaSH', 'Декоративная подставка Поднос из гипса');
--rollback TRUNCATE TABLE products;


--changeset steshabolk:3
INSERT INTO users_products (user_id, product_id)
VALUES ((SELECT id FROM users WHERE username = 'Anna_K'), (SELECT id FROM products WHERE code = 2282347)),
       ((SELECT id FROM users WHERE username = 'Anna_K'), (SELECT id FROM products WHERE code = 15061503)),
       ((SELECT id FROM users WHERE username = 'Anna_K'), (SELECT id FROM products WHERE code = 14909291)),
       ((SELECT id FROM users WHERE username = 'Anna_K'), (SELECT id FROM products WHERE code = 13458176)),
       ((SELECT id FROM users WHERE username = 'Anna_K'), (SELECT id FROM products WHERE code = 83864392)),
       ((SELECT id FROM users WHERE username = 'Anna_K'), (SELECT id FROM products WHERE code = 65984481)),

       ((SELECT id FROM users WHERE username = 'Margarita'), (SELECT id FROM products WHERE code = 83748710)),
       ((SELECT id FROM users WHERE username = 'Margarita'), (SELECT id FROM products WHERE code = 12801489)),
       ((SELECT id FROM users WHERE username = 'Margarita'), (SELECT id FROM products WHERE code = 12052242)),
       ((SELECT id FROM users WHERE username = 'Margarita'), (SELECT id FROM products WHERE code = 15185363)),
       ((SELECT id FROM users WHERE username = 'Margarita'), (SELECT id FROM products WHERE code = 141248305)),
       ((SELECT id FROM users WHERE username = 'Margarita'), (SELECT id FROM products WHERE code = 24754283)),

       ((SELECT id FROM users WHERE username = 'Rodion_R'), (SELECT id FROM products WHERE code = 7420379)),
       ((SELECT id FROM users WHERE username = 'Rodion_R'), (SELECT id FROM products WHERE code = 13458176)),
       ((SELECT id FROM users WHERE username = 'Rodion_R'), (SELECT id FROM products WHERE code = 12801489)),
       ((SELECT id FROM users WHERE username = 'Rodion_R'), (SELECT id FROM products WHERE code = 12052242)),
       ((SELECT id FROM users WHERE username = 'Rodion_R'), (SELECT id FROM products WHERE code = 141248305)),
       ((SELECT id FROM users WHERE username = 'Rodion_R'), (SELECT id FROM products WHERE code = 14580842)),

       ((SELECT id FROM users WHERE username = 'Andrei_B'), (SELECT id FROM products WHERE code = 2309872)),
       ((SELECT id FROM users WHERE username = 'Andrei_B'), (SELECT id FROM products WHERE code = 12801489)),
       ((SELECT id FROM users WHERE username = 'Andrei_B'), (SELECT id FROM products WHERE code = 15185363)),
       ((SELECT id FROM users WHERE username = 'Andrei_B'), (SELECT id FROM products WHERE code = 83864392)),
       ((SELECT id FROM users WHERE username = 'Andrei_B'), (SELECT id FROM products WHERE code = 141248305)),
       ((SELECT id FROM users WHERE username = 'Andrei_B'), (SELECT id FROM products WHERE code = 44110461));
--rollback TRUNCATE TABLE users_products;
