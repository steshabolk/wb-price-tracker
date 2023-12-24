--liquibase formatted sql

--changeset steshabolk:1
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '120 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 210, (CURRENT_DATE - INTERVAL '120 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 219, (CURRENT_DATE - INTERVAL '120 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '120 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 730, (CURRENT_DATE - INTERVAL '120 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1566, (CURRENT_DATE - INTERVAL '120 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 466, (CURRENT_DATE - INTERVAL '120 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '120 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1615, (CURRENT_DATE - INTERVAL '120 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1469, (CURRENT_DATE - INTERVAL '120 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 828, (CURRENT_DATE - INTERVAL '120 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1768, (CURRENT_DATE - INTERVAL '120 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '120 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1449, (CURRENT_DATE - INTERVAL '120 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 969, (CURRENT_DATE - INTERVAL '120 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '120 days' + TIME '12:00:00'));

--changeset steshabolk:2
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '120 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 210, (CURRENT_DATE - INTERVAL '120 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 219, (CURRENT_DATE - INTERVAL '120 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '120 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 730, (CURRENT_DATE - INTERVAL '120 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1566, (CURRENT_DATE - INTERVAL '120 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 466, (CURRENT_DATE - INTERVAL '120 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '120 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1615, (CURRENT_DATE - INTERVAL '120 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1469, (CURRENT_DATE - INTERVAL '120 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 828, (CURRENT_DATE - INTERVAL '120 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1768, (CURRENT_DATE - INTERVAL '120 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '120 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1449, (CURRENT_DATE - INTERVAL '120 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 969, (CURRENT_DATE - INTERVAL '120 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '120 days' + TIME '18:00:00'));

--changeset steshabolk:3
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '119 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 210, (CURRENT_DATE - INTERVAL '119 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 219, (CURRENT_DATE - INTERVAL '119 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '119 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 730, (CURRENT_DATE - INTERVAL '119 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1566, (CURRENT_DATE - INTERVAL '119 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 466, (CURRENT_DATE - INTERVAL '119 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '119 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1615, (CURRENT_DATE - INTERVAL '119 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1469, (CURRENT_DATE - INTERVAL '119 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 828, (CURRENT_DATE - INTERVAL '119 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1768, (CURRENT_DATE - INTERVAL '119 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '119 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1449, (CURRENT_DATE - INTERVAL '119 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 969, (CURRENT_DATE - INTERVAL '119 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '119 days' + TIME '12:00:00'));

--changeset steshabolk:4
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '119 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 210, (CURRENT_DATE - INTERVAL '119 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 219, (CURRENT_DATE - INTERVAL '119 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '119 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 730, (CURRENT_DATE - INTERVAL '119 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1566, (CURRENT_DATE - INTERVAL '119 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 466, (CURRENT_DATE - INTERVAL '119 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '119 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1615, (CURRENT_DATE - INTERVAL '119 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1469, (CURRENT_DATE - INTERVAL '119 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 828, (CURRENT_DATE - INTERVAL '119 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1768, (CURRENT_DATE - INTERVAL '119 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '119 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1449, (CURRENT_DATE - INTERVAL '119 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 969, (CURRENT_DATE - INTERVAL '119 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '119 days' + TIME '18:00:00'));

--changeset steshabolk:5
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '118 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 210, (CURRENT_DATE - INTERVAL '118 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 219, (CURRENT_DATE - INTERVAL '118 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '118 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 730, (CURRENT_DATE - INTERVAL '118 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1566, (CURRENT_DATE - INTERVAL '118 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 466, (CURRENT_DATE - INTERVAL '118 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '118 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1615, (CURRENT_DATE - INTERVAL '118 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1469, (CURRENT_DATE - INTERVAL '118 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 828, (CURRENT_DATE - INTERVAL '118 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1768, (CURRENT_DATE - INTERVAL '118 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '118 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1449, (CURRENT_DATE - INTERVAL '118 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 969, (CURRENT_DATE - INTERVAL '118 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '118 days' + TIME '12:00:00'));

--changeset steshabolk:6
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '118 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 210, (CURRENT_DATE - INTERVAL '118 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 219, (CURRENT_DATE - INTERVAL '118 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '118 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 730, (CURRENT_DATE - INTERVAL '118 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1566, (CURRENT_DATE - INTERVAL '118 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 466, (CURRENT_DATE - INTERVAL '118 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '118 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1615, (CURRENT_DATE - INTERVAL '118 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1469, (CURRENT_DATE - INTERVAL '118 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 828, (CURRENT_DATE - INTERVAL '118 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1768, (CURRENT_DATE - INTERVAL '118 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '118 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1449, (CURRENT_DATE - INTERVAL '118 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 969, (CURRENT_DATE - INTERVAL '118 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '118 days' + TIME '18:00:00'));

--changeset steshabolk:7
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '117 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 210, (CURRENT_DATE - INTERVAL '117 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 219, (CURRENT_DATE - INTERVAL '117 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '117 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 730, (CURRENT_DATE - INTERVAL '117 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1566, (CURRENT_DATE - INTERVAL '117 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 466, (CURRENT_DATE - INTERVAL '117 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '117 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1615, (CURRENT_DATE - INTERVAL '117 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1469, (CURRENT_DATE - INTERVAL '117 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 828, (CURRENT_DATE - INTERVAL '117 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1768, (CURRENT_DATE - INTERVAL '117 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '117 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1449, (CURRENT_DATE - INTERVAL '117 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 969, (CURRENT_DATE - INTERVAL '117 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '117 days' + TIME '12:00:00'));

--changeset steshabolk:8
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '117 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 210, (CURRENT_DATE - INTERVAL '117 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 219, (CURRENT_DATE - INTERVAL '117 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '117 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 730, (CURRENT_DATE - INTERVAL '117 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1566, (CURRENT_DATE - INTERVAL '117 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 466, (CURRENT_DATE - INTERVAL '117 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '117 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1615, (CURRENT_DATE - INTERVAL '117 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1469, (CURRENT_DATE - INTERVAL '117 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 828, (CURRENT_DATE - INTERVAL '117 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1768, (CURRENT_DATE - INTERVAL '117 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '117 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1449, (CURRENT_DATE - INTERVAL '117 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 969, (CURRENT_DATE - INTERVAL '117 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '117 days' + TIME '18:00:00'));

--changeset steshabolk:9
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '116 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 210, (CURRENT_DATE - INTERVAL '116 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 219, (CURRENT_DATE - INTERVAL '116 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '116 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 730, (CURRENT_DATE - INTERVAL '116 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1566, (CURRENT_DATE - INTERVAL '116 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 466, (CURRENT_DATE - INTERVAL '116 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '116 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1615, (CURRENT_DATE - INTERVAL '116 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1469, (CURRENT_DATE - INTERVAL '116 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 828, (CURRENT_DATE - INTERVAL '116 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1768, (CURRENT_DATE - INTERVAL '116 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '116 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1449, (CURRENT_DATE - INTERVAL '116 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 969, (CURRENT_DATE - INTERVAL '116 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '116 days' + TIME '12:00:00'));

--changeset steshabolk:10
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '116 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 210, (CURRENT_DATE - INTERVAL '116 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 219, (CURRENT_DATE - INTERVAL '116 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '116 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 730, (CURRENT_DATE - INTERVAL '116 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1566, (CURRENT_DATE - INTERVAL '116 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 466, (CURRENT_DATE - INTERVAL '116 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '116 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1615, (CURRENT_DATE - INTERVAL '116 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1469, (CURRENT_DATE - INTERVAL '116 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 828, (CURRENT_DATE - INTERVAL '116 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1768, (CURRENT_DATE - INTERVAL '116 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1561, (CURRENT_DATE - INTERVAL '116 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1449, (CURRENT_DATE - INTERVAL '116 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 969, (CURRENT_DATE - INTERVAL '116 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '116 days' + TIME '18:00:00'));

--changeset steshabolk:11
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '115 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '115 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '115 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '115 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 923, (CURRENT_DATE - INTERVAL '115 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1427, (CURRENT_DATE - INTERVAL '115 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 484, (CURRENT_DATE - INTERVAL '115 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 360, (CURRENT_DATE - INTERVAL '115 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1649, (CURRENT_DATE - INTERVAL '115 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1501, (CURRENT_DATE - INTERVAL '115 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 870, (CURRENT_DATE - INTERVAL '115 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1817, (CURRENT_DATE - INTERVAL '115 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1675, (CURRENT_DATE - INTERVAL '115 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '115 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1063, (CURRENT_DATE - INTERVAL '115 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '115 days' + TIME '12:00:00'));

--changeset steshabolk:12
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '115 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '115 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '115 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '115 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 923, (CURRENT_DATE - INTERVAL '115 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1427, (CURRENT_DATE - INTERVAL '115 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 484, (CURRENT_DATE - INTERVAL '115 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 360, (CURRENT_DATE - INTERVAL '115 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1649, (CURRENT_DATE - INTERVAL '115 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1501, (CURRENT_DATE - INTERVAL '115 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 870, (CURRENT_DATE - INTERVAL '115 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1817, (CURRENT_DATE - INTERVAL '115 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1675, (CURRENT_DATE - INTERVAL '115 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '115 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1063, (CURRENT_DATE - INTERVAL '115 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '115 days' + TIME '18:00:00'));

--changeset steshabolk:13
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '114 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '114 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '114 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '114 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 923, (CURRENT_DATE - INTERVAL '114 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1427, (CURRENT_DATE - INTERVAL '114 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 484, (CURRENT_DATE - INTERVAL '114 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 360, (CURRENT_DATE - INTERVAL '114 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1649, (CURRENT_DATE - INTERVAL '114 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1501, (CURRENT_DATE - INTERVAL '114 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 870, (CURRENT_DATE - INTERVAL '114 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1817, (CURRENT_DATE - INTERVAL '114 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1675, (CURRENT_DATE - INTERVAL '114 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '114 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1063, (CURRENT_DATE - INTERVAL '114 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '114 days' + TIME '12:00:00'));

--changeset steshabolk:14
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '114 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '114 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '114 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '114 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 923, (CURRENT_DATE - INTERVAL '114 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1427, (CURRENT_DATE - INTERVAL '114 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 484, (CURRENT_DATE - INTERVAL '114 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 360, (CURRENT_DATE - INTERVAL '114 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1649, (CURRENT_DATE - INTERVAL '114 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1501, (CURRENT_DATE - INTERVAL '114 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 870, (CURRENT_DATE - INTERVAL '114 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1817, (CURRENT_DATE - INTERVAL '114 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1675, (CURRENT_DATE - INTERVAL '114 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '114 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1063, (CURRENT_DATE - INTERVAL '114 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '114 days' + TIME '18:00:00'));

--changeset steshabolk:15
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '113 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '113 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '113 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '113 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 923, (CURRENT_DATE - INTERVAL '113 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1427, (CURRENT_DATE - INTERVAL '113 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 484, (CURRENT_DATE - INTERVAL '113 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 360, (CURRENT_DATE - INTERVAL '113 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1649, (CURRENT_DATE - INTERVAL '113 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1501, (CURRENT_DATE - INTERVAL '113 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 870, (CURRENT_DATE - INTERVAL '113 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1817, (CURRENT_DATE - INTERVAL '113 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1675, (CURRENT_DATE - INTERVAL '113 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '113 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1063, (CURRENT_DATE - INTERVAL '113 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '113 days' + TIME '12:00:00'));

--changeset steshabolk:16
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '113 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '113 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '113 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '113 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 923, (CURRENT_DATE - INTERVAL '113 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1427, (CURRENT_DATE - INTERVAL '113 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 484, (CURRENT_DATE - INTERVAL '113 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 360, (CURRENT_DATE - INTERVAL '113 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1649, (CURRENT_DATE - INTERVAL '113 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1501, (CURRENT_DATE - INTERVAL '113 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 870, (CURRENT_DATE - INTERVAL '113 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1817, (CURRENT_DATE - INTERVAL '113 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1675, (CURRENT_DATE - INTERVAL '113 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '113 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1063, (CURRENT_DATE - INTERVAL '113 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '113 days' + TIME '18:00:00'));

--changeset steshabolk:17
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '112 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '112 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '112 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '112 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 923, (CURRENT_DATE - INTERVAL '112 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1427, (CURRENT_DATE - INTERVAL '112 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 484, (CURRENT_DATE - INTERVAL '112 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 360, (CURRENT_DATE - INTERVAL '112 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1649, (CURRENT_DATE - INTERVAL '112 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1501, (CURRENT_DATE - INTERVAL '112 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 870, (CURRENT_DATE - INTERVAL '112 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1817, (CURRENT_DATE - INTERVAL '112 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1675, (CURRENT_DATE - INTERVAL '112 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '112 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1063, (CURRENT_DATE - INTERVAL '112 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '112 days' + TIME '12:00:00'));

--changeset steshabolk:18
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '112 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '112 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '112 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '112 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 923, (CURRENT_DATE - INTERVAL '112 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1427, (CURRENT_DATE - INTERVAL '112 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 484, (CURRENT_DATE - INTERVAL '112 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 360, (CURRENT_DATE - INTERVAL '112 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1649, (CURRENT_DATE - INTERVAL '112 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1501, (CURRENT_DATE - INTERVAL '112 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 870, (CURRENT_DATE - INTERVAL '112 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1817, (CURRENT_DATE - INTERVAL '112 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1675, (CURRENT_DATE - INTERVAL '112 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '112 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1063, (CURRENT_DATE - INTERVAL '112 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '112 days' + TIME '18:00:00'));

--changeset steshabolk:19
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '111 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '111 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '111 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '111 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 923, (CURRENT_DATE - INTERVAL '111 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1427, (CURRENT_DATE - INTERVAL '111 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 484, (CURRENT_DATE - INTERVAL '111 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 360, (CURRENT_DATE - INTERVAL '111 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1649, (CURRENT_DATE - INTERVAL '111 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1501, (CURRENT_DATE - INTERVAL '111 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 870, (CURRENT_DATE - INTERVAL '111 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1817, (CURRENT_DATE - INTERVAL '111 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1675, (CURRENT_DATE - INTERVAL '111 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '111 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1063, (CURRENT_DATE - INTERVAL '111 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '111 days' + TIME '12:00:00'));

--changeset steshabolk:20
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '111 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '111 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '111 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '111 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 923, (CURRENT_DATE - INTERVAL '111 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1427, (CURRENT_DATE - INTERVAL '111 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 484, (CURRENT_DATE - INTERVAL '111 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 360, (CURRENT_DATE - INTERVAL '111 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1649, (CURRENT_DATE - INTERVAL '111 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1501, (CURRENT_DATE - INTERVAL '111 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 870, (CURRENT_DATE - INTERVAL '111 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1817, (CURRENT_DATE - INTERVAL '111 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1675, (CURRENT_DATE - INTERVAL '111 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '111 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1063, (CURRENT_DATE - INTERVAL '111 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '111 days' + TIME '18:00:00'));

--changeset steshabolk:21
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '110 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '110 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '110 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '110 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 923, (CURRENT_DATE - INTERVAL '110 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1427, (CURRENT_DATE - INTERVAL '110 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 484, (CURRENT_DATE - INTERVAL '110 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 360, (CURRENT_DATE - INTERVAL '110 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1649, (CURRENT_DATE - INTERVAL '110 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1501, (CURRENT_DATE - INTERVAL '110 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 870, (CURRENT_DATE - INTERVAL '110 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1817, (CURRENT_DATE - INTERVAL '110 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1675, (CURRENT_DATE - INTERVAL '110 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '110 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1063, (CURRENT_DATE - INTERVAL '110 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '110 days' + TIME '12:00:00'));

--changeset steshabolk:22
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '110 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '110 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '110 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '110 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 923, (CURRENT_DATE - INTERVAL '110 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1427, (CURRENT_DATE - INTERVAL '110 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 484, (CURRENT_DATE - INTERVAL '110 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 360, (CURRENT_DATE - INTERVAL '110 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1649, (CURRENT_DATE - INTERVAL '110 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1501, (CURRENT_DATE - INTERVAL '110 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 870, (CURRENT_DATE - INTERVAL '110 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1817, (CURRENT_DATE - INTERVAL '110 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1675, (CURRENT_DATE - INTERVAL '110 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '110 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1063, (CURRENT_DATE - INTERVAL '110 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '110 days' + TIME '18:00:00'));

--changeset steshabolk:23
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '109 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '109 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '109 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '109 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 923, (CURRENT_DATE - INTERVAL '109 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1427, (CURRENT_DATE - INTERVAL '109 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 484, (CURRENT_DATE - INTERVAL '109 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 360, (CURRENT_DATE - INTERVAL '109 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1649, (CURRENT_DATE - INTERVAL '109 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1501, (CURRENT_DATE - INTERVAL '109 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 870, (CURRENT_DATE - INTERVAL '109 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1817, (CURRENT_DATE - INTERVAL '109 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1675, (CURRENT_DATE - INTERVAL '109 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '109 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1063, (CURRENT_DATE - INTERVAL '109 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '109 days' + TIME '12:00:00'));

--changeset steshabolk:24
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '109 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '109 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '109 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '109 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 923, (CURRENT_DATE - INTERVAL '109 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1427, (CURRENT_DATE - INTERVAL '109 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 484, (CURRENT_DATE - INTERVAL '109 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 360, (CURRENT_DATE - INTERVAL '109 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1649, (CURRENT_DATE - INTERVAL '109 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1501, (CURRENT_DATE - INTERVAL '109 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 870, (CURRENT_DATE - INTERVAL '109 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1817, (CURRENT_DATE - INTERVAL '109 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1675, (CURRENT_DATE - INTERVAL '109 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '109 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1063, (CURRENT_DATE - INTERVAL '109 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 378, (CURRENT_DATE - INTERVAL '109 days' + TIME '18:00:00'));

--changeset steshabolk:25
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 242, (CURRENT_DATE - INTERVAL '108 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 217, (CURRENT_DATE - INTERVAL '108 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '108 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 314, (CURRENT_DATE - INTERVAL '108 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 978, (CURRENT_DATE - INTERVAL '108 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1435, (CURRENT_DATE - INTERVAL '108 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 489, (CURRENT_DATE - INTERVAL '108 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 349, (CURRENT_DATE - INTERVAL '108 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1662, (CURRENT_DATE - INTERVAL '108 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1511, (CURRENT_DATE - INTERVAL '108 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 970, (CURRENT_DATE - INTERVAL '108 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1823, (CURRENT_DATE - INTERVAL '108 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1906, (CURRENT_DATE - INTERVAL '108 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '108 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1106, (CURRENT_DATE - INTERVAL '108 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 377, (CURRENT_DATE - INTERVAL '108 days' + TIME '12:00:00'));

--changeset steshabolk:26
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 242, (CURRENT_DATE - INTERVAL '108 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 217, (CURRENT_DATE - INTERVAL '108 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '108 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 314, (CURRENT_DATE - INTERVAL '108 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 978, (CURRENT_DATE - INTERVAL '108 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1435, (CURRENT_DATE - INTERVAL '108 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 489, (CURRENT_DATE - INTERVAL '108 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 349, (CURRENT_DATE - INTERVAL '108 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1662, (CURRENT_DATE - INTERVAL '108 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1511, (CURRENT_DATE - INTERVAL '108 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 970, (CURRENT_DATE - INTERVAL '108 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1823, (CURRENT_DATE - INTERVAL '108 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1906, (CURRENT_DATE - INTERVAL '108 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '108 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1106, (CURRENT_DATE - INTERVAL '108 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 377, (CURRENT_DATE - INTERVAL '108 days' + TIME '18:00:00'));

--changeset steshabolk:27
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 242, (CURRENT_DATE - INTERVAL '107 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 217, (CURRENT_DATE - INTERVAL '107 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '107 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 314, (CURRENT_DATE - INTERVAL '107 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 978, (CURRENT_DATE - INTERVAL '107 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1435, (CURRENT_DATE - INTERVAL '107 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 489, (CURRENT_DATE - INTERVAL '107 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 349, (CURRENT_DATE - INTERVAL '107 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1662, (CURRENT_DATE - INTERVAL '107 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1511, (CURRENT_DATE - INTERVAL '107 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 970, (CURRENT_DATE - INTERVAL '107 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1823, (CURRENT_DATE - INTERVAL '107 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1906, (CURRENT_DATE - INTERVAL '107 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '107 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1106, (CURRENT_DATE - INTERVAL '107 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 377, (CURRENT_DATE - INTERVAL '107 days' + TIME '12:00:00'));

--changeset steshabolk:28
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 242, (CURRENT_DATE - INTERVAL '107 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 217, (CURRENT_DATE - INTERVAL '107 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '107 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 314, (CURRENT_DATE - INTERVAL '107 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 978, (CURRENT_DATE - INTERVAL '107 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1435, (CURRENT_DATE - INTERVAL '107 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 489, (CURRENT_DATE - INTERVAL '107 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 349, (CURRENT_DATE - INTERVAL '107 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1662, (CURRENT_DATE - INTERVAL '107 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1511, (CURRENT_DATE - INTERVAL '107 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 970, (CURRENT_DATE - INTERVAL '107 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1823, (CURRENT_DATE - INTERVAL '107 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1906, (CURRENT_DATE - INTERVAL '107 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '107 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1106, (CURRENT_DATE - INTERVAL '107 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 377, (CURRENT_DATE - INTERVAL '107 days' + TIME '18:00:00'));

--changeset steshabolk:29
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 242, (CURRENT_DATE - INTERVAL '106 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 217, (CURRENT_DATE - INTERVAL '106 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '106 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 314, (CURRENT_DATE - INTERVAL '106 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 978, (CURRENT_DATE - INTERVAL '106 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1435, (CURRENT_DATE - INTERVAL '106 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 489, (CURRENT_DATE - INTERVAL '106 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 349, (CURRENT_DATE - INTERVAL '106 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1662, (CURRENT_DATE - INTERVAL '106 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1511, (CURRENT_DATE - INTERVAL '106 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 970, (CURRENT_DATE - INTERVAL '106 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1823, (CURRENT_DATE - INTERVAL '106 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1906, (CURRENT_DATE - INTERVAL '106 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '106 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1106, (CURRENT_DATE - INTERVAL '106 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 377, (CURRENT_DATE - INTERVAL '106 days' + TIME '12:00:00'));

--changeset steshabolk:30
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 242, (CURRENT_DATE - INTERVAL '106 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 217, (CURRENT_DATE - INTERVAL '106 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '106 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 314, (CURRENT_DATE - INTERVAL '106 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 978, (CURRENT_DATE - INTERVAL '106 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1435, (CURRENT_DATE - INTERVAL '106 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 489, (CURRENT_DATE - INTERVAL '106 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 349, (CURRENT_DATE - INTERVAL '106 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1662, (CURRENT_DATE - INTERVAL '106 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1511, (CURRENT_DATE - INTERVAL '106 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 970, (CURRENT_DATE - INTERVAL '106 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1823, (CURRENT_DATE - INTERVAL '106 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1906, (CURRENT_DATE - INTERVAL '106 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '106 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1106, (CURRENT_DATE - INTERVAL '106 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 377, (CURRENT_DATE - INTERVAL '106 days' + TIME '18:00:00'));

--changeset steshabolk:31
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 242, (CURRENT_DATE - INTERVAL '105 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 217, (CURRENT_DATE - INTERVAL '105 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '105 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 314, (CURRENT_DATE - INTERVAL '105 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 978, (CURRENT_DATE - INTERVAL '105 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1435, (CURRENT_DATE - INTERVAL '105 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 489, (CURRENT_DATE - INTERVAL '105 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 349, (CURRENT_DATE - INTERVAL '105 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1662, (CURRENT_DATE - INTERVAL '105 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1511, (CURRENT_DATE - INTERVAL '105 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 970, (CURRENT_DATE - INTERVAL '105 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1823, (CURRENT_DATE - INTERVAL '105 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1906, (CURRENT_DATE - INTERVAL '105 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '105 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1106, (CURRENT_DATE - INTERVAL '105 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 377, (CURRENT_DATE - INTERVAL '105 days' + TIME '12:00:00'));

--changeset steshabolk:32
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 242, (CURRENT_DATE - INTERVAL '105 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 217, (CURRENT_DATE - INTERVAL '105 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '105 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 314, (CURRENT_DATE - INTERVAL '105 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 978, (CURRENT_DATE - INTERVAL '105 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1435, (CURRENT_DATE - INTERVAL '105 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 489, (CURRENT_DATE - INTERVAL '105 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 349, (CURRENT_DATE - INTERVAL '105 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1662, (CURRENT_DATE - INTERVAL '105 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1511, (CURRENT_DATE - INTERVAL '105 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 970, (CURRENT_DATE - INTERVAL '105 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1823, (CURRENT_DATE - INTERVAL '105 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1906, (CURRENT_DATE - INTERVAL '105 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '105 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1106, (CURRENT_DATE - INTERVAL '105 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 377, (CURRENT_DATE - INTERVAL '105 days' + TIME '18:00:00'));

--changeset steshabolk:33
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 242, (CURRENT_DATE - INTERVAL '104 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 217, (CURRENT_DATE - INTERVAL '104 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '104 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 314, (CURRENT_DATE - INTERVAL '104 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 978, (CURRENT_DATE - INTERVAL '104 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1435, (CURRENT_DATE - INTERVAL '104 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 489, (CURRENT_DATE - INTERVAL '104 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 349, (CURRENT_DATE - INTERVAL '104 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1662, (CURRENT_DATE - INTERVAL '104 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1511, (CURRENT_DATE - INTERVAL '104 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 970, (CURRENT_DATE - INTERVAL '104 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1823, (CURRENT_DATE - INTERVAL '104 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1906, (CURRENT_DATE - INTERVAL '104 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '104 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1106, (CURRENT_DATE - INTERVAL '104 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 377, (CURRENT_DATE - INTERVAL '104 days' + TIME '12:00:00'));

--changeset steshabolk:34
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 242, (CURRENT_DATE - INTERVAL '104 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 217, (CURRENT_DATE - INTERVAL '104 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '104 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 314, (CURRENT_DATE - INTERVAL '104 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 978, (CURRENT_DATE - INTERVAL '104 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1435, (CURRENT_DATE - INTERVAL '104 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 489, (CURRENT_DATE - INTERVAL '104 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 349, (CURRENT_DATE - INTERVAL '104 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1662, (CURRENT_DATE - INTERVAL '104 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1511, (CURRENT_DATE - INTERVAL '104 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 970, (CURRENT_DATE - INTERVAL '104 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1823, (CURRENT_DATE - INTERVAL '104 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1906, (CURRENT_DATE - INTERVAL '104 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '104 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1106, (CURRENT_DATE - INTERVAL '104 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 377, (CURRENT_DATE - INTERVAL '104 days' + TIME '18:00:00'));

--changeset steshabolk:35
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 242, (CURRENT_DATE - INTERVAL '103 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 217, (CURRENT_DATE - INTERVAL '103 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '103 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 314, (CURRENT_DATE - INTERVAL '103 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 978, (CURRENT_DATE - INTERVAL '103 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1435, (CURRENT_DATE - INTERVAL '103 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 489, (CURRENT_DATE - INTERVAL '103 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 349, (CURRENT_DATE - INTERVAL '103 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1662, (CURRENT_DATE - INTERVAL '103 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1511, (CURRENT_DATE - INTERVAL '103 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 970, (CURRENT_DATE - INTERVAL '103 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1823, (CURRENT_DATE - INTERVAL '103 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1906, (CURRENT_DATE - INTERVAL '103 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '103 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1106, (CURRENT_DATE - INTERVAL '103 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 377, (CURRENT_DATE - INTERVAL '103 days' + TIME '12:00:00'));

--changeset steshabolk:36
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 242, (CURRENT_DATE - INTERVAL '103 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 217, (CURRENT_DATE - INTERVAL '103 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '103 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 314, (CURRENT_DATE - INTERVAL '103 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 978, (CURRENT_DATE - INTERVAL '103 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1435, (CURRENT_DATE - INTERVAL '103 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 489, (CURRENT_DATE - INTERVAL '103 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 349, (CURRENT_DATE - INTERVAL '103 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1662, (CURRENT_DATE - INTERVAL '103 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1511, (CURRENT_DATE - INTERVAL '103 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 970, (CURRENT_DATE - INTERVAL '103 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1823, (CURRENT_DATE - INTERVAL '103 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1906, (CURRENT_DATE - INTERVAL '103 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '103 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1106, (CURRENT_DATE - INTERVAL '103 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 377, (CURRENT_DATE - INTERVAL '103 days' + TIME '18:00:00'));

--changeset steshabolk:37
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 242, (CURRENT_DATE - INTERVAL '102 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 217, (CURRENT_DATE - INTERVAL '102 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '102 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 314, (CURRENT_DATE - INTERVAL '102 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 978, (CURRENT_DATE - INTERVAL '102 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1435, (CURRENT_DATE - INTERVAL '102 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 489, (CURRENT_DATE - INTERVAL '102 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 349, (CURRENT_DATE - INTERVAL '102 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1662, (CURRENT_DATE - INTERVAL '102 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1511, (CURRENT_DATE - INTERVAL '102 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 970, (CURRENT_DATE - INTERVAL '102 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1823, (CURRENT_DATE - INTERVAL '102 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1917, (CURRENT_DATE - INTERVAL '102 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '102 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1106, (CURRENT_DATE - INTERVAL '102 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 377, (CURRENT_DATE - INTERVAL '102 days' + TIME '12:00:00'));

--changeset steshabolk:38
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 242, (CURRENT_DATE - INTERVAL '102 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 217, (CURRENT_DATE - INTERVAL '102 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 224, (CURRENT_DATE - INTERVAL '102 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 314, (CURRENT_DATE - INTERVAL '102 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 978, (CURRENT_DATE - INTERVAL '102 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1435, (CURRENT_DATE - INTERVAL '102 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 489, (CURRENT_DATE - INTERVAL '102 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 349, (CURRENT_DATE - INTERVAL '102 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1662, (CURRENT_DATE - INTERVAL '102 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1511, (CURRENT_DATE - INTERVAL '102 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 970, (CURRENT_DATE - INTERVAL '102 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1823, (CURRENT_DATE - INTERVAL '102 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1906, (CURRENT_DATE - INTERVAL '102 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '102 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1106, (CURRENT_DATE - INTERVAL '102 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 377, (CURRENT_DATE - INTERVAL '102 days' + TIME '18:00:00'));

--changeset steshabolk:39
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '101 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 216, (CURRENT_DATE - INTERVAL '101 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 218, (CURRENT_DATE - INTERVAL '101 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '101 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 986, (CURRENT_DATE - INTERVAL '101 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1530, (CURRENT_DATE - INTERVAL '101 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '101 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '101 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1664, (CURRENT_DATE - INTERVAL '101 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1513, (CURRENT_DATE - INTERVAL '101 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '101 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '101 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '101 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '101 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '101 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '101 days' + TIME '12:00:00'));

--changeset steshabolk:40
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '101 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 216, (CURRENT_DATE - INTERVAL '101 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 218, (CURRENT_DATE - INTERVAL '101 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '101 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 986, (CURRENT_DATE - INTERVAL '101 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1530, (CURRENT_DATE - INTERVAL '101 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '101 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '101 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1664, (CURRENT_DATE - INTERVAL '101 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1513, (CURRENT_DATE - INTERVAL '101 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '101 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '101 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '101 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '101 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '101 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '101 days' + TIME '18:00:00'));

--changeset steshabolk:41
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '100 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 216, (CURRENT_DATE - INTERVAL '100 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 218, (CURRENT_DATE - INTERVAL '100 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '100 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 986, (CURRENT_DATE - INTERVAL '100 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1530, (CURRENT_DATE - INTERVAL '100 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '100 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '100 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1664, (CURRENT_DATE - INTERVAL '100 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1513, (CURRENT_DATE - INTERVAL '100 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '100 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '100 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '100 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '100 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '100 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '100 days' + TIME '12:00:00'));

--changeset steshabolk:42
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '100 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 216, (CURRENT_DATE - INTERVAL '100 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 218, (CURRENT_DATE - INTERVAL '100 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '100 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 986, (CURRENT_DATE - INTERVAL '100 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1530, (CURRENT_DATE - INTERVAL '100 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '100 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '100 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1664, (CURRENT_DATE - INTERVAL '100 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1513, (CURRENT_DATE - INTERVAL '100 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '100 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '100 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '100 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '100 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '100 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '100 days' + TIME '18:00:00'));

--changeset steshabolk:43
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '99 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 216, (CURRENT_DATE - INTERVAL '99 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 218, (CURRENT_DATE - INTERVAL '99 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '99 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 986, (CURRENT_DATE - INTERVAL '99 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1530, (CURRENT_DATE - INTERVAL '99 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '99 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '99 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1664, (CURRENT_DATE - INTERVAL '99 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1513, (CURRENT_DATE - INTERVAL '99 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '99 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '99 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '99 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '99 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '99 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '99 days' + TIME '12:00:00'));

--changeset steshabolk:44
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '99 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 216, (CURRENT_DATE - INTERVAL '99 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 218, (CURRENT_DATE - INTERVAL '99 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '99 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 986, (CURRENT_DATE - INTERVAL '99 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1530, (CURRENT_DATE - INTERVAL '99 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '99 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '99 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1664, (CURRENT_DATE - INTERVAL '99 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1513, (CURRENT_DATE - INTERVAL '99 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '99 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '99 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '99 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '99 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '99 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '99 days' + TIME '18:00:00'));

--changeset steshabolk:45
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '98 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 216, (CURRENT_DATE - INTERVAL '98 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 218, (CURRENT_DATE - INTERVAL '98 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '98 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 986, (CURRENT_DATE - INTERVAL '98 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1530, (CURRENT_DATE - INTERVAL '98 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '98 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '98 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1664, (CURRENT_DATE - INTERVAL '98 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1513, (CURRENT_DATE - INTERVAL '98 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '98 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '98 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '98 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '98 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '98 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '98 days' + TIME '12:00:00'));

--changeset steshabolk:46
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '98 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 216, (CURRENT_DATE - INTERVAL '98 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 218, (CURRENT_DATE - INTERVAL '98 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '98 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 986, (CURRENT_DATE - INTERVAL '98 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1530, (CURRENT_DATE - INTERVAL '98 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '98 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '98 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1664, (CURRENT_DATE - INTERVAL '98 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1513, (CURRENT_DATE - INTERVAL '98 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '98 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '98 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '98 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '98 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '98 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '98 days' + TIME '18:00:00'));

--changeset steshabolk:47
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '97 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 216, (CURRENT_DATE - INTERVAL '97 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 218, (CURRENT_DATE - INTERVAL '97 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '97 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 986, (CURRENT_DATE - INTERVAL '97 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1530, (CURRENT_DATE - INTERVAL '97 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '97 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '97 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1664, (CURRENT_DATE - INTERVAL '97 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1513, (CURRENT_DATE - INTERVAL '97 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '97 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '97 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '97 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '97 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '97 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '97 days' + TIME '12:00:00'));

--changeset steshabolk:48
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '97 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 216, (CURRENT_DATE - INTERVAL '97 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 218, (CURRENT_DATE - INTERVAL '97 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '97 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 986, (CURRENT_DATE - INTERVAL '97 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1530, (CURRENT_DATE - INTERVAL '97 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '97 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '97 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1664, (CURRENT_DATE - INTERVAL '97 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1513, (CURRENT_DATE - INTERVAL '97 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '97 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '97 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '97 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '97 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '97 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '97 days' + TIME '18:00:00'));

--changeset steshabolk:49
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '96 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 216, (CURRENT_DATE - INTERVAL '96 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 218, (CURRENT_DATE - INTERVAL '96 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '96 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 986, (CURRENT_DATE - INTERVAL '96 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1530, (CURRENT_DATE - INTERVAL '96 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '96 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '96 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1664, (CURRENT_DATE - INTERVAL '96 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1513, (CURRENT_DATE - INTERVAL '96 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '96 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '96 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '96 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '96 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '96 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '96 days' + TIME '12:00:00'));

--changeset steshabolk:50
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '96 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 216, (CURRENT_DATE - INTERVAL '96 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 218, (CURRENT_DATE - INTERVAL '96 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '96 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 986, (CURRENT_DATE - INTERVAL '96 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1530, (CURRENT_DATE - INTERVAL '96 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '96 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '96 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1664, (CURRENT_DATE - INTERVAL '96 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1513, (CURRENT_DATE - INTERVAL '96 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '96 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '96 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '96 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '96 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '96 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '96 days' + TIME '18:00:00'));

--changeset steshabolk:51
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '95 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 216, (CURRENT_DATE - INTERVAL '95 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 218, (CURRENT_DATE - INTERVAL '95 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '95 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 986, (CURRENT_DATE - INTERVAL '95 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1530, (CURRENT_DATE - INTERVAL '95 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '95 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '95 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1664, (CURRENT_DATE - INTERVAL '95 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1513, (CURRENT_DATE - INTERVAL '95 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '95 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '95 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '95 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '95 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '95 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '95 days' + TIME '12:00:00'));

--changeset steshabolk:52
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 232, (CURRENT_DATE - INTERVAL '95 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 216, (CURRENT_DATE - INTERVAL '95 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 218, (CURRENT_DATE - INTERVAL '95 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '95 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 986, (CURRENT_DATE - INTERVAL '95 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1530, (CURRENT_DATE - INTERVAL '95 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '95 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 348, (CURRENT_DATE - INTERVAL '95 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1664, (CURRENT_DATE - INTERVAL '95 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1513, (CURRENT_DATE - INTERVAL '95 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 990, (CURRENT_DATE - INTERVAL '95 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1824, (CURRENT_DATE - INTERVAL '95 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '95 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '95 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '95 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '95 days' + TIME '18:00:00'));

--changeset steshabolk:53
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '94 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 216, (CURRENT_DATE - INTERVAL '94 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '94 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '94 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 845, (CURRENT_DATE - INTERVAL '94 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1496, (CURRENT_DATE - INTERVAL '94 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '94 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 337, (CURRENT_DATE - INTERVAL '94 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1657, (CURRENT_DATE - INTERVAL '94 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1508, (CURRENT_DATE - INTERVAL '94 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '94 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1826, (CURRENT_DATE - INTERVAL '94 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '94 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '94 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '94 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '94 days' + TIME '12:00:00'));

--changeset steshabolk:54
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '94 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 216, (CURRENT_DATE - INTERVAL '94 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '94 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '94 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 845, (CURRENT_DATE - INTERVAL '94 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1496, (CURRENT_DATE - INTERVAL '94 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '94 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 337, (CURRENT_DATE - INTERVAL '94 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1657, (CURRENT_DATE - INTERVAL '94 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1508, (CURRENT_DATE - INTERVAL '94 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '94 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1826, (CURRENT_DATE - INTERVAL '94 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '94 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '94 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '94 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '94 days' + TIME '18:00:00'));

--changeset steshabolk:55
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '93 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 216, (CURRENT_DATE - INTERVAL '93 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '93 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '93 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 845, (CURRENT_DATE - INTERVAL '93 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1496, (CURRENT_DATE - INTERVAL '93 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '93 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 337, (CURRENT_DATE - INTERVAL '93 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1657, (CURRENT_DATE - INTERVAL '93 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1508, (CURRENT_DATE - INTERVAL '93 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '93 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1826, (CURRENT_DATE - INTERVAL '93 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '93 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '93 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '93 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '93 days' + TIME '12:00:00'));

--changeset steshabolk:56
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '93 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 216, (CURRENT_DATE - INTERVAL '93 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '93 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 311, (CURRENT_DATE - INTERVAL '93 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 845, (CURRENT_DATE - INTERVAL '93 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1496, (CURRENT_DATE - INTERVAL '93 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 488, (CURRENT_DATE - INTERVAL '93 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 337, (CURRENT_DATE - INTERVAL '93 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1657, (CURRENT_DATE - INTERVAL '93 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1508, (CURRENT_DATE - INTERVAL '93 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 992, (CURRENT_DATE - INTERVAL '93 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1826, (CURRENT_DATE - INTERVAL '93 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '93 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1638, (CURRENT_DATE - INTERVAL '93 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1109, (CURRENT_DATE - INTERVAL '93 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 351, (CURRENT_DATE - INTERVAL '93 days' + TIME '18:00:00'));

--changeset steshabolk:57
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '92 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '92 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '92 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 307, (CURRENT_DATE - INTERVAL '92 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '92 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '92 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '92 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '92 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '92 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '92 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '92 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '92 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '92 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '92 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '92 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '92 days' + TIME '12:00:00'));

--changeset steshabolk:58
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '92 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '92 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '92 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 307, (CURRENT_DATE - INTERVAL '92 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '92 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '92 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '92 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '92 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '92 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '92 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '92 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '92 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '92 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '92 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '92 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '92 days' + TIME '18:00:00'));

--changeset steshabolk:59
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '91 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '91 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '91 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 307, (CURRENT_DATE - INTERVAL '91 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '91 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '91 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '91 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '91 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '91 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '91 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '91 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '91 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '91 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '91 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '91 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '91 days' + TIME '12:00:00'));

--changeset steshabolk:60
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '91 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '91 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '91 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 307, (CURRENT_DATE - INTERVAL '91 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '91 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '91 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '91 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '91 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '91 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '91 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '91 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '91 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '91 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '91 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '91 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '91 days' + TIME '18:00:00'));
