--liquibase formatted sql

--changeset steshabolk:init-prices-1
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '30 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '30 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '30 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 287, (CURRENT_DATE - INTERVAL '30 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 682, (CURRENT_DATE - INTERVAL '30 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1508, (CURRENT_DATE - INTERVAL '30 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '30 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 392, (CURRENT_DATE - INTERVAL '30 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1794, (CURRENT_DATE - INTERVAL '30 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1348, (CURRENT_DATE - INTERVAL '30 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '30 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1791, (CURRENT_DATE - INTERVAL '30 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '30 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '30 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1056, (CURRENT_DATE - INTERVAL '30 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 279, (CURRENT_DATE - INTERVAL '30 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-2
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '30 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '30 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '30 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 287, (CURRENT_DATE - INTERVAL '30 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 682, (CURRENT_DATE - INTERVAL '30 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1508, (CURRENT_DATE - INTERVAL '30 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '30 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 392, (CURRENT_DATE - INTERVAL '30 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1794, (CURRENT_DATE - INTERVAL '30 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1348, (CURRENT_DATE - INTERVAL '30 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '30 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1791, (CURRENT_DATE - INTERVAL '30 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '30 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '30 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1056, (CURRENT_DATE - INTERVAL '30 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 279, (CURRENT_DATE - INTERVAL '30 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-3
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '29 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '29 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '29 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 287, (CURRENT_DATE - INTERVAL '29 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 682, (CURRENT_DATE - INTERVAL '29 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1508, (CURRENT_DATE - INTERVAL '29 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '29 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 392, (CURRENT_DATE - INTERVAL '29 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1794, (CURRENT_DATE - INTERVAL '29 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1348, (CURRENT_DATE - INTERVAL '29 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '29 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1791, (CURRENT_DATE - INTERVAL '29 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '29 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '29 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1056, (CURRENT_DATE - INTERVAL '29 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 279, (CURRENT_DATE - INTERVAL '29 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-4
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '29 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '29 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '29 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 287, (CURRENT_DATE - INTERVAL '29 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 682, (CURRENT_DATE - INTERVAL '29 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1508, (CURRENT_DATE - INTERVAL '29 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '29 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 392, (CURRENT_DATE - INTERVAL '29 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1794, (CURRENT_DATE - INTERVAL '29 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1348, (CURRENT_DATE - INTERVAL '29 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '29 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1791, (CURRENT_DATE - INTERVAL '29 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '29 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '29 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1056, (CURRENT_DATE - INTERVAL '29 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 279, (CURRENT_DATE - INTERVAL '29 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-5
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '28 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '28 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '28 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 287, (CURRENT_DATE - INTERVAL '28 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 682, (CURRENT_DATE - INTERVAL '28 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1508, (CURRENT_DATE - INTERVAL '28 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '28 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 392, (CURRENT_DATE - INTERVAL '28 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1794, (CURRENT_DATE - INTERVAL '28 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1348, (CURRENT_DATE - INTERVAL '28 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '28 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1791, (CURRENT_DATE - INTERVAL '28 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '28 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '28 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1056, (CURRENT_DATE - INTERVAL '28 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 279, (CURRENT_DATE - INTERVAL '28 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-6
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '28 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '28 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '28 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 287, (CURRENT_DATE - INTERVAL '28 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 682, (CURRENT_DATE - INTERVAL '28 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1508, (CURRENT_DATE - INTERVAL '28 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '28 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 392, (CURRENT_DATE - INTERVAL '28 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1794, (CURRENT_DATE - INTERVAL '28 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1348, (CURRENT_DATE - INTERVAL '28 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '28 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1791, (CURRENT_DATE - INTERVAL '28 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '28 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '28 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1056, (CURRENT_DATE - INTERVAL '28 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 279, (CURRENT_DATE - INTERVAL '28 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-7
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '27 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '27 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '27 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 287, (CURRENT_DATE - INTERVAL '27 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 682, (CURRENT_DATE - INTERVAL '27 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1508, (CURRENT_DATE - INTERVAL '27 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '27 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 392, (CURRENT_DATE - INTERVAL '27 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1794, (CURRENT_DATE - INTERVAL '27 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1348, (CURRENT_DATE - INTERVAL '27 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '27 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1791, (CURRENT_DATE - INTERVAL '27 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '27 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '27 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1056, (CURRENT_DATE - INTERVAL '27 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 279, (CURRENT_DATE - INTERVAL '27 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-8
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '27 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '27 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '27 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 287, (CURRENT_DATE - INTERVAL '27 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 682, (CURRENT_DATE - INTERVAL '27 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1508, (CURRENT_DATE - INTERVAL '27 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '27 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 392, (CURRENT_DATE - INTERVAL '27 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1794, (CURRENT_DATE - INTERVAL '27 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1348, (CURRENT_DATE - INTERVAL '27 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '27 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1791, (CURRENT_DATE - INTERVAL '27 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '27 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '27 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1056, (CURRENT_DATE - INTERVAL '27 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 279, (CURRENT_DATE - INTERVAL '27 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-9
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '26 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '26 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '26 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 287, (CURRENT_DATE - INTERVAL '26 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 682, (CURRENT_DATE - INTERVAL '26 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1508, (CURRENT_DATE - INTERVAL '26 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '26 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 392, (CURRENT_DATE - INTERVAL '26 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1794, (CURRENT_DATE - INTERVAL '26 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1348, (CURRENT_DATE - INTERVAL '26 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '26 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1791, (CURRENT_DATE - INTERVAL '26 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '26 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '26 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1056, (CURRENT_DATE - INTERVAL '26 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 279, (CURRENT_DATE - INTERVAL '26 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-10
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '26 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '26 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '26 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 287, (CURRENT_DATE - INTERVAL '26 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 682, (CURRENT_DATE - INTERVAL '26 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1508, (CURRENT_DATE - INTERVAL '26 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '26 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 392, (CURRENT_DATE - INTERVAL '26 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1794, (CURRENT_DATE - INTERVAL '26 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1348, (CURRENT_DATE - INTERVAL '26 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '26 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1791, (CURRENT_DATE - INTERVAL '26 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '26 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '26 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1056, (CURRENT_DATE - INTERVAL '26 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 279, (CURRENT_DATE - INTERVAL '26 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-11
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '25 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '25 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '25 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 287, (CURRENT_DATE - INTERVAL '25 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 682, (CURRENT_DATE - INTERVAL '25 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1508, (CURRENT_DATE - INTERVAL '25 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '25 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 392, (CURRENT_DATE - INTERVAL '25 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1794, (CURRENT_DATE - INTERVAL '25 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1348, (CURRENT_DATE - INTERVAL '25 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '25 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1791, (CURRENT_DATE - INTERVAL '25 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '25 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '25 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1056, (CURRENT_DATE - INTERVAL '25 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 279, (CURRENT_DATE - INTERVAL '25 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-12
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '25 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '25 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '25 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 287, (CURRENT_DATE - INTERVAL '25 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 682, (CURRENT_DATE - INTERVAL '25 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1508, (CURRENT_DATE - INTERVAL '25 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '25 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 392, (CURRENT_DATE - INTERVAL '25 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1794, (CURRENT_DATE - INTERVAL '25 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1348, (CURRENT_DATE - INTERVAL '25 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '25 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1791, (CURRENT_DATE - INTERVAL '25 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '25 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '25 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1056, (CURRENT_DATE - INTERVAL '25 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 279, (CURRENT_DATE - INTERVAL '25 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-13
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '24 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '24 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '24 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 287, (CURRENT_DATE - INTERVAL '24 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 682, (CURRENT_DATE - INTERVAL '24 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1508, (CURRENT_DATE - INTERVAL '24 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '24 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 392, (CURRENT_DATE - INTERVAL '24 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1794, (CURRENT_DATE - INTERVAL '24 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1348, (CURRENT_DATE - INTERVAL '24 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '24 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1791, (CURRENT_DATE - INTERVAL '24 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '24 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '24 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1056, (CURRENT_DATE - INTERVAL '24 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 279, (CURRENT_DATE - INTERVAL '24 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-14
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '24 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '24 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '24 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 287, (CURRENT_DATE - INTERVAL '24 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 682, (CURRENT_DATE - INTERVAL '24 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1508, (CURRENT_DATE - INTERVAL '24 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '24 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 392, (CURRENT_DATE - INTERVAL '24 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1794, (CURRENT_DATE - INTERVAL '24 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1348, (CURRENT_DATE - INTERVAL '24 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '24 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1791, (CURRENT_DATE - INTERVAL '24 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '24 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '24 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1056, (CURRENT_DATE - INTERVAL '24 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 279, (CURRENT_DATE - INTERVAL '24 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-15
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '23 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '23 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '23 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 284, (CURRENT_DATE - INTERVAL '23 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 688, (CURRENT_DATE - INTERVAL '23 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1512, (CURRENT_DATE - INTERVAL '23 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 554, (CURRENT_DATE - INTERVAL '23 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 396, (CURRENT_DATE - INTERVAL '23 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1819, (CURRENT_DATE - INTERVAL '23 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1361, (CURRENT_DATE - INTERVAL '23 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 984, (CURRENT_DATE - INTERVAL '23 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1811, (CURRENT_DATE - INTERVAL '23 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1900, (CURRENT_DATE - INTERVAL '23 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1694, (CURRENT_DATE - INTERVAL '23 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1054, (CURRENT_DATE - INTERVAL '23 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 275, (CURRENT_DATE - INTERVAL '23 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-16
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '23 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '23 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '23 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 284, (CURRENT_DATE - INTERVAL '23 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 688, (CURRENT_DATE - INTERVAL '23 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1512, (CURRENT_DATE - INTERVAL '23 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 554, (CURRENT_DATE - INTERVAL '23 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 396, (CURRENT_DATE - INTERVAL '23 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1819, (CURRENT_DATE - INTERVAL '23 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1361, (CURRENT_DATE - INTERVAL '23 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 984, (CURRENT_DATE - INTERVAL '23 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1811, (CURRENT_DATE - INTERVAL '23 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1900, (CURRENT_DATE - INTERVAL '23 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1694, (CURRENT_DATE - INTERVAL '23 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1054, (CURRENT_DATE - INTERVAL '23 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 275, (CURRENT_DATE - INTERVAL '23 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-17
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '22 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '22 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '22 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 284, (CURRENT_DATE - INTERVAL '22 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 688, (CURRENT_DATE - INTERVAL '22 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1512, (CURRENT_DATE - INTERVAL '22 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 554, (CURRENT_DATE - INTERVAL '22 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 396, (CURRENT_DATE - INTERVAL '22 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1819, (CURRENT_DATE - INTERVAL '22 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1361, (CURRENT_DATE - INTERVAL '22 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 984, (CURRENT_DATE - INTERVAL '22 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1811, (CURRENT_DATE - INTERVAL '22 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1900, (CURRENT_DATE - INTERVAL '22 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1694, (CURRENT_DATE - INTERVAL '22 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1054, (CURRENT_DATE - INTERVAL '22 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 275, (CURRENT_DATE - INTERVAL '22 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-18
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '22 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '22 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '22 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 284, (CURRENT_DATE - INTERVAL '22 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 688, (CURRENT_DATE - INTERVAL '22 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1512, (CURRENT_DATE - INTERVAL '22 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 554, (CURRENT_DATE - INTERVAL '22 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 396, (CURRENT_DATE - INTERVAL '22 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1819, (CURRENT_DATE - INTERVAL '22 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1361, (CURRENT_DATE - INTERVAL '22 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 984, (CURRENT_DATE - INTERVAL '22 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1811, (CURRENT_DATE - INTERVAL '22 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1900, (CURRENT_DATE - INTERVAL '22 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1694, (CURRENT_DATE - INTERVAL '22 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1054, (CURRENT_DATE - INTERVAL '22 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 275, (CURRENT_DATE - INTERVAL '22 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-19
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '21 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '21 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '21 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 284, (CURRENT_DATE - INTERVAL '21 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 688, (CURRENT_DATE - INTERVAL '21 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1512, (CURRENT_DATE - INTERVAL '21 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 554, (CURRENT_DATE - INTERVAL '21 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 396, (CURRENT_DATE - INTERVAL '21 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1819, (CURRENT_DATE - INTERVAL '21 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1361, (CURRENT_DATE - INTERVAL '21 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 984, (CURRENT_DATE - INTERVAL '21 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1811, (CURRENT_DATE - INTERVAL '21 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1900, (CURRENT_DATE - INTERVAL '21 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1694, (CURRENT_DATE - INTERVAL '21 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1054, (CURRENT_DATE - INTERVAL '21 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 275, (CURRENT_DATE - INTERVAL '21 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-20
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '21 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '21 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '21 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 284, (CURRENT_DATE - INTERVAL '21 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 688, (CURRENT_DATE - INTERVAL '21 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1512, (CURRENT_DATE - INTERVAL '21 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 554, (CURRENT_DATE - INTERVAL '21 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 396, (CURRENT_DATE - INTERVAL '21 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1819, (CURRENT_DATE - INTERVAL '21 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1361, (CURRENT_DATE - INTERVAL '21 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 984, (CURRENT_DATE - INTERVAL '21 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1811, (CURRENT_DATE - INTERVAL '21 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1900, (CURRENT_DATE - INTERVAL '21 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1694, (CURRENT_DATE - INTERVAL '21 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1054, (CURRENT_DATE - INTERVAL '21 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 275, (CURRENT_DATE - INTERVAL '21 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-21
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '20 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '20 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '20 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 284, (CURRENT_DATE - INTERVAL '20 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 688, (CURRENT_DATE - INTERVAL '20 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1512, (CURRENT_DATE - INTERVAL '20 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 554, (CURRENT_DATE - INTERVAL '20 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 396, (CURRENT_DATE - INTERVAL '20 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1819, (CURRENT_DATE - INTERVAL '20 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1361, (CURRENT_DATE - INTERVAL '20 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 984, (CURRENT_DATE - INTERVAL '20 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1811, (CURRENT_DATE - INTERVAL '20 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1900, (CURRENT_DATE - INTERVAL '20 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1694, (CURRENT_DATE - INTERVAL '20 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1054, (CURRENT_DATE - INTERVAL '20 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 275, (CURRENT_DATE - INTERVAL '20 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-22
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '20 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '20 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '20 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 284, (CURRENT_DATE - INTERVAL '20 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 688, (CURRENT_DATE - INTERVAL '20 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1512, (CURRENT_DATE - INTERVAL '20 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 554, (CURRENT_DATE - INTERVAL '20 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 396, (CURRENT_DATE - INTERVAL '20 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1819, (CURRENT_DATE - INTERVAL '20 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1361, (CURRENT_DATE - INTERVAL '20 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 984, (CURRENT_DATE - INTERVAL '20 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1811, (CURRENT_DATE - INTERVAL '20 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1900, (CURRENT_DATE - INTERVAL '20 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1694, (CURRENT_DATE - INTERVAL '20 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1054, (CURRENT_DATE - INTERVAL '20 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 275, (CURRENT_DATE - INTERVAL '20 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-23
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '19 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '19 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '19 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 284, (CURRENT_DATE - INTERVAL '19 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 688, (CURRENT_DATE - INTERVAL '19 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1512, (CURRENT_DATE - INTERVAL '19 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 554, (CURRENT_DATE - INTERVAL '19 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 396, (CURRENT_DATE - INTERVAL '19 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1819, (CURRENT_DATE - INTERVAL '19 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1361, (CURRENT_DATE - INTERVAL '19 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 984, (CURRENT_DATE - INTERVAL '19 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1811, (CURRENT_DATE - INTERVAL '19 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1900, (CURRENT_DATE - INTERVAL '19 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1694, (CURRENT_DATE - INTERVAL '19 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1054, (CURRENT_DATE - INTERVAL '19 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 275, (CURRENT_DATE - INTERVAL '19 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-24
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '19 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '19 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '19 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 284, (CURRENT_DATE - INTERVAL '19 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 688, (CURRENT_DATE - INTERVAL '19 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1512, (CURRENT_DATE - INTERVAL '19 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 554, (CURRENT_DATE - INTERVAL '19 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 396, (CURRENT_DATE - INTERVAL '19 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1819, (CURRENT_DATE - INTERVAL '19 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1361, (CURRENT_DATE - INTERVAL '19 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 984, (CURRENT_DATE - INTERVAL '19 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1811, (CURRENT_DATE - INTERVAL '19 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1900, (CURRENT_DATE - INTERVAL '19 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1694, (CURRENT_DATE - INTERVAL '19 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1054, (CURRENT_DATE - INTERVAL '19 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 275, (CURRENT_DATE - INTERVAL '19 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-25
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '18 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '18 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '18 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 284, (CURRENT_DATE - INTERVAL '18 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 688, (CURRENT_DATE - INTERVAL '18 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1512, (CURRENT_DATE - INTERVAL '18 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 554, (CURRENT_DATE - INTERVAL '18 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 396, (CURRENT_DATE - INTERVAL '18 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1819, (CURRENT_DATE - INTERVAL '18 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1361, (CURRENT_DATE - INTERVAL '18 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 984, (CURRENT_DATE - INTERVAL '18 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1811, (CURRENT_DATE - INTERVAL '18 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1900, (CURRENT_DATE - INTERVAL '18 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1694, (CURRENT_DATE - INTERVAL '18 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1054, (CURRENT_DATE - INTERVAL '18 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 275, (CURRENT_DATE - INTERVAL '18 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-26
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '18 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '18 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '18 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 284, (CURRENT_DATE - INTERVAL '18 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 688, (CURRENT_DATE - INTERVAL '18 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1512, (CURRENT_DATE - INTERVAL '18 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 554, (CURRENT_DATE - INTERVAL '18 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 396, (CURRENT_DATE - INTERVAL '18 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1819, (CURRENT_DATE - INTERVAL '18 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1361, (CURRENT_DATE - INTERVAL '18 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 984, (CURRENT_DATE - INTERVAL '18 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1811, (CURRENT_DATE - INTERVAL '18 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1900, (CURRENT_DATE - INTERVAL '18 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1694, (CURRENT_DATE - INTERVAL '18 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1054, (CURRENT_DATE - INTERVAL '18 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 275, (CURRENT_DATE - INTERVAL '18 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-27
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '17 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '17 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '17 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 284, (CURRENT_DATE - INTERVAL '17 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 688, (CURRENT_DATE - INTERVAL '17 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1512, (CURRENT_DATE - INTERVAL '17 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 524, (CURRENT_DATE - INTERVAL '17 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 396, (CURRENT_DATE - INTERVAL '17 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1819, (CURRENT_DATE - INTERVAL '17 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1361, (CURRENT_DATE - INTERVAL '17 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 984, (CURRENT_DATE - INTERVAL '17 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1811, (CURRENT_DATE - INTERVAL '17 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1900, (CURRENT_DATE - INTERVAL '17 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1694, (CURRENT_DATE - INTERVAL '17 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1054, (CURRENT_DATE - INTERVAL '17 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 275, (CURRENT_DATE - INTERVAL '17 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-28
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '17 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '17 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '17 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 284, (CURRENT_DATE - INTERVAL '17 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 688, (CURRENT_DATE - INTERVAL '17 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1512, (CURRENT_DATE - INTERVAL '17 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 554, (CURRENT_DATE - INTERVAL '17 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 396, (CURRENT_DATE - INTERVAL '17 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1819, (CURRENT_DATE - INTERVAL '17 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1361, (CURRENT_DATE - INTERVAL '17 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 984, (CURRENT_DATE - INTERVAL '17 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1811, (CURRENT_DATE - INTERVAL '17 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1900, (CURRENT_DATE - INTERVAL '17 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1694, (CURRENT_DATE - INTERVAL '17 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1054, (CURRENT_DATE - INTERVAL '17 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 275, (CURRENT_DATE - INTERVAL '17 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-29
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 236, (CURRENT_DATE - INTERVAL '16 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 213, (CURRENT_DATE - INTERVAL '16 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 221, (CURRENT_DATE - INTERVAL '16 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '16 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 1173, (CURRENT_DATE - INTERVAL '16 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 2027, (CURRENT_DATE - INTERVAL '16 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 569, (CURRENT_DATE - INTERVAL '16 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 408, (CURRENT_DATE - INTERVAL '16 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1599, (CURRENT_DATE - INTERVAL '16 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1707, (CURRENT_DATE - INTERVAL '16 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1014, (CURRENT_DATE - INTERVAL '16 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1865, (CURRENT_DATE - INTERVAL '16 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1950, (CURRENT_DATE - INTERVAL '16 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1785, (CURRENT_DATE - INTERVAL '16 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1071, (CURRENT_DATE - INTERVAL '16 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '16 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-30
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 236, (CURRENT_DATE - INTERVAL '16 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 213, (CURRENT_DATE - INTERVAL '16 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 221, (CURRENT_DATE - INTERVAL '16 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '16 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 1173, (CURRENT_DATE - INTERVAL '16 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 2027, (CURRENT_DATE - INTERVAL '16 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 569, (CURRENT_DATE - INTERVAL '16 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 408, (CURRENT_DATE - INTERVAL '16 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1599, (CURRENT_DATE - INTERVAL '16 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1707, (CURRENT_DATE - INTERVAL '16 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1014, (CURRENT_DATE - INTERVAL '16 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1865, (CURRENT_DATE - INTERVAL '16 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1950, (CURRENT_DATE - INTERVAL '16 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1785, (CURRENT_DATE - INTERVAL '16 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1071, (CURRENT_DATE - INTERVAL '16 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '16 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-31
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 236, (CURRENT_DATE - INTERVAL '15 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 213, (CURRENT_DATE - INTERVAL '15 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 221, (CURRENT_DATE - INTERVAL '15 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '15 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 1173, (CURRENT_DATE - INTERVAL '15 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 2027, (CURRENT_DATE - INTERVAL '15 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 569, (CURRENT_DATE - INTERVAL '15 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 408, (CURRENT_DATE - INTERVAL '15 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1599, (CURRENT_DATE - INTERVAL '15 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1707, (CURRENT_DATE - INTERVAL '15 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1014, (CURRENT_DATE - INTERVAL '15 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1865, (CURRENT_DATE - INTERVAL '15 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1950, (CURRENT_DATE - INTERVAL '15 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1785, (CURRENT_DATE - INTERVAL '15 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1071, (CURRENT_DATE - INTERVAL '15 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '15 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-32
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 236, (CURRENT_DATE - INTERVAL '15 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 213, (CURRENT_DATE - INTERVAL '15 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 221, (CURRENT_DATE - INTERVAL '15 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '15 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 1173, (CURRENT_DATE - INTERVAL '15 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 2027, (CURRENT_DATE - INTERVAL '15 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 569, (CURRENT_DATE - INTERVAL '15 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 408, (CURRENT_DATE - INTERVAL '15 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1599, (CURRENT_DATE - INTERVAL '15 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1707, (CURRENT_DATE - INTERVAL '15 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1014, (CURRENT_DATE - INTERVAL '15 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1865, (CURRENT_DATE - INTERVAL '15 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1950, (CURRENT_DATE - INTERVAL '15 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1785, (CURRENT_DATE - INTERVAL '15 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1071, (CURRENT_DATE - INTERVAL '15 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '15 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-33
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 236, (CURRENT_DATE - INTERVAL '14 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 213, (CURRENT_DATE - INTERVAL '14 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 221, (CURRENT_DATE - INTERVAL '14 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '14 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 1173, (CURRENT_DATE - INTERVAL '14 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 2027, (CURRENT_DATE - INTERVAL '14 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 569, (CURRENT_DATE - INTERVAL '14 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 408, (CURRENT_DATE - INTERVAL '14 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1599, (CURRENT_DATE - INTERVAL '14 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1707, (CURRENT_DATE - INTERVAL '14 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1014, (CURRENT_DATE - INTERVAL '14 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1865, (CURRENT_DATE - INTERVAL '14 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1950, (CURRENT_DATE - INTERVAL '14 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1785, (CURRENT_DATE - INTERVAL '14 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1071, (CURRENT_DATE - INTERVAL '14 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '14 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-34
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 236, (CURRENT_DATE - INTERVAL '14 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 213, (CURRENT_DATE - INTERVAL '14 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 221, (CURRENT_DATE - INTERVAL '14 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '14 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 1173, (CURRENT_DATE - INTERVAL '14 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 2027, (CURRENT_DATE - INTERVAL '14 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 569, (CURRENT_DATE - INTERVAL '14 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 408, (CURRENT_DATE - INTERVAL '14 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1599, (CURRENT_DATE - INTERVAL '14 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1707, (CURRENT_DATE - INTERVAL '14 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1014, (CURRENT_DATE - INTERVAL '14 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1865, (CURRENT_DATE - INTERVAL '14 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1950, (CURRENT_DATE - INTERVAL '14 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1785, (CURRENT_DATE - INTERVAL '14 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1071, (CURRENT_DATE - INTERVAL '14 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '14 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-35
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 236, (CURRENT_DATE - INTERVAL '13 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 213, (CURRENT_DATE - INTERVAL '13 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 221, (CURRENT_DATE - INTERVAL '13 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '13 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 1173, (CURRENT_DATE - INTERVAL '13 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 2027, (CURRENT_DATE - INTERVAL '13 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 569, (CURRENT_DATE - INTERVAL '13 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 408, (CURRENT_DATE - INTERVAL '13 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1599, (CURRENT_DATE - INTERVAL '13 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1707, (CURRENT_DATE - INTERVAL '13 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1014, (CURRENT_DATE - INTERVAL '13 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1865, (CURRENT_DATE - INTERVAL '13 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1950, (CURRENT_DATE - INTERVAL '13 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1785, (CURRENT_DATE - INTERVAL '13 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1071, (CURRENT_DATE - INTERVAL '13 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '13 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-36
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 236, (CURRENT_DATE - INTERVAL '13 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 213, (CURRENT_DATE - INTERVAL '13 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 221, (CURRENT_DATE - INTERVAL '13 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '13 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 1173, (CURRENT_DATE - INTERVAL '13 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 2027, (CURRENT_DATE - INTERVAL '13 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 569, (CURRENT_DATE - INTERVAL '13 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 408, (CURRENT_DATE - INTERVAL '13 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1599, (CURRENT_DATE - INTERVAL '13 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1707, (CURRENT_DATE - INTERVAL '13 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1014, (CURRENT_DATE - INTERVAL '13 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1865, (CURRENT_DATE - INTERVAL '13 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1950, (CURRENT_DATE - INTERVAL '13 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1785, (CURRENT_DATE - INTERVAL '13 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1071, (CURRENT_DATE - INTERVAL '13 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '13 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-37
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 236, (CURRENT_DATE - INTERVAL '12 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 213, (CURRENT_DATE - INTERVAL '12 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 221, (CURRENT_DATE - INTERVAL '12 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '12 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 1173, (CURRENT_DATE - INTERVAL '12 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 2027, (CURRENT_DATE - INTERVAL '12 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 569, (CURRENT_DATE - INTERVAL '12 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 408, (CURRENT_DATE - INTERVAL '12 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1599, (CURRENT_DATE - INTERVAL '12 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1707, (CURRENT_DATE - INTERVAL '12 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1014, (CURRENT_DATE - INTERVAL '12 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1865, (CURRENT_DATE - INTERVAL '12 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1950, (CURRENT_DATE - INTERVAL '12 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1785, (CURRENT_DATE - INTERVAL '12 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1071, (CURRENT_DATE - INTERVAL '12 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '12 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-38
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 236, (CURRENT_DATE - INTERVAL '12 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 213, (CURRENT_DATE - INTERVAL '12 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 221, (CURRENT_DATE - INTERVAL '12 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '12 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 1173, (CURRENT_DATE - INTERVAL '12 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 2027, (CURRENT_DATE - INTERVAL '12 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 569, (CURRENT_DATE - INTERVAL '12 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 408, (CURRENT_DATE - INTERVAL '12 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1599, (CURRENT_DATE - INTERVAL '12 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1707, (CURRENT_DATE - INTERVAL '12 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1014, (CURRENT_DATE - INTERVAL '12 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1865, (CURRENT_DATE - INTERVAL '12 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1950, (CURRENT_DATE - INTERVAL '12 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1785, (CURRENT_DATE - INTERVAL '12 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1071, (CURRENT_DATE - INTERVAL '12 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '12 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-39
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 236, (CURRENT_DATE - INTERVAL '11 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 213, (CURRENT_DATE - INTERVAL '11 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 221, (CURRENT_DATE - INTERVAL '11 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '11 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 1173, (CURRENT_DATE - INTERVAL '11 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 2027, (CURRENT_DATE - INTERVAL '11 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 569, (CURRENT_DATE - INTERVAL '11 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 408, (CURRENT_DATE - INTERVAL '11 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1599, (CURRENT_DATE - INTERVAL '11 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1707, (CURRENT_DATE - INTERVAL '11 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1014, (CURRENT_DATE - INTERVAL '11 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1865, (CURRENT_DATE - INTERVAL '11 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1950, (CURRENT_DATE - INTERVAL '11 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1785, (CURRENT_DATE - INTERVAL '11 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1071, (CURRENT_DATE - INTERVAL '11 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '11 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-40
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 236, (CURRENT_DATE - INTERVAL '11 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 213, (CURRENT_DATE - INTERVAL '11 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 221, (CURRENT_DATE - INTERVAL '11 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '11 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 1173, (CURRENT_DATE - INTERVAL '11 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 2027, (CURRENT_DATE - INTERVAL '11 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 569, (CURRENT_DATE - INTERVAL '11 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 408, (CURRENT_DATE - INTERVAL '11 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1599, (CURRENT_DATE - INTERVAL '11 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1707, (CURRENT_DATE - INTERVAL '11 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 1014, (CURRENT_DATE - INTERVAL '11 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1865, (CURRENT_DATE - INTERVAL '11 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1950, (CURRENT_DATE - INTERVAL '11 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1785, (CURRENT_DATE - INTERVAL '11 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1071, (CURRENT_DATE - INTERVAL '11 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '11 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-41
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '10 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '10 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '10 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '10 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 704, (CURRENT_DATE - INTERVAL '10 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1770, (CURRENT_DATE - INTERVAL '10 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 545, (CURRENT_DATE - INTERVAL '10 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 388, (CURRENT_DATE - INTERVAL '10 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1610, (CURRENT_DATE - INTERVAL '10 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1457, (CURRENT_DATE - INTERVAL '10 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 976, (CURRENT_DATE - INTERVAL '10 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1801, (CURRENT_DATE - INTERVAL '10 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '10 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '10 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '10 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '10 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-42
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '10 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '10 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '10 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '10 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 704, (CURRENT_DATE - INTERVAL '10 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1770, (CURRENT_DATE - INTERVAL '10 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 545, (CURRENT_DATE - INTERVAL '10 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 388, (CURRENT_DATE - INTERVAL '10 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1610, (CURRENT_DATE - INTERVAL '10 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1457, (CURRENT_DATE - INTERVAL '10 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 976, (CURRENT_DATE - INTERVAL '10 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1801, (CURRENT_DATE - INTERVAL '10 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '10 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '10 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '10 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '10 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-43
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '9 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '9 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '9 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '9 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 704, (CURRENT_DATE - INTERVAL '9 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1770, (CURRENT_DATE - INTERVAL '9 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 545, (CURRENT_DATE - INTERVAL '9 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 388, (CURRENT_DATE - INTERVAL '9 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1610, (CURRENT_DATE - INTERVAL '9 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1457, (CURRENT_DATE - INTERVAL '9 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 976, (CURRENT_DATE - INTERVAL '9 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1801, (CURRENT_DATE - INTERVAL '9 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '9 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '9 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '9 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '9 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-44
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '9 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '9 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '9 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '9 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 704, (CURRENT_DATE - INTERVAL '9 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1770, (CURRENT_DATE - INTERVAL '9 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 545, (CURRENT_DATE - INTERVAL '9 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 388, (CURRENT_DATE - INTERVAL '9 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1610, (CURRENT_DATE - INTERVAL '9 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1457, (CURRENT_DATE - INTERVAL '9 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 976, (CURRENT_DATE - INTERVAL '9 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1801, (CURRENT_DATE - INTERVAL '9 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '9 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '9 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '9 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '9 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-45
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '8 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '8 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '8 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '8 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 704, (CURRENT_DATE - INTERVAL '8 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1770, (CURRENT_DATE - INTERVAL '8 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 545, (CURRENT_DATE - INTERVAL '8 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 388, (CURRENT_DATE - INTERVAL '8 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1610, (CURRENT_DATE - INTERVAL '8 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1457, (CURRENT_DATE - INTERVAL '8 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 976, (CURRENT_DATE - INTERVAL '8 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1801, (CURRENT_DATE - INTERVAL '8 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '8 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '8 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '8 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '8 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-46
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '8 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '8 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '8 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '8 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 704, (CURRENT_DATE - INTERVAL '8 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1770, (CURRENT_DATE - INTERVAL '8 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 545, (CURRENT_DATE - INTERVAL '8 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 388, (CURRENT_DATE - INTERVAL '8 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1610, (CURRENT_DATE - INTERVAL '8 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1457, (CURRENT_DATE - INTERVAL '8 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 976, (CURRENT_DATE - INTERVAL '8 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1801, (CURRENT_DATE - INTERVAL '8 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '8 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '8 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '8 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '8 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-47
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '7 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '7 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '7 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '7 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '7 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '7 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '7 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '7 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '7 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '7 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '7 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '7 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '7 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '7 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '7 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '7 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-48
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '7 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '7 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '7 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '7 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '7 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '7 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '7 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '7 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '7 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '7 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '7 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '7 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '7 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '7 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '7 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '7 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-49
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '6 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '6 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '6 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '6 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '6 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '6 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '6 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '6 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '6 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '6 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '6 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '6 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '6 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '6 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '6 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '6 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-50
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '6 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '6 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '6 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '6 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '6 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '6 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '6 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '6 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '6 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '6 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '6 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '6 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '6 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '6 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '6 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '6 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-51
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '5 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '5 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '5 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '5 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '5 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '5 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '5 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '5 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '5 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '5 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '5 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '5 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '5 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '5 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '5 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '5 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-52
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '5 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '5 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '5 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '5 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '5 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '5 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '5 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '5 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '5 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '5 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '5 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '5 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '5 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '5 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '5 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '5 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-53
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '4 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '4 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '4 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 307, (CURRENT_DATE - INTERVAL '4 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '4 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '4 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '4 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '4 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '4 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '4 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '4 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '4 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '4 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '4 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '4 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '4 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-54
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '4 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '4 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '4 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 307, (CURRENT_DATE - INTERVAL '4 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '4 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '4 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '4 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '4 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '4 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '4 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '4 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '4 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '4 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '4 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '4 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '4 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-55
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '3 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '3 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '3 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 307, (CURRENT_DATE - INTERVAL '3 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '3 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '3 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '3 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '3 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '3 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '3 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '3 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '3 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '3 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '3 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '3 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '3 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-56
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '3 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '3 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '3 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 307, (CURRENT_DATE - INTERVAL '3 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '3 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '3 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '3 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '3 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '3 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '3 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '3 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '3 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '3 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '3 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '3 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '3 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-57
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '2 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '2 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '2 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 307, (CURRENT_DATE - INTERVAL '2 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '2 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '2 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '2 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '2 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '2 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '2 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '2 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '2 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '2 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '2 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '2 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '2 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-58
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '2 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '2 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '2 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 307, (CURRENT_DATE - INTERVAL '2 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '2 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '2 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '2 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '2 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '2 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '2 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '2 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '2 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '2 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '2 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '2 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '2 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-59
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '1 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '1 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '1 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 307, (CURRENT_DATE - INTERVAL '1 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '1 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '1 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '1 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '1 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '1 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '1 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '1 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '1 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '1 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '1 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '1 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '1 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-60
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '1 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '1 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '1 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 307, (CURRENT_DATE - INTERVAL '1 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '1 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '1 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '1 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '1 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '1 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '1 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '1 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '1 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '1 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '1 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '1 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '1 days' + TIME '18:00:00'));
