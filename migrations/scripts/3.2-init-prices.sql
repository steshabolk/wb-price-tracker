--liquibase formatted sql

--changeset steshabolk:init-prices-1
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '90 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '90 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '90 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '90 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 845, (CURRENT_DATE - INTERVAL '90 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1496, (CURRENT_DATE - INTERVAL '90 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '90 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 337, (CURRENT_DATE - INTERVAL '90 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1657, (CURRENT_DATE - INTERVAL '90 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1508, (CURRENT_DATE - INTERVAL '90 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '90 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1826, (CURRENT_DATE - INTERVAL '90 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '90 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '90 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '90 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '90 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-2
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '90 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '90 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '90 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '90 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 845, (CURRENT_DATE - INTERVAL '90 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1496, (CURRENT_DATE - INTERVAL '90 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '90 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 337, (CURRENT_DATE - INTERVAL '90 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1657, (CURRENT_DATE - INTERVAL '90 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1508, (CURRENT_DATE - INTERVAL '90 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '90 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1826, (CURRENT_DATE - INTERVAL '90 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '90 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '90 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '90 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '90 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-3
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '89 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '89 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '89 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '89 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 845, (CURRENT_DATE - INTERVAL '89 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1496, (CURRENT_DATE - INTERVAL '89 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '89 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 337, (CURRENT_DATE - INTERVAL '89 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1657, (CURRENT_DATE - INTERVAL '89 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1508, (CURRENT_DATE - INTERVAL '89 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '89 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1826, (CURRENT_DATE - INTERVAL '89 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '89 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '89 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '89 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '89 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-4
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '89 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '89 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '89 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '89 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 845, (CURRENT_DATE - INTERVAL '89 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1496, (CURRENT_DATE - INTERVAL '89 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '89 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 337, (CURRENT_DATE - INTERVAL '89 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1657, (CURRENT_DATE - INTERVAL '89 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1508, (CURRENT_DATE - INTERVAL '89 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '89 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1826, (CURRENT_DATE - INTERVAL '89 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '89 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '89 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '89 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '89 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-5
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '88 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '88 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '88 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '88 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 845, (CURRENT_DATE - INTERVAL '88 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1496, (CURRENT_DATE - INTERVAL '88 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '88 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 337, (CURRENT_DATE - INTERVAL '88 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1657, (CURRENT_DATE - INTERVAL '88 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1508, (CURRENT_DATE - INTERVAL '88 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '88 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1826, (CURRENT_DATE - INTERVAL '88 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '88 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '88 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '88 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '88 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-6
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '88 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '88 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '88 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '88 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 845, (CURRENT_DATE - INTERVAL '88 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1496, (CURRENT_DATE - INTERVAL '88 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '88 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 337, (CURRENT_DATE - INTERVAL '88 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1657, (CURRENT_DATE - INTERVAL '88 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1508, (CURRENT_DATE - INTERVAL '88 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '88 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1826, (CURRENT_DATE - INTERVAL '88 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '88 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '88 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '88 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '88 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-7
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '87 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '87 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '87 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '87 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 845, (CURRENT_DATE - INTERVAL '87 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1496, (CURRENT_DATE - INTERVAL '87 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '87 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 337, (CURRENT_DATE - INTERVAL '87 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1657, (CURRENT_DATE - INTERVAL '87 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1508, (CURRENT_DATE - INTERVAL '87 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '87 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1826, (CURRENT_DATE - INTERVAL '87 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '87 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '87 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '87 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '87 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-8
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '87 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '87 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '87 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '87 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 845, (CURRENT_DATE - INTERVAL '87 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1496, (CURRENT_DATE - INTERVAL '87 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '87 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 337, (CURRENT_DATE - INTERVAL '87 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1657, (CURRENT_DATE - INTERVAL '87 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1508, (CURRENT_DATE - INTERVAL '87 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '87 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1826, (CURRENT_DATE - INTERVAL '87 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '87 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '87 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '87 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '87 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-9
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '86 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '86 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '86 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 317, (CURRENT_DATE - INTERVAL '86 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 845, (CURRENT_DATE - INTERVAL '86 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1496, (CURRENT_DATE - INTERVAL '86 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '86 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 337, (CURRENT_DATE - INTERVAL '86 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1657, (CURRENT_DATE - INTERVAL '86 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1508, (CURRENT_DATE - INTERVAL '86 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '86 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1826, (CURRENT_DATE - INTERVAL '86 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '86 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '86 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '86 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '86 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-10
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '86 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '86 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '86 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 317, (CURRENT_DATE - INTERVAL '86 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 845, (CURRENT_DATE - INTERVAL '86 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1496, (CURRENT_DATE - INTERVAL '86 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '86 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 337, (CURRENT_DATE - INTERVAL '86 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1657, (CURRENT_DATE - INTERVAL '86 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1508, (CURRENT_DATE - INTERVAL '86 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '86 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1826, (CURRENT_DATE - INTERVAL '86 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '86 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '86 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '86 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '86 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-11
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 233, (CURRENT_DATE - INTERVAL '85 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '85 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '85 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 317, (CURRENT_DATE - INTERVAL '85 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 716, (CURRENT_DATE - INTERVAL '85 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1402, (CURRENT_DATE - INTERVAL '85 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 487, (CURRENT_DATE - INTERVAL '85 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 345, (CURRENT_DATE - INTERVAL '85 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1656, (CURRENT_DATE - INTERVAL '85 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1512, (CURRENT_DATE - INTERVAL '85 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '85 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1822, (CURRENT_DATE - INTERVAL '85 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '85 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '85 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '85 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '85 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-12
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 233, (CURRENT_DATE - INTERVAL '85 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '85 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '85 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 317, (CURRENT_DATE - INTERVAL '85 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 716, (CURRENT_DATE - INTERVAL '85 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1402, (CURRENT_DATE - INTERVAL '85 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 487, (CURRENT_DATE - INTERVAL '85 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 345, (CURRENT_DATE - INTERVAL '85 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1656, (CURRENT_DATE - INTERVAL '85 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1512, (CURRENT_DATE - INTERVAL '85 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '85 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1822, (CURRENT_DATE - INTERVAL '85 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '85 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '85 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '85 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '85 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-13
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 233, (CURRENT_DATE - INTERVAL '84 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '84 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '84 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 317, (CURRENT_DATE - INTERVAL '84 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 716, (CURRENT_DATE - INTERVAL '84 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1402, (CURRENT_DATE - INTERVAL '84 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 487, (CURRENT_DATE - INTERVAL '84 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 345, (CURRENT_DATE - INTERVAL '84 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1656, (CURRENT_DATE - INTERVAL '84 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1512, (CURRENT_DATE - INTERVAL '84 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '84 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1822, (CURRENT_DATE - INTERVAL '84 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '84 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '84 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '84 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '84 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-14
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 233, (CURRENT_DATE - INTERVAL '84 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '84 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '84 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 317, (CURRENT_DATE - INTERVAL '84 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 716, (CURRENT_DATE - INTERVAL '84 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1402, (CURRENT_DATE - INTERVAL '84 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 487, (CURRENT_DATE - INTERVAL '84 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 345, (CURRENT_DATE - INTERVAL '84 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1656, (CURRENT_DATE - INTERVAL '84 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1512, (CURRENT_DATE - INTERVAL '84 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '84 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1822, (CURRENT_DATE - INTERVAL '84 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '84 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '84 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '84 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '84 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-15
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 233, (CURRENT_DATE - INTERVAL '83 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '83 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 212, (CURRENT_DATE - INTERVAL '83 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 317, (CURRENT_DATE - INTERVAL '83 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 716, (CURRENT_DATE - INTERVAL '83 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1402, (CURRENT_DATE - INTERVAL '83 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 487, (CURRENT_DATE - INTERVAL '83 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 345, (CURRENT_DATE - INTERVAL '83 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1656, (CURRENT_DATE - INTERVAL '83 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1512, (CURRENT_DATE - INTERVAL '83 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '83 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1822, (CURRENT_DATE - INTERVAL '83 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '83 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '83 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '83 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '83 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-16
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 233, (CURRENT_DATE - INTERVAL '83 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '83 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 212, (CURRENT_DATE - INTERVAL '83 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 317, (CURRENT_DATE - INTERVAL '83 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 716, (CURRENT_DATE - INTERVAL '83 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1402, (CURRENT_DATE - INTERVAL '83 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 487, (CURRENT_DATE - INTERVAL '83 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 345, (CURRENT_DATE - INTERVAL '83 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1656, (CURRENT_DATE - INTERVAL '83 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1512, (CURRENT_DATE - INTERVAL '83 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '83 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1822, (CURRENT_DATE - INTERVAL '83 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '83 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '83 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '83 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '83 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-17
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 233, (CURRENT_DATE - INTERVAL '82 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '82 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 212, (CURRENT_DATE - INTERVAL '82 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 284, (CURRENT_DATE - INTERVAL '82 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 716, (CURRENT_DATE - INTERVAL '82 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1402, (CURRENT_DATE - INTERVAL '82 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 487, (CURRENT_DATE - INTERVAL '82 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 345, (CURRENT_DATE - INTERVAL '82 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1656, (CURRENT_DATE - INTERVAL '82 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1512, (CURRENT_DATE - INTERVAL '82 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '82 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1822, (CURRENT_DATE - INTERVAL '82 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '82 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '82 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '82 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '82 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-18
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 233, (CURRENT_DATE - INTERVAL '82 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '82 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 212, (CURRENT_DATE - INTERVAL '82 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 284, (CURRENT_DATE - INTERVAL '82 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 716, (CURRENT_DATE - INTERVAL '82 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1402, (CURRENT_DATE - INTERVAL '82 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 487, (CURRENT_DATE - INTERVAL '82 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 345, (CURRENT_DATE - INTERVAL '82 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1656, (CURRENT_DATE - INTERVAL '82 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1512, (CURRENT_DATE - INTERVAL '82 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '82 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1822, (CURRENT_DATE - INTERVAL '82 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '82 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '82 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '82 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '82 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-19
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 233, (CURRENT_DATE - INTERVAL '81 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '81 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 212, (CURRENT_DATE - INTERVAL '81 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 284, (CURRENT_DATE - INTERVAL '81 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 716, (CURRENT_DATE - INTERVAL '81 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1402, (CURRENT_DATE - INTERVAL '81 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 487, (CURRENT_DATE - INTERVAL '81 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 345, (CURRENT_DATE - INTERVAL '81 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1656, (CURRENT_DATE - INTERVAL '81 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1512, (CURRENT_DATE - INTERVAL '81 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '81 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1822, (CURRENT_DATE - INTERVAL '81 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '81 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '81 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '81 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '81 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-20
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 233, (CURRENT_DATE - INTERVAL '81 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '81 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 212, (CURRENT_DATE - INTERVAL '81 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 284, (CURRENT_DATE - INTERVAL '81 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 716, (CURRENT_DATE - INTERVAL '81 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1402, (CURRENT_DATE - INTERVAL '81 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 487, (CURRENT_DATE - INTERVAL '81 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 345, (CURRENT_DATE - INTERVAL '81 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1656, (CURRENT_DATE - INTERVAL '81 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1512, (CURRENT_DATE - INTERVAL '81 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '81 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1822, (CURRENT_DATE - INTERVAL '81 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '81 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '81 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '81 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '81 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-21
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '80 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '80 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 212, (CURRENT_DATE - INTERVAL '80 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 284, (CURRENT_DATE - INTERVAL '80 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 716, (CURRENT_DATE - INTERVAL '80 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1402, (CURRENT_DATE - INTERVAL '80 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 487, (CURRENT_DATE - INTERVAL '80 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 345, (CURRENT_DATE - INTERVAL '80 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1656, (CURRENT_DATE - INTERVAL '80 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1512, (CURRENT_DATE - INTERVAL '80 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '80 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1822, (CURRENT_DATE - INTERVAL '80 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '80 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '80 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '80 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '80 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-22
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '80 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '80 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 212, (CURRENT_DATE - INTERVAL '80 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 284, (CURRENT_DATE - INTERVAL '80 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 716, (CURRENT_DATE - INTERVAL '80 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1402, (CURRENT_DATE - INTERVAL '80 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 487, (CURRENT_DATE - INTERVAL '80 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 345, (CURRENT_DATE - INTERVAL '80 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1656, (CURRENT_DATE - INTERVAL '80 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1512, (CURRENT_DATE - INTERVAL '80 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '80 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1822, (CURRENT_DATE - INTERVAL '80 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '80 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '80 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '80 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '80 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-23
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '79 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '79 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '79 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 284, (CURRENT_DATE - INTERVAL '79 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 716, (CURRENT_DATE - INTERVAL '79 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1402, (CURRENT_DATE - INTERVAL '79 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 487, (CURRENT_DATE - INTERVAL '79 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 345, (CURRENT_DATE - INTERVAL '79 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1656, (CURRENT_DATE - INTERVAL '79 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1512, (CURRENT_DATE - INTERVAL '79 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '79 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1822, (CURRENT_DATE - INTERVAL '79 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '79 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '79 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '79 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '79 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-24
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '79 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '79 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '79 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 284, (CURRENT_DATE - INTERVAL '79 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 716, (CURRENT_DATE - INTERVAL '79 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1402, (CURRENT_DATE - INTERVAL '79 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 487, (CURRENT_DATE - INTERVAL '79 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 345, (CURRENT_DATE - INTERVAL '79 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1656, (CURRENT_DATE - INTERVAL '79 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1512, (CURRENT_DATE - INTERVAL '79 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '79 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1822, (CURRENT_DATE - INTERVAL '79 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '79 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '79 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '79 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '79 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-25
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '78 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '78 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '78 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 284, (CURRENT_DATE - INTERVAL '78 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 666, (CURRENT_DATE - INTERVAL '78 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1509, (CURRENT_DATE - INTERVAL '78 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 491, (CURRENT_DATE - INTERVAL '78 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '78 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1673, (CURRENT_DATE - INTERVAL '78 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1523, (CURRENT_DATE - INTERVAL '78 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 991, (CURRENT_DATE - INTERVAL '78 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '78 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1917, (CURRENT_DATE - INTERVAL '78 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '78 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '78 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 349, (CURRENT_DATE - INTERVAL '78 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-26
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '78 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '78 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '78 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '78 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 666, (CURRENT_DATE - INTERVAL '78 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1509, (CURRENT_DATE - INTERVAL '78 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 491, (CURRENT_DATE - INTERVAL '78 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '78 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1673, (CURRENT_DATE - INTERVAL '78 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1523, (CURRENT_DATE - INTERVAL '78 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 991, (CURRENT_DATE - INTERVAL '78 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '78 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1917, (CURRENT_DATE - INTERVAL '78 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '78 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '78 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 349, (CURRENT_DATE - INTERVAL '78 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-27
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '77 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '77 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '77 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '77 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 666, (CURRENT_DATE - INTERVAL '77 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1509, (CURRENT_DATE - INTERVAL '77 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 491, (CURRENT_DATE - INTERVAL '77 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '77 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1673, (CURRENT_DATE - INTERVAL '77 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1523, (CURRENT_DATE - INTERVAL '77 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 991, (CURRENT_DATE - INTERVAL '77 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '77 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1917, (CURRENT_DATE - INTERVAL '77 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '77 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '77 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 349, (CURRENT_DATE - INTERVAL '77 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-28
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '77 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '77 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '77 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '77 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 666, (CURRENT_DATE - INTERVAL '77 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1509, (CURRENT_DATE - INTERVAL '77 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 491, (CURRENT_DATE - INTERVAL '77 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '77 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1673, (CURRENT_DATE - INTERVAL '77 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1523, (CURRENT_DATE - INTERVAL '77 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 991, (CURRENT_DATE - INTERVAL '77 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '77 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1917, (CURRENT_DATE - INTERVAL '77 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '77 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '77 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 349, (CURRENT_DATE - INTERVAL '77 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-29
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '76 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '76 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '76 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '76 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 666, (CURRENT_DATE - INTERVAL '76 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1509, (CURRENT_DATE - INTERVAL '76 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 491, (CURRENT_DATE - INTERVAL '76 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '76 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1673, (CURRENT_DATE - INTERVAL '76 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1523, (CURRENT_DATE - INTERVAL '76 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 991, (CURRENT_DATE - INTERVAL '76 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '76 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1917, (CURRENT_DATE - INTERVAL '76 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '76 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '76 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 349, (CURRENT_DATE - INTERVAL '76 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-30
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '76 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '76 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '76 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '76 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 666, (CURRENT_DATE - INTERVAL '76 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1509, (CURRENT_DATE - INTERVAL '76 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 491, (CURRENT_DATE - INTERVAL '76 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '76 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1673, (CURRENT_DATE - INTERVAL '76 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1523, (CURRENT_DATE - INTERVAL '76 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 991, (CURRENT_DATE - INTERVAL '76 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '76 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1917, (CURRENT_DATE - INTERVAL '76 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '76 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '76 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 349, (CURRENT_DATE - INTERVAL '76 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-31
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '75 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '75 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '75 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '75 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 666, (CURRENT_DATE - INTERVAL '75 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1509, (CURRENT_DATE - INTERVAL '75 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 491, (CURRENT_DATE - INTERVAL '75 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '75 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1673, (CURRENT_DATE - INTERVAL '75 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1523, (CURRENT_DATE - INTERVAL '75 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 991, (CURRENT_DATE - INTERVAL '75 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '75 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1917, (CURRENT_DATE - INTERVAL '75 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '75 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '75 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 349, (CURRENT_DATE - INTERVAL '75 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-32
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '75 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '75 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '75 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '75 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 666, (CURRENT_DATE - INTERVAL '75 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1509, (CURRENT_DATE - INTERVAL '75 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 491, (CURRENT_DATE - INTERVAL '75 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '75 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1673, (CURRENT_DATE - INTERVAL '75 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1523, (CURRENT_DATE - INTERVAL '75 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 991, (CURRENT_DATE - INTERVAL '75 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '75 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1917, (CURRENT_DATE - INTERVAL '75 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '75 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '75 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 349, (CURRENT_DATE - INTERVAL '75 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-33
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '74 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '74 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '74 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '74 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 666, (CURRENT_DATE - INTERVAL '74 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1509, (CURRENT_DATE - INTERVAL '74 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 491, (CURRENT_DATE - INTERVAL '74 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '74 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1673, (CURRENT_DATE - INTERVAL '74 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1523, (CURRENT_DATE - INTERVAL '74 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 991, (CURRENT_DATE - INTERVAL '74 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '74 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1917, (CURRENT_DATE - INTERVAL '74 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '74 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '74 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 349, (CURRENT_DATE - INTERVAL '74 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-34
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '74 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '74 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '74 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '74 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 666, (CURRENT_DATE - INTERVAL '74 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1509, (CURRENT_DATE - INTERVAL '74 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 491, (CURRENT_DATE - INTERVAL '74 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '74 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1673, (CURRENT_DATE - INTERVAL '74 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1523, (CURRENT_DATE - INTERVAL '74 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 991, (CURRENT_DATE - INTERVAL '74 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '74 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1917, (CURRENT_DATE - INTERVAL '74 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '74 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '74 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 349, (CURRENT_DATE - INTERVAL '74 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-35
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '73 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '73 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '73 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '73 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 666, (CURRENT_DATE - INTERVAL '73 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1509, (CURRENT_DATE - INTERVAL '73 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 491, (CURRENT_DATE - INTERVAL '73 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '73 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1673, (CURRENT_DATE - INTERVAL '73 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1523, (CURRENT_DATE - INTERVAL '73 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 991, (CURRENT_DATE - INTERVAL '73 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '73 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1917, (CURRENT_DATE - INTERVAL '73 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '73 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '73 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 349, (CURRENT_DATE - INTERVAL '73 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-36
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '73 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '73 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '73 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '73 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 666, (CURRENT_DATE - INTERVAL '73 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1509, (CURRENT_DATE - INTERVAL '73 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 491, (CURRENT_DATE - INTERVAL '73 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '73 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1673, (CURRENT_DATE - INTERVAL '73 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1523, (CURRENT_DATE - INTERVAL '73 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 991, (CURRENT_DATE - INTERVAL '73 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '73 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1917, (CURRENT_DATE - INTERVAL '73 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '73 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '73 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 349, (CURRENT_DATE - INTERVAL '73 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-37
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '72 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '72 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '72 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '72 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 666, (CURRENT_DATE - INTERVAL '72 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1509, (CURRENT_DATE - INTERVAL '72 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 491, (CURRENT_DATE - INTERVAL '72 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '72 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1673, (CURRENT_DATE - INTERVAL '72 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1523, (CURRENT_DATE - INTERVAL '72 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 991, (CURRENT_DATE - INTERVAL '72 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '72 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1917, (CURRENT_DATE - INTERVAL '72 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '72 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '72 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 349, (CURRENT_DATE - INTERVAL '72 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-38
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '72 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '72 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '72 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '72 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 677, (CURRENT_DATE - INTERVAL '72 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1509, (CURRENT_DATE - INTERVAL '72 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 491, (CURRENT_DATE - INTERVAL '72 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '72 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1673, (CURRENT_DATE - INTERVAL '72 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1523, (CURRENT_DATE - INTERVAL '72 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 991, (CURRENT_DATE - INTERVAL '72 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '72 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1917, (CURRENT_DATE - INTERVAL '72 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '72 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1108, (CURRENT_DATE - INTERVAL '72 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 349, (CURRENT_DATE - INTERVAL '72 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-39
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '71 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '71 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '71 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '71 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 677, (CURRENT_DATE - INTERVAL '71 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1497, (CURRENT_DATE - INTERVAL '71 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 497, (CURRENT_DATE - INTERVAL '71 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '71 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1694, (CURRENT_DATE - INTERVAL '71 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1539, (CURRENT_DATE - INTERVAL '71 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '71 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '71 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '71 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '71 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1036, (CURRENT_DATE - INTERVAL '71 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 315, (CURRENT_DATE - INTERVAL '71 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-40
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '71 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '71 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '71 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '71 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 677, (CURRENT_DATE - INTERVAL '71 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1497, (CURRENT_DATE - INTERVAL '71 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 497, (CURRENT_DATE - INTERVAL '71 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '71 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1694, (CURRENT_DATE - INTERVAL '71 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1539, (CURRENT_DATE - INTERVAL '71 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '71 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '71 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '71 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '71 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1036, (CURRENT_DATE - INTERVAL '71 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 315, (CURRENT_DATE - INTERVAL '71 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-41
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '70 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '70 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '70 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 313, (CURRENT_DATE - INTERVAL '70 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 677, (CURRENT_DATE - INTERVAL '70 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1497, (CURRENT_DATE - INTERVAL '70 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 497, (CURRENT_DATE - INTERVAL '70 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '70 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1694, (CURRENT_DATE - INTERVAL '70 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1539, (CURRENT_DATE - INTERVAL '70 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '70 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '70 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '70 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '70 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1036, (CURRENT_DATE - INTERVAL '70 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 315, (CURRENT_DATE - INTERVAL '70 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-42
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '70 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '70 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '70 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '70 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 677, (CURRENT_DATE - INTERVAL '70 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1497, (CURRENT_DATE - INTERVAL '70 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 497, (CURRENT_DATE - INTERVAL '70 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '70 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1694, (CURRENT_DATE - INTERVAL '70 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1539, (CURRENT_DATE - INTERVAL '70 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '70 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '70 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '70 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '70 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1036, (CURRENT_DATE - INTERVAL '70 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 315, (CURRENT_DATE - INTERVAL '70 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-43
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '69 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '69 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '69 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '69 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 677, (CURRENT_DATE - INTERVAL '69 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1497, (CURRENT_DATE - INTERVAL '69 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 497, (CURRENT_DATE - INTERVAL '69 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '69 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1694, (CURRENT_DATE - INTERVAL '69 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1539, (CURRENT_DATE - INTERVAL '69 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '69 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '69 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '69 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '69 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1036, (CURRENT_DATE - INTERVAL '69 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 315, (CURRENT_DATE - INTERVAL '69 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-44
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '69 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 203, (CURRENT_DATE - INTERVAL '69 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '69 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '69 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 677, (CURRENT_DATE - INTERVAL '69 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1497, (CURRENT_DATE - INTERVAL '69 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 497, (CURRENT_DATE - INTERVAL '69 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '69 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1694, (CURRENT_DATE - INTERVAL '69 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1539, (CURRENT_DATE - INTERVAL '69 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '69 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '69 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '69 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '69 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1036, (CURRENT_DATE - INTERVAL '69 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 315, (CURRENT_DATE - INTERVAL '69 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-45
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '68 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '68 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '68 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '68 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 677, (CURRENT_DATE - INTERVAL '68 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1497, (CURRENT_DATE - INTERVAL '68 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 497, (CURRENT_DATE - INTERVAL '68 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '68 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1694, (CURRENT_DATE - INTERVAL '68 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1539, (CURRENT_DATE - INTERVAL '68 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '68 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '68 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '68 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '68 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1036, (CURRENT_DATE - INTERVAL '68 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 315, (CURRENT_DATE - INTERVAL '68 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-46
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 226, (CURRENT_DATE - INTERVAL '68 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '68 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '68 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '68 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 677, (CURRENT_DATE - INTERVAL '68 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1497, (CURRENT_DATE - INTERVAL '68 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 497, (CURRENT_DATE - INTERVAL '68 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '68 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1694, (CURRENT_DATE - INTERVAL '68 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1539, (CURRENT_DATE - INTERVAL '68 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '68 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '68 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '68 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '68 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1036, (CURRENT_DATE - INTERVAL '68 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 315, (CURRENT_DATE - INTERVAL '68 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-47
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '67 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '67 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '67 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '67 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 677, (CURRENT_DATE - INTERVAL '67 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1497, (CURRENT_DATE - INTERVAL '67 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 497, (CURRENT_DATE - INTERVAL '67 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '67 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1694, (CURRENT_DATE - INTERVAL '67 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1539, (CURRENT_DATE - INTERVAL '67 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '67 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '67 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '67 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '67 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1036, (CURRENT_DATE - INTERVAL '67 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 315, (CURRENT_DATE - INTERVAL '67 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-48
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '67 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '67 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '67 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '67 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 677, (CURRENT_DATE - INTERVAL '67 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1497, (CURRENT_DATE - INTERVAL '67 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 497, (CURRENT_DATE - INTERVAL '67 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '67 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1694, (CURRENT_DATE - INTERVAL '67 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1539, (CURRENT_DATE - INTERVAL '67 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '67 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '67 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '67 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '67 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1036, (CURRENT_DATE - INTERVAL '67 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 315, (CURRENT_DATE - INTERVAL '67 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-49
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '66 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '66 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '66 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '66 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 677, (CURRENT_DATE - INTERVAL '66 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1497, (CURRENT_DATE - INTERVAL '66 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 497, (CURRENT_DATE - INTERVAL '66 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '66 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1694, (CURRENT_DATE - INTERVAL '66 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1539, (CURRENT_DATE - INTERVAL '66 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '66 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '66 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '66 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '66 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1036, (CURRENT_DATE - INTERVAL '66 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 315, (CURRENT_DATE - INTERVAL '66 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-50
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '66 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '66 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '66 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '66 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 677, (CURRENT_DATE - INTERVAL '66 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1497, (CURRENT_DATE - INTERVAL '66 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 497, (CURRENT_DATE - INTERVAL '66 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '66 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1694, (CURRENT_DATE - INTERVAL '66 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1539, (CURRENT_DATE - INTERVAL '66 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '66 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '66 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '66 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '66 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1036, (CURRENT_DATE - INTERVAL '66 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 315, (CURRENT_DATE - INTERVAL '66 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-51
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '65 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '65 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '65 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '65 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 677, (CURRENT_DATE - INTERVAL '65 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1497, (CURRENT_DATE - INTERVAL '65 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 497, (CURRENT_DATE - INTERVAL '65 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '65 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1694, (CURRENT_DATE - INTERVAL '65 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1539, (CURRENT_DATE - INTERVAL '65 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '65 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '65 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '65 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '65 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1036, (CURRENT_DATE - INTERVAL '65 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 315, (CURRENT_DATE - INTERVAL '65 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-52
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '65 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '65 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '65 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '65 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 677, (CURRENT_DATE - INTERVAL '65 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1497, (CURRENT_DATE - INTERVAL '65 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 497, (CURRENT_DATE - INTERVAL '65 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 329, (CURRENT_DATE - INTERVAL '65 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1694, (CURRENT_DATE - INTERVAL '65 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1539, (CURRENT_DATE - INTERVAL '65 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '65 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '65 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '65 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '65 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1036, (CURRENT_DATE - INTERVAL '65 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 315, (CURRENT_DATE - INTERVAL '65 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-53
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '64 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '64 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '64 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '64 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 762, (CURRENT_DATE - INTERVAL '64 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1661, (CURRENT_DATE - INTERVAL '64 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '64 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 330, (CURRENT_DATE - INTERVAL '64 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1687, (CURRENT_DATE - INTERVAL '64 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1540, (CURRENT_DATE - INTERVAL '64 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 989, (CURRENT_DATE - INTERVAL '64 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '64 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '64 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '64 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 924, (CURRENT_DATE - INTERVAL '64 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 285, (CURRENT_DATE - INTERVAL '64 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-54
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '64 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '64 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 220, (CURRENT_DATE - INTERVAL '64 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '64 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 762, (CURRENT_DATE - INTERVAL '64 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1661, (CURRENT_DATE - INTERVAL '64 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '64 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 330, (CURRENT_DATE - INTERVAL '64 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1687, (CURRENT_DATE - INTERVAL '64 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1540, (CURRENT_DATE - INTERVAL '64 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 989, (CURRENT_DATE - INTERVAL '64 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '64 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '64 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '64 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 924, (CURRENT_DATE - INTERVAL '64 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 285, (CURRENT_DATE - INTERVAL '64 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-55
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '63 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '63 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 220, (CURRENT_DATE - INTERVAL '63 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '63 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 762, (CURRENT_DATE - INTERVAL '63 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1661, (CURRENT_DATE - INTERVAL '63 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '63 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 330, (CURRENT_DATE - INTERVAL '63 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1687, (CURRENT_DATE - INTERVAL '63 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1540, (CURRENT_DATE - INTERVAL '63 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 989, (CURRENT_DATE - INTERVAL '63 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '63 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '63 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '63 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 924, (CURRENT_DATE - INTERVAL '63 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 285, (CURRENT_DATE - INTERVAL '63 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-56
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '63 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '63 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 220, (CURRENT_DATE - INTERVAL '63 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '63 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 762, (CURRENT_DATE - INTERVAL '63 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1661, (CURRENT_DATE - INTERVAL '63 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '63 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 330, (CURRENT_DATE - INTERVAL '63 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1687, (CURRENT_DATE - INTERVAL '63 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1540, (CURRENT_DATE - INTERVAL '63 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 989, (CURRENT_DATE - INTERVAL '63 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '63 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '63 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '63 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 924, (CURRENT_DATE - INTERVAL '63 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 285, (CURRENT_DATE - INTERVAL '63 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-57
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '62 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '62 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 220, (CURRENT_DATE - INTERVAL '62 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '62 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 762, (CURRENT_DATE - INTERVAL '62 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1661, (CURRENT_DATE - INTERVAL '62 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '62 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 330, (CURRENT_DATE - INTERVAL '62 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1687, (CURRENT_DATE - INTERVAL '62 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1540, (CURRENT_DATE - INTERVAL '62 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 989, (CURRENT_DATE - INTERVAL '62 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '62 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '62 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '62 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 924, (CURRENT_DATE - INTERVAL '62 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 285, (CURRENT_DATE - INTERVAL '62 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-58
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '62 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '62 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 220, (CURRENT_DATE - INTERVAL '62 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '62 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 762, (CURRENT_DATE - INTERVAL '62 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1661, (CURRENT_DATE - INTERVAL '62 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '62 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 330, (CURRENT_DATE - INTERVAL '62 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1687, (CURRENT_DATE - INTERVAL '62 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1540, (CURRENT_DATE - INTERVAL '62 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 989, (CURRENT_DATE - INTERVAL '62 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '62 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '62 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '62 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 924, (CURRENT_DATE - INTERVAL '62 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 285, (CURRENT_DATE - INTERVAL '62 days' + TIME '18:00:00'));

--changeset steshabolk:init-prices-59
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '61 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '61 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 220, (CURRENT_DATE - INTERVAL '61 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '61 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 762, (CURRENT_DATE - INTERVAL '61 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1661, (CURRENT_DATE - INTERVAL '61 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '61 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 330, (CURRENT_DATE - INTERVAL '61 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1687, (CURRENT_DATE - INTERVAL '61 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1540, (CURRENT_DATE - INTERVAL '61 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 989, (CURRENT_DATE - INTERVAL '61 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '61 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '61 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '61 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 924, (CURRENT_DATE - INTERVAL '61 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 285, (CURRENT_DATE - INTERVAL '61 days' + TIME '12:00:00'));

--changeset steshabolk:init-prices-60
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 204, (CURRENT_DATE - INTERVAL '61 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 184, (CURRENT_DATE - INTERVAL '61 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 220, (CURRENT_DATE - INTERVAL '61 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '61 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 762, (CURRENT_DATE - INTERVAL '61 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1661, (CURRENT_DATE - INTERVAL '61 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '61 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 330, (CURRENT_DATE - INTERVAL '61 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1687, (CURRENT_DATE - INTERVAL '61 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1540, (CURRENT_DATE - INTERVAL '61 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 989, (CURRENT_DATE - INTERVAL '61 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '61 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '61 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '61 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 924, (CURRENT_DATE - INTERVAL '61 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 285, (CURRENT_DATE - INTERVAL '61 days' + TIME '18:00:00'));
