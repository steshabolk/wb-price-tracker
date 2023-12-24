--liquibase formatted sql

--changeset steshabolk:init-prices-1
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 274, (CURRENT_DATE - INTERVAL '150 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 248, (CURRENT_DATE - INTERVAL '150 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 257, (CURRENT_DATE - INTERVAL '150 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 318, (CURRENT_DATE - INTERVAL '150 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 664, (CURRENT_DATE - INTERVAL '150 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1706, (CURRENT_DATE - INTERVAL '150 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 492, (CURRENT_DATE - INTERVAL '150 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 465, (CURRENT_DATE - INTERVAL '150 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 2020, (CURRENT_DATE - INTERVAL '150 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1496, (CURRENT_DATE - INTERVAL '150 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1191, (CURRENT_DATE - INTERVAL '150 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1498, (CURRENT_DATE - INTERVAL '150 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '150 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1481, (CURRENT_DATE - INTERVAL '150 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 871, (CURRENT_DATE - INTERVAL '150 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '150 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-2
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 274, (CURRENT_DATE - INTERVAL '150 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 248, (CURRENT_DATE - INTERVAL '150 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 257, (CURRENT_DATE - INTERVAL '150 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 318, (CURRENT_DATE - INTERVAL '150 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 664, (CURRENT_DATE - INTERVAL '150 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1706, (CURRENT_DATE - INTERVAL '150 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 492, (CURRENT_DATE - INTERVAL '150 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 465, (CURRENT_DATE - INTERVAL '150 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 2020, (CURRENT_DATE - INTERVAL '150 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1496, (CURRENT_DATE - INTERVAL '150 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1191, (CURRENT_DATE - INTERVAL '150 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1498, (CURRENT_DATE - INTERVAL '150 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '150 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1481, (CURRENT_DATE - INTERVAL '150 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 871, (CURRENT_DATE - INTERVAL '150 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '150 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-3
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 274, (CURRENT_DATE - INTERVAL '149 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 248, (CURRENT_DATE - INTERVAL '149 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 257, (CURRENT_DATE - INTERVAL '149 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 318, (CURRENT_DATE - INTERVAL '149 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 664, (CURRENT_DATE - INTERVAL '149 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1706, (CURRENT_DATE - INTERVAL '149 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 492, (CURRENT_DATE - INTERVAL '149 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 465, (CURRENT_DATE - INTERVAL '149 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 2020, (CURRENT_DATE - INTERVAL '149 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1496, (CURRENT_DATE - INTERVAL '149 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1191, (CURRENT_DATE - INTERVAL '149 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1498, (CURRENT_DATE - INTERVAL '149 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '149 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1481, (CURRENT_DATE - INTERVAL '149 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 871, (CURRENT_DATE - INTERVAL '149 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '149 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-4
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 274, (CURRENT_DATE - INTERVAL '149 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 248, (CURRENT_DATE - INTERVAL '149 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 257, (CURRENT_DATE - INTERVAL '149 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 318, (CURRENT_DATE - INTERVAL '149 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 664, (CURRENT_DATE - INTERVAL '149 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1706, (CURRENT_DATE - INTERVAL '149 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 492, (CURRENT_DATE - INTERVAL '149 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 465, (CURRENT_DATE - INTERVAL '149 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 2020, (CURRENT_DATE - INTERVAL '149 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1496, (CURRENT_DATE - INTERVAL '149 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1191, (CURRENT_DATE - INTERVAL '149 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1498, (CURRENT_DATE - INTERVAL '149 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '149 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1481, (CURRENT_DATE - INTERVAL '149 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 871, (CURRENT_DATE - INTERVAL '149 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '149 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-5
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 274, (CURRENT_DATE - INTERVAL '148 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 248, (CURRENT_DATE - INTERVAL '148 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 257, (CURRENT_DATE - INTERVAL '148 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 318, (CURRENT_DATE - INTERVAL '148 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 664, (CURRENT_DATE - INTERVAL '148 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1706, (CURRENT_DATE - INTERVAL '148 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 492, (CURRENT_DATE - INTERVAL '148 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 465, (CURRENT_DATE - INTERVAL '148 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 2020, (CURRENT_DATE - INTERVAL '148 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1496, (CURRENT_DATE - INTERVAL '148 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1191, (CURRENT_DATE - INTERVAL '148 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1498, (CURRENT_DATE - INTERVAL '148 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '148 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1481, (CURRENT_DATE - INTERVAL '148 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 871, (CURRENT_DATE - INTERVAL '148 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '148 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-6
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 274, (CURRENT_DATE - INTERVAL '148 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 248, (CURRENT_DATE - INTERVAL '148 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 257, (CURRENT_DATE - INTERVAL '148 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 318, (CURRENT_DATE - INTERVAL '148 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 664, (CURRENT_DATE - INTERVAL '148 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1706, (CURRENT_DATE - INTERVAL '148 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 492, (CURRENT_DATE - INTERVAL '148 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 465, (CURRENT_DATE - INTERVAL '148 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 2020, (CURRENT_DATE - INTERVAL '148 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1496, (CURRENT_DATE - INTERVAL '148 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1191, (CURRENT_DATE - INTERVAL '148 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1498, (CURRENT_DATE - INTERVAL '148 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '148 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1481, (CURRENT_DATE - INTERVAL '148 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 871, (CURRENT_DATE - INTERVAL '148 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '148 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-7
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 274, (CURRENT_DATE - INTERVAL '147 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 248, (CURRENT_DATE - INTERVAL '147 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 257, (CURRENT_DATE - INTERVAL '147 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 318, (CURRENT_DATE - INTERVAL '147 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 664, (CURRENT_DATE - INTERVAL '147 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1706, (CURRENT_DATE - INTERVAL '147 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 492, (CURRENT_DATE - INTERVAL '147 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 465, (CURRENT_DATE - INTERVAL '147 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 2020, (CURRENT_DATE - INTERVAL '147 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1496, (CURRENT_DATE - INTERVAL '147 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1191, (CURRENT_DATE - INTERVAL '147 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1498, (CURRENT_DATE - INTERVAL '147 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '147 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1481, (CURRENT_DATE - INTERVAL '147 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 871, (CURRENT_DATE - INTERVAL '147 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '147 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-8
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 274, (CURRENT_DATE - INTERVAL '147 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 248, (CURRENT_DATE - INTERVAL '147 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 257, (CURRENT_DATE - INTERVAL '147 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 318, (CURRENT_DATE - INTERVAL '147 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 664, (CURRENT_DATE - INTERVAL '147 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1706, (CURRENT_DATE - INTERVAL '147 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 492, (CURRENT_DATE - INTERVAL '147 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 465, (CURRENT_DATE - INTERVAL '147 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 2020, (CURRENT_DATE - INTERVAL '147 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1496, (CURRENT_DATE - INTERVAL '147 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1191, (CURRENT_DATE - INTERVAL '147 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1498, (CURRENT_DATE - INTERVAL '147 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '147 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1481, (CURRENT_DATE - INTERVAL '147 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 871, (CURRENT_DATE - INTERVAL '147 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '147 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-9
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 274, (CURRENT_DATE - INTERVAL '146 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 248, (CURRENT_DATE - INTERVAL '146 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 257, (CURRENT_DATE - INTERVAL '146 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 318, (CURRENT_DATE - INTERVAL '146 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 664, (CURRENT_DATE - INTERVAL '146 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1706, (CURRENT_DATE - INTERVAL '146 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 492, (CURRENT_DATE - INTERVAL '146 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 465, (CURRENT_DATE - INTERVAL '146 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 2020, (CURRENT_DATE - INTERVAL '146 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1496, (CURRENT_DATE - INTERVAL '146 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1191, (CURRENT_DATE - INTERVAL '146 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1498, (CURRENT_DATE - INTERVAL '146 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '146 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1481, (CURRENT_DATE - INTERVAL '146 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 871, (CURRENT_DATE - INTERVAL '146 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '146 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-10
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 274, (CURRENT_DATE - INTERVAL '146 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 248, (CURRENT_DATE - INTERVAL '146 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 257, (CURRENT_DATE - INTERVAL '146 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 318, (CURRENT_DATE - INTERVAL '146 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 664, (CURRENT_DATE - INTERVAL '146 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1706, (CURRENT_DATE - INTERVAL '146 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 492, (CURRENT_DATE - INTERVAL '146 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 465, (CURRENT_DATE - INTERVAL '146 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 2020, (CURRENT_DATE - INTERVAL '146 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1496, (CURRENT_DATE - INTERVAL '146 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1191, (CURRENT_DATE - INTERVAL '146 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1498, (CURRENT_DATE - INTERVAL '146 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '146 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1481, (CURRENT_DATE - INTERVAL '146 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 871, (CURRENT_DATE - INTERVAL '146 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '146 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-11
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 274, (CURRENT_DATE - INTERVAL '145 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 248, (CURRENT_DATE - INTERVAL '145 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 257, (CURRENT_DATE - INTERVAL '145 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 318, (CURRENT_DATE - INTERVAL '145 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 664, (CURRENT_DATE - INTERVAL '145 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1706, (CURRENT_DATE - INTERVAL '145 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 492, (CURRENT_DATE - INTERVAL '145 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 465, (CURRENT_DATE - INTERVAL '145 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 2020, (CURRENT_DATE - INTERVAL '145 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1496, (CURRENT_DATE - INTERVAL '145 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1191, (CURRENT_DATE - INTERVAL '145 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1498, (CURRENT_DATE - INTERVAL '145 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '145 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1481, (CURRENT_DATE - INTERVAL '145 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 871, (CURRENT_DATE - INTERVAL '145 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '145 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-12
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 274, (CURRENT_DATE - INTERVAL '145 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 248, (CURRENT_DATE - INTERVAL '145 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 257, (CURRENT_DATE - INTERVAL '145 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 318, (CURRENT_DATE - INTERVAL '145 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 664, (CURRENT_DATE - INTERVAL '145 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1706, (CURRENT_DATE - INTERVAL '145 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 492, (CURRENT_DATE - INTERVAL '145 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 465, (CURRENT_DATE - INTERVAL '145 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 2020, (CURRENT_DATE - INTERVAL '145 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1496, (CURRENT_DATE - INTERVAL '145 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1191, (CURRENT_DATE - INTERVAL '145 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1498, (CURRENT_DATE - INTERVAL '145 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '145 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1481, (CURRENT_DATE - INTERVAL '145 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 871, (CURRENT_DATE - INTERVAL '145 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '145 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-13
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 274, (CURRENT_DATE - INTERVAL '144 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 248, (CURRENT_DATE - INTERVAL '144 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 257, (CURRENT_DATE - INTERVAL '144 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 318, (CURRENT_DATE - INTERVAL '144 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 664, (CURRENT_DATE - INTERVAL '144 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1706, (CURRENT_DATE - INTERVAL '144 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 492, (CURRENT_DATE - INTERVAL '144 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 465, (CURRENT_DATE - INTERVAL '144 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 2020, (CURRENT_DATE - INTERVAL '144 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1496, (CURRENT_DATE - INTERVAL '144 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1191, (CURRENT_DATE - INTERVAL '144 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1498, (CURRENT_DATE - INTERVAL '144 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '144 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1481, (CURRENT_DATE - INTERVAL '144 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 871, (CURRENT_DATE - INTERVAL '144 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '144 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-14
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 274, (CURRENT_DATE - INTERVAL '144 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 248, (CURRENT_DATE - INTERVAL '144 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 257, (CURRENT_DATE - INTERVAL '144 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 318, (CURRENT_DATE - INTERVAL '144 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 664, (CURRENT_DATE - INTERVAL '144 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1706, (CURRENT_DATE - INTERVAL '144 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 492, (CURRENT_DATE - INTERVAL '144 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 465, (CURRENT_DATE - INTERVAL '144 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 2020, (CURRENT_DATE - INTERVAL '144 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1496, (CURRENT_DATE - INTERVAL '144 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1191, (CURRENT_DATE - INTERVAL '144 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1498, (CURRENT_DATE - INTERVAL '144 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '144 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1481, (CURRENT_DATE - INTERVAL '144 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 871, (CURRENT_DATE - INTERVAL '144 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '144 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-15
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 274, (CURRENT_DATE - INTERVAL '143 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 248, (CURRENT_DATE - INTERVAL '143 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 257, (CURRENT_DATE - INTERVAL '143 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 318, (CURRENT_DATE - INTERVAL '143 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 664, (CURRENT_DATE - INTERVAL '143 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1706, (CURRENT_DATE - INTERVAL '143 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 492, (CURRENT_DATE - INTERVAL '143 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 465, (CURRENT_DATE - INTERVAL '143 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 2020, (CURRENT_DATE - INTERVAL '143 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1496, (CURRENT_DATE - INTERVAL '143 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1191, (CURRENT_DATE - INTERVAL '143 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1498, (CURRENT_DATE - INTERVAL '143 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '143 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1481, (CURRENT_DATE - INTERVAL '143 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 871, (CURRENT_DATE - INTERVAL '143 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '143 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-16
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 274, (CURRENT_DATE - INTERVAL '143 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 248, (CURRENT_DATE - INTERVAL '143 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 257, (CURRENT_DATE - INTERVAL '143 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 318, (CURRENT_DATE - INTERVAL '143 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 664, (CURRENT_DATE - INTERVAL '143 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1706, (CURRENT_DATE - INTERVAL '143 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 492, (CURRENT_DATE - INTERVAL '143 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 465, (CURRENT_DATE - INTERVAL '143 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 2020, (CURRENT_DATE - INTERVAL '143 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1496, (CURRENT_DATE - INTERVAL '143 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1191, (CURRENT_DATE - INTERVAL '143 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1498, (CURRENT_DATE - INTERVAL '143 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '143 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1481, (CURRENT_DATE - INTERVAL '143 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 871, (CURRENT_DATE - INTERVAL '143 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '143 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-17
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 258, (CURRENT_DATE - INTERVAL '142 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 237, (CURRENT_DATE - INTERVAL '142 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 247, (CURRENT_DATE - INTERVAL '142 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '142 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 737, (CURRENT_DATE - INTERVAL '142 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1904, (CURRENT_DATE - INTERVAL '142 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 510, (CURRENT_DATE - INTERVAL '142 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 443, (CURRENT_DATE - INTERVAL '142 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1913, (CURRENT_DATE - INTERVAL '142 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1473, (CURRENT_DATE - INTERVAL '142 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1191, (CURRENT_DATE - INTERVAL '142 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1436, (CURRENT_DATE - INTERVAL '142 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '142 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1509, (CURRENT_DATE - INTERVAL '142 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 886, (CURRENT_DATE - INTERVAL '142 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '142 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-18
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 258, (CURRENT_DATE - INTERVAL '142 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 237, (CURRENT_DATE - INTERVAL '142 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 247, (CURRENT_DATE - INTERVAL '142 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '142 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 737, (CURRENT_DATE - INTERVAL '142 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1904, (CURRENT_DATE - INTERVAL '142 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 510, (CURRENT_DATE - INTERVAL '142 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 443, (CURRENT_DATE - INTERVAL '142 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1913, (CURRENT_DATE - INTERVAL '142 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1473, (CURRENT_DATE - INTERVAL '142 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1191, (CURRENT_DATE - INTERVAL '142 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1436, (CURRENT_DATE - INTERVAL '142 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '142 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1509, (CURRENT_DATE - INTERVAL '142 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 886, (CURRENT_DATE - INTERVAL '142 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '142 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-19
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 258, (CURRENT_DATE - INTERVAL '141 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 237, (CURRENT_DATE - INTERVAL '141 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 247, (CURRENT_DATE - INTERVAL '141 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '141 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 737, (CURRENT_DATE - INTERVAL '141 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1904, (CURRENT_DATE - INTERVAL '141 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 510, (CURRENT_DATE - INTERVAL '141 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 443, (CURRENT_DATE - INTERVAL '141 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1913, (CURRENT_DATE - INTERVAL '141 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1473, (CURRENT_DATE - INTERVAL '141 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1189, (CURRENT_DATE - INTERVAL '141 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1436, (CURRENT_DATE - INTERVAL '141 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '141 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1509, (CURRENT_DATE - INTERVAL '141 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 886, (CURRENT_DATE - INTERVAL '141 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '141 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-20
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 258, (CURRENT_DATE - INTERVAL '141 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 237, (CURRENT_DATE - INTERVAL '141 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 247, (CURRENT_DATE - INTERVAL '141 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '141 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 737, (CURRENT_DATE - INTERVAL '141 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1904, (CURRENT_DATE - INTERVAL '141 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 510, (CURRENT_DATE - INTERVAL '141 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 443, (CURRENT_DATE - INTERVAL '141 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1913, (CURRENT_DATE - INTERVAL '141 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1473, (CURRENT_DATE - INTERVAL '141 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1189, (CURRENT_DATE - INTERVAL '141 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1436, (CURRENT_DATE - INTERVAL '141 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '141 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1509, (CURRENT_DATE - INTERVAL '141 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 886, (CURRENT_DATE - INTERVAL '141 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '141 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-21
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 258, (CURRENT_DATE - INTERVAL '140 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 237, (CURRENT_DATE - INTERVAL '140 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 247, (CURRENT_DATE - INTERVAL '140 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '140 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 737, (CURRENT_DATE - INTERVAL '140 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1904, (CURRENT_DATE - INTERVAL '140 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 510, (CURRENT_DATE - INTERVAL '140 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 443, (CURRENT_DATE - INTERVAL '140 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1913, (CURRENT_DATE - INTERVAL '140 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1473, (CURRENT_DATE - INTERVAL '140 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1189, (CURRENT_DATE - INTERVAL '140 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1436, (CURRENT_DATE - INTERVAL '140 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '140 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1509, (CURRENT_DATE - INTERVAL '140 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 886, (CURRENT_DATE - INTERVAL '140 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '140 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-22
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 258, (CURRENT_DATE - INTERVAL '140 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 237, (CURRENT_DATE - INTERVAL '140 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 247, (CURRENT_DATE - INTERVAL '140 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '140 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 737, (CURRENT_DATE - INTERVAL '140 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1904, (CURRENT_DATE - INTERVAL '140 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 510, (CURRENT_DATE - INTERVAL '140 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 443, (CURRENT_DATE - INTERVAL '140 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1913, (CURRENT_DATE - INTERVAL '140 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1473, (CURRENT_DATE - INTERVAL '140 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1189, (CURRENT_DATE - INTERVAL '140 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1436, (CURRENT_DATE - INTERVAL '140 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '140 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1509, (CURRENT_DATE - INTERVAL '140 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 886, (CURRENT_DATE - INTERVAL '140 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '140 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-23
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 258, (CURRENT_DATE - INTERVAL '139 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 237, (CURRENT_DATE - INTERVAL '139 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 247, (CURRENT_DATE - INTERVAL '139 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '139 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 737, (CURRENT_DATE - INTERVAL '139 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1904, (CURRENT_DATE - INTERVAL '139 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 510, (CURRENT_DATE - INTERVAL '139 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 443, (CURRENT_DATE - INTERVAL '139 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1913, (CURRENT_DATE - INTERVAL '139 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1473, (CURRENT_DATE - INTERVAL '139 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1189, (CURRENT_DATE - INTERVAL '139 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1436, (CURRENT_DATE - INTERVAL '139 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '139 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1509, (CURRENT_DATE - INTERVAL '139 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 886, (CURRENT_DATE - INTERVAL '139 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '139 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-24
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 258, (CURRENT_DATE - INTERVAL '139 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 237, (CURRENT_DATE - INTERVAL '139 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 247, (CURRENT_DATE - INTERVAL '139 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '139 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 737, (CURRENT_DATE - INTERVAL '139 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1904, (CURRENT_DATE - INTERVAL '139 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 510, (CURRENT_DATE - INTERVAL '139 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 443, (CURRENT_DATE - INTERVAL '139 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1913, (CURRENT_DATE - INTERVAL '139 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1473, (CURRENT_DATE - INTERVAL '139 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1189, (CURRENT_DATE - INTERVAL '139 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1436, (CURRENT_DATE - INTERVAL '139 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '139 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1509, (CURRENT_DATE - INTERVAL '139 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 886, (CURRENT_DATE - INTERVAL '139 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '139 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-25
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 258, (CURRENT_DATE - INTERVAL '138 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 237, (CURRENT_DATE - INTERVAL '138 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 247, (CURRENT_DATE - INTERVAL '138 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '138 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 737, (CURRENT_DATE - INTERVAL '138 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1904, (CURRENT_DATE - INTERVAL '138 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 510, (CURRENT_DATE - INTERVAL '138 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 443, (CURRENT_DATE - INTERVAL '138 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1913, (CURRENT_DATE - INTERVAL '138 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1473, (CURRENT_DATE - INTERVAL '138 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1189, (CURRENT_DATE - INTERVAL '138 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1436, (CURRENT_DATE - INTERVAL '138 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '138 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1509, (CURRENT_DATE - INTERVAL '138 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 886, (CURRENT_DATE - INTERVAL '138 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '138 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-26
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 258, (CURRENT_DATE - INTERVAL '138 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 237, (CURRENT_DATE - INTERVAL '138 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 247, (CURRENT_DATE - INTERVAL '138 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '138 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 737, (CURRENT_DATE - INTERVAL '138 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1904, (CURRENT_DATE - INTERVAL '138 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 510, (CURRENT_DATE - INTERVAL '138 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 443, (CURRENT_DATE - INTERVAL '138 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1913, (CURRENT_DATE - INTERVAL '138 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1473, (CURRENT_DATE - INTERVAL '138 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1189, (CURRENT_DATE - INTERVAL '138 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1436, (CURRENT_DATE - INTERVAL '138 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '138 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1509, (CURRENT_DATE - INTERVAL '138 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 886, (CURRENT_DATE - INTERVAL '138 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '138 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-27
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 258, (CURRENT_DATE - INTERVAL '137 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 237, (CURRENT_DATE - INTERVAL '137 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 247, (CURRENT_DATE - INTERVAL '137 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '137 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 737, (CURRENT_DATE - INTERVAL '137 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1904, (CURRENT_DATE - INTERVAL '137 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 510, (CURRENT_DATE - INTERVAL '137 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 443, (CURRENT_DATE - INTERVAL '137 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1913, (CURRENT_DATE - INTERVAL '137 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1473, (CURRENT_DATE - INTERVAL '137 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1189, (CURRENT_DATE - INTERVAL '137 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1436, (CURRENT_DATE - INTERVAL '137 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '137 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1509, (CURRENT_DATE - INTERVAL '137 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 886, (CURRENT_DATE - INTERVAL '137 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '137 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-28
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 258, (CURRENT_DATE - INTERVAL '137 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 237, (CURRENT_DATE - INTERVAL '137 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 247, (CURRENT_DATE - INTERVAL '137 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '137 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 737, (CURRENT_DATE - INTERVAL '137 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1904, (CURRENT_DATE - INTERVAL '137 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 510, (CURRENT_DATE - INTERVAL '137 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 443, (CURRENT_DATE - INTERVAL '137 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1913, (CURRENT_DATE - INTERVAL '137 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1473, (CURRENT_DATE - INTERVAL '137 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1189, (CURRENT_DATE - INTERVAL '137 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1436, (CURRENT_DATE - INTERVAL '137 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '137 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1509, (CURRENT_DATE - INTERVAL '137 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 886, (CURRENT_DATE - INTERVAL '137 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '137 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-29
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 258, (CURRENT_DATE - INTERVAL '136 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 237, (CURRENT_DATE - INTERVAL '136 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 247, (CURRENT_DATE - INTERVAL '136 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '136 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 737, (CURRENT_DATE - INTERVAL '136 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1904, (CURRENT_DATE - INTERVAL '136 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 510, (CURRENT_DATE - INTERVAL '136 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 443, (CURRENT_DATE - INTERVAL '136 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1913, (CURRENT_DATE - INTERVAL '136 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1473, (CURRENT_DATE - INTERVAL '136 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1189, (CURRENT_DATE - INTERVAL '136 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1436, (CURRENT_DATE - INTERVAL '136 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '136 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1509, (CURRENT_DATE - INTERVAL '136 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 886, (CURRENT_DATE - INTERVAL '136 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '136 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-30
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 258, (CURRENT_DATE - INTERVAL '136 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 237, (CURRENT_DATE - INTERVAL '136 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 247, (CURRENT_DATE - INTERVAL '136 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '136 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 737, (CURRENT_DATE - INTERVAL '136 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1904, (CURRENT_DATE - INTERVAL '136 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 510, (CURRENT_DATE - INTERVAL '136 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 443, (CURRENT_DATE - INTERVAL '136 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1913, (CURRENT_DATE - INTERVAL '136 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1473, (CURRENT_DATE - INTERVAL '136 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1189, (CURRENT_DATE - INTERVAL '136 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1436, (CURRENT_DATE - INTERVAL '136 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 2171, (CURRENT_DATE - INTERVAL '136 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1509, (CURRENT_DATE - INTERVAL '136 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 886, (CURRENT_DATE - INTERVAL '136 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '136 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-31
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 201, (CURRENT_DATE - INTERVAL '135 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 218, (CURRENT_DATE - INTERVAL '135 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '135 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 310, (CURRENT_DATE - INTERVAL '135 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 702, (CURRENT_DATE - INTERVAL '135 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1660, (CURRENT_DATE - INTERVAL '135 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 443, (CURRENT_DATE - INTERVAL '135 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 324, (CURRENT_DATE - INTERVAL '135 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1831, (CURRENT_DATE - INTERVAL '135 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1475, (CURRENT_DATE - INTERVAL '135 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 966, (CURRENT_DATE - INTERVAL '135 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1501, (CURRENT_DATE - INTERVAL '135 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '135 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1470, (CURRENT_DATE - INTERVAL '135 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1033, (CURRENT_DATE - INTERVAL '135 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '135 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-32
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 201, (CURRENT_DATE - INTERVAL '135 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 218, (CURRENT_DATE - INTERVAL '135 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '135 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 310, (CURRENT_DATE - INTERVAL '135 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 702, (CURRENT_DATE - INTERVAL '135 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1660, (CURRENT_DATE - INTERVAL '135 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 443, (CURRENT_DATE - INTERVAL '135 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 324, (CURRENT_DATE - INTERVAL '135 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1831, (CURRENT_DATE - INTERVAL '135 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1475, (CURRENT_DATE - INTERVAL '135 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 966, (CURRENT_DATE - INTERVAL '135 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1501, (CURRENT_DATE - INTERVAL '135 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '135 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1470, (CURRENT_DATE - INTERVAL '135 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1033, (CURRENT_DATE - INTERVAL '135 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '135 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-33
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 201, (CURRENT_DATE - INTERVAL '134 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 218, (CURRENT_DATE - INTERVAL '134 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '134 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 310, (CURRENT_DATE - INTERVAL '134 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 702, (CURRENT_DATE - INTERVAL '134 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1660, (CURRENT_DATE - INTERVAL '134 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 443, (CURRENT_DATE - INTERVAL '134 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 324, (CURRENT_DATE - INTERVAL '134 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1831, (CURRENT_DATE - INTERVAL '134 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1475, (CURRENT_DATE - INTERVAL '134 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 966, (CURRENT_DATE - INTERVAL '134 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1501, (CURRENT_DATE - INTERVAL '134 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '134 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1470, (CURRENT_DATE - INTERVAL '134 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1033, (CURRENT_DATE - INTERVAL '134 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '134 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-34
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 201, (CURRENT_DATE - INTERVAL '134 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 218, (CURRENT_DATE - INTERVAL '134 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '134 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 310, (CURRENT_DATE - INTERVAL '134 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 702, (CURRENT_DATE - INTERVAL '134 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1660, (CURRENT_DATE - INTERVAL '134 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 443, (CURRENT_DATE - INTERVAL '134 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 324, (CURRENT_DATE - INTERVAL '134 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1831, (CURRENT_DATE - INTERVAL '134 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1475, (CURRENT_DATE - INTERVAL '134 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 966, (CURRENT_DATE - INTERVAL '134 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1501, (CURRENT_DATE - INTERVAL '134 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '134 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1470, (CURRENT_DATE - INTERVAL '134 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1033, (CURRENT_DATE - INTERVAL '134 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '134 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-35
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 201, (CURRENT_DATE - INTERVAL '133 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 218, (CURRENT_DATE - INTERVAL '133 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '133 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 310, (CURRENT_DATE - INTERVAL '133 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 702, (CURRENT_DATE - INTERVAL '133 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1660, (CURRENT_DATE - INTERVAL '133 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 443, (CURRENT_DATE - INTERVAL '133 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 324, (CURRENT_DATE - INTERVAL '133 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1831, (CURRENT_DATE - INTERVAL '133 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1475, (CURRENT_DATE - INTERVAL '133 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 966, (CURRENT_DATE - INTERVAL '133 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1501, (CURRENT_DATE - INTERVAL '133 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '133 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1470, (CURRENT_DATE - INTERVAL '133 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1033, (CURRENT_DATE - INTERVAL '133 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '133 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-36
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 201, (CURRENT_DATE - INTERVAL '133 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 218, (CURRENT_DATE - INTERVAL '133 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '133 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 310, (CURRENT_DATE - INTERVAL '133 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 702, (CURRENT_DATE - INTERVAL '133 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1660, (CURRENT_DATE - INTERVAL '133 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 443, (CURRENT_DATE - INTERVAL '133 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 324, (CURRENT_DATE - INTERVAL '133 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1831, (CURRENT_DATE - INTERVAL '133 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1475, (CURRENT_DATE - INTERVAL '133 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 966, (CURRENT_DATE - INTERVAL '133 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1501, (CURRENT_DATE - INTERVAL '133 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '133 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1470, (CURRENT_DATE - INTERVAL '133 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1033, (CURRENT_DATE - INTERVAL '133 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '133 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-37
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 201, (CURRENT_DATE - INTERVAL '132 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 218, (CURRENT_DATE - INTERVAL '132 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '132 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 310, (CURRENT_DATE - INTERVAL '132 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 702, (CURRENT_DATE - INTERVAL '132 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1660, (CURRENT_DATE - INTERVAL '132 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 443, (CURRENT_DATE - INTERVAL '132 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 324, (CURRENT_DATE - INTERVAL '132 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1831, (CURRENT_DATE - INTERVAL '132 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1475, (CURRENT_DATE - INTERVAL '132 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 966, (CURRENT_DATE - INTERVAL '132 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1501, (CURRENT_DATE - INTERVAL '132 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '132 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1470, (CURRENT_DATE - INTERVAL '132 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1033, (CURRENT_DATE - INTERVAL '132 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '132 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-38
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 201, (CURRENT_DATE - INTERVAL '132 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 218, (CURRENT_DATE - INTERVAL '132 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '132 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 310, (CURRENT_DATE - INTERVAL '132 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 702, (CURRENT_DATE - INTERVAL '132 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1660, (CURRENT_DATE - INTERVAL '132 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 443, (CURRENT_DATE - INTERVAL '132 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 324, (CURRENT_DATE - INTERVAL '132 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1831, (CURRENT_DATE - INTERVAL '132 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1475, (CURRENT_DATE - INTERVAL '132 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 966, (CURRENT_DATE - INTERVAL '132 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1501, (CURRENT_DATE - INTERVAL '132 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '132 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1470, (CURRENT_DATE - INTERVAL '132 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1033, (CURRENT_DATE - INTERVAL '132 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '132 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-39
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 201, (CURRENT_DATE - INTERVAL '131 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 218, (CURRENT_DATE - INTERVAL '131 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '131 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 310, (CURRENT_DATE - INTERVAL '131 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 702, (CURRENT_DATE - INTERVAL '131 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1660, (CURRENT_DATE - INTERVAL '131 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 443, (CURRENT_DATE - INTERVAL '131 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 324, (CURRENT_DATE - INTERVAL '131 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1831, (CURRENT_DATE - INTERVAL '131 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1475, (CURRENT_DATE - INTERVAL '131 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 966, (CURRENT_DATE - INTERVAL '131 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1501, (CURRENT_DATE - INTERVAL '131 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '131 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1470, (CURRENT_DATE - INTERVAL '131 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1033, (CURRENT_DATE - INTERVAL '131 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '131 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-40
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 201, (CURRENT_DATE - INTERVAL '131 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 218, (CURRENT_DATE - INTERVAL '131 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '131 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 310, (CURRENT_DATE - INTERVAL '131 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 702, (CURRENT_DATE - INTERVAL '131 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1660, (CURRENT_DATE - INTERVAL '131 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 443, (CURRENT_DATE - INTERVAL '131 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 324, (CURRENT_DATE - INTERVAL '131 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1831, (CURRENT_DATE - INTERVAL '131 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1475, (CURRENT_DATE - INTERVAL '131 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 966, (CURRENT_DATE - INTERVAL '131 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1501, (CURRENT_DATE - INTERVAL '131 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '131 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1470, (CURRENT_DATE - INTERVAL '131 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1033, (CURRENT_DATE - INTERVAL '131 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '131 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-41
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 201, (CURRENT_DATE - INTERVAL '130 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 218, (CURRENT_DATE - INTERVAL '130 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '130 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 310, (CURRENT_DATE - INTERVAL '130 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 702, (CURRENT_DATE - INTERVAL '130 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1660, (CURRENT_DATE - INTERVAL '130 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 443, (CURRENT_DATE - INTERVAL '130 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 324, (CURRENT_DATE - INTERVAL '130 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1831, (CURRENT_DATE - INTERVAL '130 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1475, (CURRENT_DATE - INTERVAL '130 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 966, (CURRENT_DATE - INTERVAL '130 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1501, (CURRENT_DATE - INTERVAL '130 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '130 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1470, (CURRENT_DATE - INTERVAL '130 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1033, (CURRENT_DATE - INTERVAL '130 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '130 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-42
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 201, (CURRENT_DATE - INTERVAL '130 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 218, (CURRENT_DATE - INTERVAL '130 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '130 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 310, (CURRENT_DATE - INTERVAL '130 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 702, (CURRENT_DATE - INTERVAL '130 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1660, (CURRENT_DATE - INTERVAL '130 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 443, (CURRENT_DATE - INTERVAL '130 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 324, (CURRENT_DATE - INTERVAL '130 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1831, (CURRENT_DATE - INTERVAL '130 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1475, (CURRENT_DATE - INTERVAL '130 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 966, (CURRENT_DATE - INTERVAL '130 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1501, (CURRENT_DATE - INTERVAL '130 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '130 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1470, (CURRENT_DATE - INTERVAL '130 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1033, (CURRENT_DATE - INTERVAL '130 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '130 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-43
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 201, (CURRENT_DATE - INTERVAL '129 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 218, (CURRENT_DATE - INTERVAL '129 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '129 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 310, (CURRENT_DATE - INTERVAL '129 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 702, (CURRENT_DATE - INTERVAL '129 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1660, (CURRENT_DATE - INTERVAL '129 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 443, (CURRENT_DATE - INTERVAL '129 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 324, (CURRENT_DATE - INTERVAL '129 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1831, (CURRENT_DATE - INTERVAL '129 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1475, (CURRENT_DATE - INTERVAL '129 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 966, (CURRENT_DATE - INTERVAL '129 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1501, (CURRENT_DATE - INTERVAL '129 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '129 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1470, (CURRENT_DATE - INTERVAL '129 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1033, (CURRENT_DATE - INTERVAL '129 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '129 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-44
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 201, (CURRENT_DATE - INTERVAL '129 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 218, (CURRENT_DATE - INTERVAL '129 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '129 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 310, (CURRENT_DATE - INTERVAL '129 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 702, (CURRENT_DATE - INTERVAL '129 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1660, (CURRENT_DATE - INTERVAL '129 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 443, (CURRENT_DATE - INTERVAL '129 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 324, (CURRENT_DATE - INTERVAL '129 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1831, (CURRENT_DATE - INTERVAL '129 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1475, (CURRENT_DATE - INTERVAL '129 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 966, (CURRENT_DATE - INTERVAL '129 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1501, (CURRENT_DATE - INTERVAL '129 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '129 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1470, (CURRENT_DATE - INTERVAL '129 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1033, (CURRENT_DATE - INTERVAL '129 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '129 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-45
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 208, (CURRENT_DATE - INTERVAL '128 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 211, (CURRENT_DATE - INTERVAL '128 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 217, (CURRENT_DATE - INTERVAL '128 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '128 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 575, (CURRENT_DATE - INTERVAL '128 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1392, (CURRENT_DATE - INTERVAL '128 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 449, (CURRENT_DATE - INTERVAL '128 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 328, (CURRENT_DATE - INTERVAL '128 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1652, (CURRENT_DATE - INTERVAL '128 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1478, (CURRENT_DATE - INTERVAL '128 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 852, (CURRENT_DATE - INTERVAL '128 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1620, (CURRENT_DATE - INTERVAL '128 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '128 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1507, (CURRENT_DATE - INTERVAL '128 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '128 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '128 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-46
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 208, (CURRENT_DATE - INTERVAL '128 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 211, (CURRENT_DATE - INTERVAL '128 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 217, (CURRENT_DATE - INTERVAL '128 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '128 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 575, (CURRENT_DATE - INTERVAL '128 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1392, (CURRENT_DATE - INTERVAL '128 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 449, (CURRENT_DATE - INTERVAL '128 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 328, (CURRENT_DATE - INTERVAL '128 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1652, (CURRENT_DATE - INTERVAL '128 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1478, (CURRENT_DATE - INTERVAL '128 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 852, (CURRENT_DATE - INTERVAL '128 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1620, (CURRENT_DATE - INTERVAL '128 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '128 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1507, (CURRENT_DATE - INTERVAL '128 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '128 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '128 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-47
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 208, (CURRENT_DATE - INTERVAL '127 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 211, (CURRENT_DATE - INTERVAL '127 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 217, (CURRENT_DATE - INTERVAL '127 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '127 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 575, (CURRENT_DATE - INTERVAL '127 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1392, (CURRENT_DATE - INTERVAL '127 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 449, (CURRENT_DATE - INTERVAL '127 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 328, (CURRENT_DATE - INTERVAL '127 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1652, (CURRENT_DATE - INTERVAL '127 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1478, (CURRENT_DATE - INTERVAL '127 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 852, (CURRENT_DATE - INTERVAL '127 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1620, (CURRENT_DATE - INTERVAL '127 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '127 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1507, (CURRENT_DATE - INTERVAL '127 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '127 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '127 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-48
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 208, (CURRENT_DATE - INTERVAL '127 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 211, (CURRENT_DATE - INTERVAL '127 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 217, (CURRENT_DATE - INTERVAL '127 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '127 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 575, (CURRENT_DATE - INTERVAL '127 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1392, (CURRENT_DATE - INTERVAL '127 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 449, (CURRENT_DATE - INTERVAL '127 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 328, (CURRENT_DATE - INTERVAL '127 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1652, (CURRENT_DATE - INTERVAL '127 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1478, (CURRENT_DATE - INTERVAL '127 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 852, (CURRENT_DATE - INTERVAL '127 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1620, (CURRENT_DATE - INTERVAL '127 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '127 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1507, (CURRENT_DATE - INTERVAL '127 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '127 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '127 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-49
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 208, (CURRENT_DATE - INTERVAL '126 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 211, (CURRENT_DATE - INTERVAL '126 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 217, (CURRENT_DATE - INTERVAL '126 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '126 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 575, (CURRENT_DATE - INTERVAL '126 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1392, (CURRENT_DATE - INTERVAL '126 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 449, (CURRENT_DATE - INTERVAL '126 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 328, (CURRENT_DATE - INTERVAL '126 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1652, (CURRENT_DATE - INTERVAL '126 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1478, (CURRENT_DATE - INTERVAL '126 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 852, (CURRENT_DATE - INTERVAL '126 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1620, (CURRENT_DATE - INTERVAL '126 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '126 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1507, (CURRENT_DATE - INTERVAL '126 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '126 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '126 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-50
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 208, (CURRENT_DATE - INTERVAL '126 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 211, (CURRENT_DATE - INTERVAL '126 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 217, (CURRENT_DATE - INTERVAL '126 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '126 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 575, (CURRENT_DATE - INTERVAL '126 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1392, (CURRENT_DATE - INTERVAL '126 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 449, (CURRENT_DATE - INTERVAL '126 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 328, (CURRENT_DATE - INTERVAL '126 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1652, (CURRENT_DATE - INTERVAL '126 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1478, (CURRENT_DATE - INTERVAL '126 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 852, (CURRENT_DATE - INTERVAL '126 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1620, (CURRENT_DATE - INTERVAL '126 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '126 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1507, (CURRENT_DATE - INTERVAL '126 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '126 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '126 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-51
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 208, (CURRENT_DATE - INTERVAL '125 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 211, (CURRENT_DATE - INTERVAL '125 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 217, (CURRENT_DATE - INTERVAL '125 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '125 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 575, (CURRENT_DATE - INTERVAL '125 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1392, (CURRENT_DATE - INTERVAL '125 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 449, (CURRENT_DATE - INTERVAL '125 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 328, (CURRENT_DATE - INTERVAL '125 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1652, (CURRENT_DATE - INTERVAL '125 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1478, (CURRENT_DATE - INTERVAL '125 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 852, (CURRENT_DATE - INTERVAL '125 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1620, (CURRENT_DATE - INTERVAL '125 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '125 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1507, (CURRENT_DATE - INTERVAL '125 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '125 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '125 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-52
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 208, (CURRENT_DATE - INTERVAL '125 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 211, (CURRENT_DATE - INTERVAL '125 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 217, (CURRENT_DATE - INTERVAL '125 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '125 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 575, (CURRENT_DATE - INTERVAL '125 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1392, (CURRENT_DATE - INTERVAL '125 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 449, (CURRENT_DATE - INTERVAL '125 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 328, (CURRENT_DATE - INTERVAL '125 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1652, (CURRENT_DATE - INTERVAL '125 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1478, (CURRENT_DATE - INTERVAL '125 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 852, (CURRENT_DATE - INTERVAL '125 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1620, (CURRENT_DATE - INTERVAL '125 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '125 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1507, (CURRENT_DATE - INTERVAL '125 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '125 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '125 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-53
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 208, (CURRENT_DATE - INTERVAL '124 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 211, (CURRENT_DATE - INTERVAL '124 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 217, (CURRENT_DATE - INTERVAL '124 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '124 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 575, (CURRENT_DATE - INTERVAL '124 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1392, (CURRENT_DATE - INTERVAL '124 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 449, (CURRENT_DATE - INTERVAL '124 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 328, (CURRENT_DATE - INTERVAL '124 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1652, (CURRENT_DATE - INTERVAL '124 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1478, (CURRENT_DATE - INTERVAL '124 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 852, (CURRENT_DATE - INTERVAL '124 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1620, (CURRENT_DATE - INTERVAL '124 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '124 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1507, (CURRENT_DATE - INTERVAL '124 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '124 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '124 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-54
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 208, (CURRENT_DATE - INTERVAL '124 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 211, (CURRENT_DATE - INTERVAL '124 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 217, (CURRENT_DATE - INTERVAL '124 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '124 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 575, (CURRENT_DATE - INTERVAL '124 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1392, (CURRENT_DATE - INTERVAL '124 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 449, (CURRENT_DATE - INTERVAL '124 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 328, (CURRENT_DATE - INTERVAL '124 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1652, (CURRENT_DATE - INTERVAL '124 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1478, (CURRENT_DATE - INTERVAL '124 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 852, (CURRENT_DATE - INTERVAL '124 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1620, (CURRENT_DATE - INTERVAL '124 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '124 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1507, (CURRENT_DATE - INTERVAL '124 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '124 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '124 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-55
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 208, (CURRENT_DATE - INTERVAL '123 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 211, (CURRENT_DATE - INTERVAL '123 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 217, (CURRENT_DATE - INTERVAL '123 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '123 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 575, (CURRENT_DATE - INTERVAL '123 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1392, (CURRENT_DATE - INTERVAL '123 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 449, (CURRENT_DATE - INTERVAL '123 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 328, (CURRENT_DATE - INTERVAL '123 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1652, (CURRENT_DATE - INTERVAL '123 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1478, (CURRENT_DATE - INTERVAL '123 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 852, (CURRENT_DATE - INTERVAL '123 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1620, (CURRENT_DATE - INTERVAL '123 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '123 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1507, (CURRENT_DATE - INTERVAL '123 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '123 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '123 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-56
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 208, (CURRENT_DATE - INTERVAL '123 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 211, (CURRENT_DATE - INTERVAL '123 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 217, (CURRENT_DATE - INTERVAL '123 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '123 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 575, (CURRENT_DATE - INTERVAL '123 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1392, (CURRENT_DATE - INTERVAL '123 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 449, (CURRENT_DATE - INTERVAL '123 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 328, (CURRENT_DATE - INTERVAL '123 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1652, (CURRENT_DATE - INTERVAL '123 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1478, (CURRENT_DATE - INTERVAL '123 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 852, (CURRENT_DATE - INTERVAL '123 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1620, (CURRENT_DATE - INTERVAL '123 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '123 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1507, (CURRENT_DATE - INTERVAL '123 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '123 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '123 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-57
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 208, (CURRENT_DATE - INTERVAL '122 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 211, (CURRENT_DATE - INTERVAL '122 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 217, (CURRENT_DATE - INTERVAL '122 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '122 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 575, (CURRENT_DATE - INTERVAL '122 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1392, (CURRENT_DATE - INTERVAL '122 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 449, (CURRENT_DATE - INTERVAL '122 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 328, (CURRENT_DATE - INTERVAL '122 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1652, (CURRENT_DATE - INTERVAL '122 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1478, (CURRENT_DATE - INTERVAL '122 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 852, (CURRENT_DATE - INTERVAL '122 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1620, (CURRENT_DATE - INTERVAL '122 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '122 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1507, (CURRENT_DATE - INTERVAL '122 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '122 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '122 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-58
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 208, (CURRENT_DATE - INTERVAL '122 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 211, (CURRENT_DATE - INTERVAL '122 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 217, (CURRENT_DATE - INTERVAL '122 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '122 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 575, (CURRENT_DATE - INTERVAL '122 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1392, (CURRENT_DATE - INTERVAL '122 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 449, (CURRENT_DATE - INTERVAL '122 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 328, (CURRENT_DATE - INTERVAL '122 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1652, (CURRENT_DATE - INTERVAL '122 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1478, (CURRENT_DATE - INTERVAL '122 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 852, (CURRENT_DATE - INTERVAL '122 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1620, (CURRENT_DATE - INTERVAL '122 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '122 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1507, (CURRENT_DATE - INTERVAL '122 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '122 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '122 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-59
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '121 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 210, (CURRENT_DATE - INTERVAL '121 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 219, (CURRENT_DATE - INTERVAL '121 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '121 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 730, (CURRENT_DATE - INTERVAL '121 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1566, (CURRENT_DATE - INTERVAL '121 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 466, (CURRENT_DATE - INTERVAL '121 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '121 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1615, (CURRENT_DATE - INTERVAL '121 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1469, (CURRENT_DATE - INTERVAL '121 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 828, (CURRENT_DATE - INTERVAL '121 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1768, (CURRENT_DATE - INTERVAL '121 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '121 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1449, (CURRENT_DATE - INTERVAL '121 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 969, (CURRENT_DATE - INTERVAL '121 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '121 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-60
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '121 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 210, (CURRENT_DATE - INTERVAL '121 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 219, (CURRENT_DATE - INTERVAL '121 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '121 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 730, (CURRENT_DATE - INTERVAL '121 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1566, (CURRENT_DATE - INTERVAL '121 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 466, (CURRENT_DATE - INTERVAL '121 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '121 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1615, (CURRENT_DATE - INTERVAL '121 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1469, (CURRENT_DATE - INTERVAL '121 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 828, (CURRENT_DATE - INTERVAL '121 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1768, (CURRENT_DATE - INTERVAL '121 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '121 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1449, (CURRENT_DATE - INTERVAL '121 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 969, (CURRENT_DATE - INTERVAL '121 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '121 days' + TIME '18:00:00'));
