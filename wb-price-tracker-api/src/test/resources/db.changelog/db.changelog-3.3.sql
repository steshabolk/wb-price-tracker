--liquibase formatted sql

--changeset steshabolk:1
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 239, (CURRENT_DATE - INTERVAL '60 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '60 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 212, (CURRENT_DATE - INTERVAL '60 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '60 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 762, (CURRENT_DATE - INTERVAL '60 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1661, (CURRENT_DATE - INTERVAL '60 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '60 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 330, (CURRENT_DATE - INTERVAL '60 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1687, (CURRENT_DATE - INTERVAL '60 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1540, (CURRENT_DATE - INTERVAL '60 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 989, (CURRENT_DATE - INTERVAL '60 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '60 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '60 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '60 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 924, (CURRENT_DATE - INTERVAL '60 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 285, (CURRENT_DATE - INTERVAL '60 days' + TIME '12:00:00'));

--changeset steshabolk:2
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 239, (CURRENT_DATE - INTERVAL '60 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '60 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 212, (CURRENT_DATE - INTERVAL '60 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '60 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 762, (CURRENT_DATE - INTERVAL '60 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1661, (CURRENT_DATE - INTERVAL '60 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '60 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 330, (CURRENT_DATE - INTERVAL '60 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1687, (CURRENT_DATE - INTERVAL '60 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1540, (CURRENT_DATE - INTERVAL '60 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 989, (CURRENT_DATE - INTERVAL '60 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '60 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '60 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '60 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 924, (CURRENT_DATE - INTERVAL '60 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 285, (CURRENT_DATE - INTERVAL '60 days' + TIME '18:00:00'));

--changeset steshabolk:3
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 239, (CURRENT_DATE - INTERVAL '59 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '59 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 212, (CURRENT_DATE - INTERVAL '59 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '59 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 762, (CURRENT_DATE - INTERVAL '59 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1661, (CURRENT_DATE - INTERVAL '59 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '59 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 330, (CURRENT_DATE - INTERVAL '59 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1687, (CURRENT_DATE - INTERVAL '59 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1540, (CURRENT_DATE - INTERVAL '59 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 989, (CURRENT_DATE - INTERVAL '59 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '59 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '59 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '59 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 924, (CURRENT_DATE - INTERVAL '59 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 285, (CURRENT_DATE - INTERVAL '59 days' + TIME '12:00:00'));

--changeset steshabolk:4
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 239, (CURRENT_DATE - INTERVAL '59 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '59 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 212, (CURRENT_DATE - INTERVAL '59 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '59 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 762, (CURRENT_DATE - INTERVAL '59 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1661, (CURRENT_DATE - INTERVAL '59 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '59 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 330, (CURRENT_DATE - INTERVAL '59 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1687, (CURRENT_DATE - INTERVAL '59 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1540, (CURRENT_DATE - INTERVAL '59 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 989, (CURRENT_DATE - INTERVAL '59 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1825, (CURRENT_DATE - INTERVAL '59 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '59 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '59 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 924, (CURRENT_DATE - INTERVAL '59 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 285, (CURRENT_DATE - INTERVAL '59 days' + TIME '18:00:00'));

--changeset steshabolk:5
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 239, (CURRENT_DATE - INTERVAL '58 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '58 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '58 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 317, (CURRENT_DATE - INTERVAL '58 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 753, (CURRENT_DATE - INTERVAL '58 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1678, (CURRENT_DATE - INTERVAL '58 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '58 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 342, (CURRENT_DATE - INTERVAL '58 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1552, (CURRENT_DATE - INTERVAL '58 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1415, (CURRENT_DATE - INTERVAL '58 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 988, (CURRENT_DATE - INTERVAL '58 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1820, (CURRENT_DATE - INTERVAL '58 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '58 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '58 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1016, (CURRENT_DATE - INTERVAL '58 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 282, (CURRENT_DATE - INTERVAL '58 days' + TIME '12:00:00'));

--changeset steshabolk:6
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 239, (CURRENT_DATE - INTERVAL '58 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '58 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '58 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 317, (CURRENT_DATE - INTERVAL '58 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 753, (CURRENT_DATE - INTERVAL '58 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1678, (CURRENT_DATE - INTERVAL '58 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '58 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 342, (CURRENT_DATE - INTERVAL '58 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1552, (CURRENT_DATE - INTERVAL '58 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1415, (CURRENT_DATE - INTERVAL '58 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 988, (CURRENT_DATE - INTERVAL '58 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1820, (CURRENT_DATE - INTERVAL '58 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '58 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '58 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1016, (CURRENT_DATE - INTERVAL '58 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 282, (CURRENT_DATE - INTERVAL '58 days' + TIME '18:00:00'));

--changeset steshabolk:7
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 239, (CURRENT_DATE - INTERVAL '57 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '57 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '57 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 317, (CURRENT_DATE - INTERVAL '57 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 753, (CURRENT_DATE - INTERVAL '57 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1678, (CURRENT_DATE - INTERVAL '57 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '57 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 342, (CURRENT_DATE - INTERVAL '57 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1552, (CURRENT_DATE - INTERVAL '57 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1415, (CURRENT_DATE - INTERVAL '57 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 988, (CURRENT_DATE - INTERVAL '57 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1820, (CURRENT_DATE - INTERVAL '57 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '57 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '57 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1016, (CURRENT_DATE - INTERVAL '57 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 282, (CURRENT_DATE - INTERVAL '57 days' + TIME '12:00:00'));

--changeset steshabolk:8
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 239, (CURRENT_DATE - INTERVAL '57 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '57 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '57 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 317, (CURRENT_DATE - INTERVAL '57 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 753, (CURRENT_DATE - INTERVAL '57 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1678, (CURRENT_DATE - INTERVAL '57 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '57 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 342, (CURRENT_DATE - INTERVAL '57 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1552, (CURRENT_DATE - INTERVAL '57 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1415, (CURRENT_DATE - INTERVAL '57 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 988, (CURRENT_DATE - INTERVAL '57 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1820, (CURRENT_DATE - INTERVAL '57 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '57 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '57 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1016, (CURRENT_DATE - INTERVAL '57 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 282, (CURRENT_DATE - INTERVAL '57 days' + TIME '18:00:00'));

--changeset steshabolk:9
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 239, (CURRENT_DATE - INTERVAL '56 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '56 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '56 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 317, (CURRENT_DATE - INTERVAL '56 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 753, (CURRENT_DATE - INTERVAL '56 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1678, (CURRENT_DATE - INTERVAL '56 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '56 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 342, (CURRENT_DATE - INTERVAL '56 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1552, (CURRENT_DATE - INTERVAL '56 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1415, (CURRENT_DATE - INTERVAL '56 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 988, (CURRENT_DATE - INTERVAL '56 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1820, (CURRENT_DATE - INTERVAL '56 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '56 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '56 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1016, (CURRENT_DATE - INTERVAL '56 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 282, (CURRENT_DATE - INTERVAL '56 days' + TIME '12:00:00'));

--changeset steshabolk:10
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 239, (CURRENT_DATE - INTERVAL '56 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '56 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '56 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 317, (CURRENT_DATE - INTERVAL '56 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 753, (CURRENT_DATE - INTERVAL '56 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1678, (CURRENT_DATE - INTERVAL '56 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '56 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 342, (CURRENT_DATE - INTERVAL '56 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1552, (CURRENT_DATE - INTERVAL '56 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1415, (CURRENT_DATE - INTERVAL '56 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 988, (CURRENT_DATE - INTERVAL '56 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1820, (CURRENT_DATE - INTERVAL '56 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '56 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '56 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1016, (CURRENT_DATE - INTERVAL '56 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 282, (CURRENT_DATE - INTERVAL '56 days' + TIME '18:00:00'));

--changeset steshabolk:11
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 239, (CURRENT_DATE - INTERVAL '55 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '55 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '55 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 317, (CURRENT_DATE - INTERVAL '55 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 753, (CURRENT_DATE - INTERVAL '55 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1678, (CURRENT_DATE - INTERVAL '55 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '55 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 342, (CURRENT_DATE - INTERVAL '55 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1552, (CURRENT_DATE - INTERVAL '55 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1415, (CURRENT_DATE - INTERVAL '55 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 988, (CURRENT_DATE - INTERVAL '55 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1820, (CURRENT_DATE - INTERVAL '55 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '55 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '55 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1016, (CURRENT_DATE - INTERVAL '55 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 282, (CURRENT_DATE - INTERVAL '55 days' + TIME '12:00:00'));

--changeset steshabolk:12
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 239, (CURRENT_DATE - INTERVAL '55 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '55 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '55 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 317, (CURRENT_DATE - INTERVAL '55 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 753, (CURRENT_DATE - INTERVAL '55 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1678, (CURRENT_DATE - INTERVAL '55 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '55 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 342, (CURRENT_DATE - INTERVAL '55 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1552, (CURRENT_DATE - INTERVAL '55 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1415, (CURRENT_DATE - INTERVAL '55 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 988, (CURRENT_DATE - INTERVAL '55 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1820, (CURRENT_DATE - INTERVAL '55 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '55 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '55 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1016, (CURRENT_DATE - INTERVAL '55 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 282, (CURRENT_DATE - INTERVAL '55 days' + TIME '18:00:00'));

--changeset steshabolk:13
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 239, (CURRENT_DATE - INTERVAL '54 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '54 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '54 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 317, (CURRENT_DATE - INTERVAL '54 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 753, (CURRENT_DATE - INTERVAL '54 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1678, (CURRENT_DATE - INTERVAL '54 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '54 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 342, (CURRENT_DATE - INTERVAL '54 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1552, (CURRENT_DATE - INTERVAL '54 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1415, (CURRENT_DATE - INTERVAL '54 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 988, (CURRENT_DATE - INTERVAL '54 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1820, (CURRENT_DATE - INTERVAL '54 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '54 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '54 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1016, (CURRENT_DATE - INTERVAL '54 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 282, (CURRENT_DATE - INTERVAL '54 days' + TIME '12:00:00'));

--changeset steshabolk:14
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 239, (CURRENT_DATE - INTERVAL '54 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '54 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '54 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 317, (CURRENT_DATE - INTERVAL '54 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 753, (CURRENT_DATE - INTERVAL '54 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1678, (CURRENT_DATE - INTERVAL '54 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '54 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 342, (CURRENT_DATE - INTERVAL '54 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1552, (CURRENT_DATE - INTERVAL '54 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1415, (CURRENT_DATE - INTERVAL '54 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 988, (CURRENT_DATE - INTERVAL '54 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1820, (CURRENT_DATE - INTERVAL '54 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '54 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '54 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1016, (CURRENT_DATE - INTERVAL '54 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 282, (CURRENT_DATE - INTERVAL '54 days' + TIME '18:00:00'));

--changeset steshabolk:15
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 239, (CURRENT_DATE - INTERVAL '53 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '53 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '53 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 317, (CURRENT_DATE - INTERVAL '53 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 753, (CURRENT_DATE - INTERVAL '53 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1678, (CURRENT_DATE - INTERVAL '53 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '53 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 342, (CURRENT_DATE - INTERVAL '53 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1552, (CURRENT_DATE - INTERVAL '53 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1415, (CURRENT_DATE - INTERVAL '53 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 988, (CURRENT_DATE - INTERVAL '53 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1820, (CURRENT_DATE - INTERVAL '53 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '53 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '53 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1016, (CURRENT_DATE - INTERVAL '53 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 282, (CURRENT_DATE - INTERVAL '53 days' + TIME '12:00:00'));

--changeset steshabolk:16
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 239, (CURRENT_DATE - INTERVAL '53 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '53 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '53 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 317, (CURRENT_DATE - INTERVAL '53 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 753, (CURRENT_DATE - INTERVAL '53 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1678, (CURRENT_DATE - INTERVAL '53 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '53 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 342, (CURRENT_DATE - INTERVAL '53 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1552, (CURRENT_DATE - INTERVAL '53 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1415, (CURRENT_DATE - INTERVAL '53 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 988, (CURRENT_DATE - INTERVAL '53 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1820, (CURRENT_DATE - INTERVAL '53 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '53 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '53 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1016, (CURRENT_DATE - INTERVAL '53 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 282, (CURRENT_DATE - INTERVAL '53 days' + TIME '18:00:00'));

--changeset steshabolk:17
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 239, (CURRENT_DATE - INTERVAL '52 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '52 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '52 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 317, (CURRENT_DATE - INTERVAL '52 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 753, (CURRENT_DATE - INTERVAL '52 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1678, (CURRENT_DATE - INTERVAL '52 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '52 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 342, (CURRENT_DATE - INTERVAL '52 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1552, (CURRENT_DATE - INTERVAL '52 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1415, (CURRENT_DATE - INTERVAL '52 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 988, (CURRENT_DATE - INTERVAL '52 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1820, (CURRENT_DATE - INTERVAL '52 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '52 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '52 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1016, (CURRENT_DATE - INTERVAL '52 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 282, (CURRENT_DATE - INTERVAL '52 days' + TIME '12:00:00'));

--changeset steshabolk:18
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 239, (CURRENT_DATE - INTERVAL '52 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '52 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '52 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 317, (CURRENT_DATE - INTERVAL '52 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 753, (CURRENT_DATE - INTERVAL '52 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1678, (CURRENT_DATE - INTERVAL '52 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 498, (CURRENT_DATE - INTERVAL '52 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 342, (CURRENT_DATE - INTERVAL '52 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1552, (CURRENT_DATE - INTERVAL '52 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1415, (CURRENT_DATE - INTERVAL '52 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 988, (CURRENT_DATE - INTERVAL '52 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1820, (CURRENT_DATE - INTERVAL '52 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1904, (CURRENT_DATE - INTERVAL '52 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '52 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1016, (CURRENT_DATE - INTERVAL '52 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 282, (CURRENT_DATE - INTERVAL '52 days' + TIME '18:00:00'));

--changeset steshabolk:19
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '51 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '51 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '51 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '51 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 721, (CURRENT_DATE - INTERVAL '51 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '51 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 524, (CURRENT_DATE - INTERVAL '51 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 361, (CURRENT_DATE - INTERVAL '51 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1585, (CURRENT_DATE - INTERVAL '51 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1433, (CURRENT_DATE - INTERVAL '51 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 987, (CURRENT_DATE - INTERVAL '51 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1809, (CURRENT_DATE - INTERVAL '51 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1890, (CURRENT_DATE - INTERVAL '51 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '51 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '51 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 278, (CURRENT_DATE - INTERVAL '51 days' + TIME '12:00:00'));

--changeset steshabolk:20
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '51 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '51 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '51 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '51 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 721, (CURRENT_DATE - INTERVAL '51 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '51 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 524, (CURRENT_DATE - INTERVAL '51 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 361, (CURRENT_DATE - INTERVAL '51 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1585, (CURRENT_DATE - INTERVAL '51 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1433, (CURRENT_DATE - INTERVAL '51 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 987, (CURRENT_DATE - INTERVAL '51 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1809, (CURRENT_DATE - INTERVAL '51 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1890, (CURRENT_DATE - INTERVAL '51 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '51 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '51 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 278, (CURRENT_DATE - INTERVAL '51 days' + TIME '18:00:00'));

--changeset steshabolk:21
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '50 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '50 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '50 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '50 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 721, (CURRENT_DATE - INTERVAL '50 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '50 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 524, (CURRENT_DATE - INTERVAL '50 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 361, (CURRENT_DATE - INTERVAL '50 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1585, (CURRENT_DATE - INTERVAL '50 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1433, (CURRENT_DATE - INTERVAL '50 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 987, (CURRENT_DATE - INTERVAL '50 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1809, (CURRENT_DATE - INTERVAL '50 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1890, (CURRENT_DATE - INTERVAL '50 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '50 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '50 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 278, (CURRENT_DATE - INTERVAL '50 days' + TIME '12:00:00'));

--changeset steshabolk:22
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '50 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '50 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '50 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '50 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 721, (CURRENT_DATE - INTERVAL '50 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '50 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 524, (CURRENT_DATE - INTERVAL '50 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 361, (CURRENT_DATE - INTERVAL '50 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1585, (CURRENT_DATE - INTERVAL '50 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1433, (CURRENT_DATE - INTERVAL '50 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 987, (CURRENT_DATE - INTERVAL '50 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1809, (CURRENT_DATE - INTERVAL '50 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1890, (CURRENT_DATE - INTERVAL '50 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '50 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '50 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 278, (CURRENT_DATE - INTERVAL '50 days' + TIME '18:00:00'));

--changeset steshabolk:23
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '49 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '49 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '49 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '49 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 721, (CURRENT_DATE - INTERVAL '49 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '49 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 524, (CURRENT_DATE - INTERVAL '49 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 361, (CURRENT_DATE - INTERVAL '49 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1585, (CURRENT_DATE - INTERVAL '49 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1433, (CURRENT_DATE - INTERVAL '49 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 987, (CURRENT_DATE - INTERVAL '49 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1809, (CURRENT_DATE - INTERVAL '49 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1890, (CURRENT_DATE - INTERVAL '49 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '49 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '49 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 278, (CURRENT_DATE - INTERVAL '49 days' + TIME '12:00:00'));

--changeset steshabolk:24
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '49 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '49 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '49 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '49 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 721, (CURRENT_DATE - INTERVAL '49 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '49 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 524, (CURRENT_DATE - INTERVAL '49 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 361, (CURRENT_DATE - INTERVAL '49 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1585, (CURRENT_DATE - INTERVAL '49 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1433, (CURRENT_DATE - INTERVAL '49 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 987, (CURRENT_DATE - INTERVAL '49 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1809, (CURRENT_DATE - INTERVAL '49 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1890, (CURRENT_DATE - INTERVAL '49 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '49 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '49 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 278, (CURRENT_DATE - INTERVAL '49 days' + TIME '18:00:00'));

--changeset steshabolk:25
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '48 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '48 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '48 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '48 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 721, (CURRENT_DATE - INTERVAL '48 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '48 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 524, (CURRENT_DATE - INTERVAL '48 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 361, (CURRENT_DATE - INTERVAL '48 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1585, (CURRENT_DATE - INTERVAL '48 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1433, (CURRENT_DATE - INTERVAL '48 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 987, (CURRENT_DATE - INTERVAL '48 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1809, (CURRENT_DATE - INTERVAL '48 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1890, (CURRENT_DATE - INTERVAL '48 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '48 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '48 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 278, (CURRENT_DATE - INTERVAL '48 days' + TIME '12:00:00'));

--changeset steshabolk:26
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '48 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '48 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '48 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '48 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 721, (CURRENT_DATE - INTERVAL '48 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '48 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 524, (CURRENT_DATE - INTERVAL '48 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 361, (CURRENT_DATE - INTERVAL '48 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1585, (CURRENT_DATE - INTERVAL '48 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1433, (CURRENT_DATE - INTERVAL '48 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 987, (CURRENT_DATE - INTERVAL '48 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1809, (CURRENT_DATE - INTERVAL '48 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1890, (CURRENT_DATE - INTERVAL '48 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '48 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '48 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 278, (CURRENT_DATE - INTERVAL '48 days' + TIME '18:00:00'));

--changeset steshabolk:27
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '47 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '47 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '47 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '47 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 721, (CURRENT_DATE - INTERVAL '47 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '47 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 524, (CURRENT_DATE - INTERVAL '47 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 361, (CURRENT_DATE - INTERVAL '47 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1585, (CURRENT_DATE - INTERVAL '47 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1433, (CURRENT_DATE - INTERVAL '47 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 987, (CURRENT_DATE - INTERVAL '47 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1809, (CURRENT_DATE - INTERVAL '47 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1890, (CURRENT_DATE - INTERVAL '47 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '47 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '47 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 278, (CURRENT_DATE - INTERVAL '47 days' + TIME '12:00:00'));

--changeset steshabolk:28
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '47 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '47 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '47 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '47 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 721, (CURRENT_DATE - INTERVAL '47 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '47 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 524, (CURRENT_DATE - INTERVAL '47 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 361, (CURRENT_DATE - INTERVAL '47 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1585, (CURRENT_DATE - INTERVAL '47 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1433, (CURRENT_DATE - INTERVAL '47 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 987, (CURRENT_DATE - INTERVAL '47 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1809, (CURRENT_DATE - INTERVAL '47 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1890, (CURRENT_DATE - INTERVAL '47 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '47 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '47 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 278, (CURRENT_DATE - INTERVAL '47 days' + TIME '18:00:00'));

--changeset steshabolk:29
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '46 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '46 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '46 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '46 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 721, (CURRENT_DATE - INTERVAL '46 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '46 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 524, (CURRENT_DATE - INTERVAL '46 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 361, (CURRENT_DATE - INTERVAL '46 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1585, (CURRENT_DATE - INTERVAL '46 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1433, (CURRENT_DATE - INTERVAL '46 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 987, (CURRENT_DATE - INTERVAL '46 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1809, (CURRENT_DATE - INTERVAL '46 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1890, (CURRENT_DATE - INTERVAL '46 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '46 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '46 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 278, (CURRENT_DATE - INTERVAL '46 days' + TIME '12:00:00'));

--changeset steshabolk:30
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '46 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '46 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '46 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '46 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 721, (CURRENT_DATE - INTERVAL '46 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '46 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 524, (CURRENT_DATE - INTERVAL '46 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 361, (CURRENT_DATE - INTERVAL '46 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1585, (CURRENT_DATE - INTERVAL '46 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1433, (CURRENT_DATE - INTERVAL '46 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 987, (CURRENT_DATE - INTERVAL '46 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1809, (CURRENT_DATE - INTERVAL '46 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1890, (CURRENT_DATE - INTERVAL '46 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '46 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '46 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 278, (CURRENT_DATE - INTERVAL '46 days' + TIME '18:00:00'));

--changeset steshabolk:31
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '45 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '45 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '45 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '45 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 721, (CURRENT_DATE - INTERVAL '45 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '45 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 524, (CURRENT_DATE - INTERVAL '45 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 361, (CURRENT_DATE - INTERVAL '45 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1585, (CURRENT_DATE - INTERVAL '45 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1433, (CURRENT_DATE - INTERVAL '45 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 987, (CURRENT_DATE - INTERVAL '45 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1809, (CURRENT_DATE - INTERVAL '45 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1890, (CURRENT_DATE - INTERVAL '45 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '45 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '45 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 278, (CURRENT_DATE - INTERVAL '45 days' + TIME '12:00:00'));

--changeset steshabolk:32
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '45 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '45 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 227, (CURRENT_DATE - INTERVAL '45 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '45 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 721, (CURRENT_DATE - INTERVAL '45 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '45 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 524, (CURRENT_DATE - INTERVAL '45 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 361, (CURRENT_DATE - INTERVAL '45 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1585, (CURRENT_DATE - INTERVAL '45 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1433, (CURRENT_DATE - INTERVAL '45 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 987, (CURRENT_DATE - INTERVAL '45 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1809, (CURRENT_DATE - INTERVAL '45 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1890, (CURRENT_DATE - INTERVAL '45 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '45 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1051, (CURRENT_DATE - INTERVAL '45 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 278, (CURRENT_DATE - INTERVAL '45 days' + TIME '18:00:00'));

--changeset steshabolk:33
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '44 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '44 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '44 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '44 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 704, (CURRENT_DATE - INTERVAL '44 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1770, (CURRENT_DATE - INTERVAL '44 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 545, (CURRENT_DATE - INTERVAL '44 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 388, (CURRENT_DATE - INTERVAL '44 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1610, (CURRENT_DATE - INTERVAL '44 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1457, (CURRENT_DATE - INTERVAL '44 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 976, (CURRENT_DATE - INTERVAL '44 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1801, (CURRENT_DATE - INTERVAL '44 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '44 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '44 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '44 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '44 days' + TIME '12:00:00'));

--changeset steshabolk:34
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '44 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '44 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '44 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '44 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 704, (CURRENT_DATE - INTERVAL '44 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1770, (CURRENT_DATE - INTERVAL '44 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 545, (CURRENT_DATE - INTERVAL '44 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 388, (CURRENT_DATE - INTERVAL '44 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1610, (CURRENT_DATE - INTERVAL '44 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1457, (CURRENT_DATE - INTERVAL '44 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 976, (CURRENT_DATE - INTERVAL '44 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1801, (CURRENT_DATE - INTERVAL '44 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '44 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '44 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '44 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '44 days' + TIME '18:00:00'));

--changeset steshabolk:35
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '43 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '43 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '43 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '43 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 704, (CURRENT_DATE - INTERVAL '43 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1770, (CURRENT_DATE - INTERVAL '43 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 545, (CURRENT_DATE - INTERVAL '43 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 388, (CURRENT_DATE - INTERVAL '43 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1610, (CURRENT_DATE - INTERVAL '43 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1457, (CURRENT_DATE - INTERVAL '43 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 976, (CURRENT_DATE - INTERVAL '43 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1801, (CURRENT_DATE - INTERVAL '43 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '43 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '43 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '43 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '43 days' + TIME '12:00:00'));

--changeset steshabolk:36
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '43 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '43 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '43 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '43 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 704, (CURRENT_DATE - INTERVAL '43 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1770, (CURRENT_DATE - INTERVAL '43 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 545, (CURRENT_DATE - INTERVAL '43 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 388, (CURRENT_DATE - INTERVAL '43 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1610, (CURRENT_DATE - INTERVAL '43 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1457, (CURRENT_DATE - INTERVAL '43 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 976, (CURRENT_DATE - INTERVAL '43 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1801, (CURRENT_DATE - INTERVAL '43 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '43 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '43 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '43 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '43 days' + TIME '18:00:00'));

--changeset steshabolk:37
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '42 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '42 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '42 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '42 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 704, (CURRENT_DATE - INTERVAL '42 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1770, (CURRENT_DATE - INTERVAL '42 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 545, (CURRENT_DATE - INTERVAL '42 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 388, (CURRENT_DATE - INTERVAL '42 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1610, (CURRENT_DATE - INTERVAL '42 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1457, (CURRENT_DATE - INTERVAL '42 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 976, (CURRENT_DATE - INTERVAL '42 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1801, (CURRENT_DATE - INTERVAL '42 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '42 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '42 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '42 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '42 days' + TIME '12:00:00'));

--changeset steshabolk:38
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '42 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '42 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '42 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '42 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 704, (CURRENT_DATE - INTERVAL '42 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1770, (CURRENT_DATE - INTERVAL '42 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 545, (CURRENT_DATE - INTERVAL '42 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 388, (CURRENT_DATE - INTERVAL '42 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1610, (CURRENT_DATE - INTERVAL '42 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1457, (CURRENT_DATE - INTERVAL '42 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 976, (CURRENT_DATE - INTERVAL '42 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1801, (CURRENT_DATE - INTERVAL '42 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '42 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '42 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '42 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '42 days' + TIME '18:00:00'));

--changeset steshabolk:39
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '41 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '41 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '41 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '41 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 704, (CURRENT_DATE - INTERVAL '41 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1770, (CURRENT_DATE - INTERVAL '41 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 545, (CURRENT_DATE - INTERVAL '41 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 388, (CURRENT_DATE - INTERVAL '41 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1610, (CURRENT_DATE - INTERVAL '41 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1457, (CURRENT_DATE - INTERVAL '41 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 976, (CURRENT_DATE - INTERVAL '41 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1801, (CURRENT_DATE - INTERVAL '41 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '41 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '41 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '41 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '41 days' + TIME '12:00:00'));

--changeset steshabolk:40
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '41 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '41 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '41 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '41 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 704, (CURRENT_DATE - INTERVAL '41 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1770, (CURRENT_DATE - INTERVAL '41 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 545, (CURRENT_DATE - INTERVAL '41 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 388, (CURRENT_DATE - INTERVAL '41 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1610, (CURRENT_DATE - INTERVAL '41 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1457, (CURRENT_DATE - INTERVAL '41 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 976, (CURRENT_DATE - INTERVAL '41 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1801, (CURRENT_DATE - INTERVAL '41 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '41 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '41 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '41 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '41 days' + TIME '18:00:00'));

--changeset steshabolk:41
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '40 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '40 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '40 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '40 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 704, (CURRENT_DATE - INTERVAL '40 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1770, (CURRENT_DATE - INTERVAL '40 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 545, (CURRENT_DATE - INTERVAL '40 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 388, (CURRENT_DATE - INTERVAL '40 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1610, (CURRENT_DATE - INTERVAL '40 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1457, (CURRENT_DATE - INTERVAL '40 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 976, (CURRENT_DATE - INTERVAL '40 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1801, (CURRENT_DATE - INTERVAL '40 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '40 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '40 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '40 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '40 days' + TIME '12:00:00'));

--changeset steshabolk:42
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '40 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '40 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '40 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '40 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 704, (CURRENT_DATE - INTERVAL '40 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1770, (CURRENT_DATE - INTERVAL '40 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 545, (CURRENT_DATE - INTERVAL '40 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 388, (CURRENT_DATE - INTERVAL '40 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1610, (CURRENT_DATE - INTERVAL '40 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1457, (CURRENT_DATE - INTERVAL '40 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 976, (CURRENT_DATE - INTERVAL '40 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1801, (CURRENT_DATE - INTERVAL '40 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '40 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '40 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '40 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '40 days' + TIME '18:00:00'));

--changeset steshabolk:43
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '39 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '39 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '39 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '39 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 704, (CURRENT_DATE - INTERVAL '39 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1770, (CURRENT_DATE - INTERVAL '39 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 545, (CURRENT_DATE - INTERVAL '39 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 388, (CURRENT_DATE - INTERVAL '39 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1610, (CURRENT_DATE - INTERVAL '39 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1457, (CURRENT_DATE - INTERVAL '39 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 976, (CURRENT_DATE - INTERVAL '39 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1801, (CURRENT_DATE - INTERVAL '39 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '39 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '39 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '39 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '39 days' + TIME '12:00:00'));

--changeset steshabolk:44
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '39 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '39 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '39 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '39 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 704, (CURRENT_DATE - INTERVAL '39 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1770, (CURRENT_DATE - INTERVAL '39 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 545, (CURRENT_DATE - INTERVAL '39 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 388, (CURRENT_DATE - INTERVAL '39 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1610, (CURRENT_DATE - INTERVAL '39 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1457, (CURRENT_DATE - INTERVAL '39 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 976, (CURRENT_DATE - INTERVAL '39 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1801, (CURRENT_DATE - INTERVAL '39 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '39 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '39 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '39 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '39 days' + TIME '18:00:00'));

--changeset steshabolk:45
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '38 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '38 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '38 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '38 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 704, (CURRENT_DATE - INTERVAL '38 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1770, (CURRENT_DATE - INTERVAL '38 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 545, (CURRENT_DATE - INTERVAL '38 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 388, (CURRENT_DATE - INTERVAL '38 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1610, (CURRENT_DATE - INTERVAL '38 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1457, (CURRENT_DATE - INTERVAL '38 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 976, (CURRENT_DATE - INTERVAL '38 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1801, (CURRENT_DATE - INTERVAL '38 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '38 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '38 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '38 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '38 days' + TIME '12:00:00'));

--changeset steshabolk:46
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 238, (CURRENT_DATE - INTERVAL '38 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 214, (CURRENT_DATE - INTERVAL '38 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 223, (CURRENT_DATE - INTERVAL '38 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '38 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 704, (CURRENT_DATE - INTERVAL '38 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1770, (CURRENT_DATE - INTERVAL '38 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 545, (CURRENT_DATE - INTERVAL '38 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 388, (CURRENT_DATE - INTERVAL '38 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1610, (CURRENT_DATE - INTERVAL '38 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1457, (CURRENT_DATE - INTERVAL '38 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 976, (CURRENT_DATE - INTERVAL '38 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1801, (CURRENT_DATE - INTERVAL '38 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '38 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '38 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '38 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '38 days' + TIME '18:00:00'));

--changeset steshabolk:47
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '37 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '37 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '37 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '37 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '37 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '37 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '37 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '37 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '37 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '37 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '37 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '37 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '37 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '37 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '37 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '37 days' + TIME '12:00:00'));

--changeset steshabolk:48
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '37 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '37 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '37 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '37 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '37 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '37 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '37 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '37 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '37 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '37 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '37 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '37 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '37 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '37 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '37 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '37 days' + TIME '18:00:00'));

--changeset steshabolk:49
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '36 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '36 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '36 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '36 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '36 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '36 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '36 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '36 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '36 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '36 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '36 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '36 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '36 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '36 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '36 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '36 days' + TIME '12:00:00'));

--changeset steshabolk:50
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '36 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '36 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '36 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '36 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '36 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '36 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '36 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '36 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '36 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '36 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '36 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '36 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '36 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '36 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '36 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '36 days' + TIME '18:00:00'));

--changeset steshabolk:51
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '35 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '35 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '35 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '35 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '35 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '35 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '35 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '35 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '35 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '35 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '35 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '35 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '35 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '35 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '35 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '35 days' + TIME '12:00:00'));

--changeset steshabolk:52
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '35 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '35 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '35 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 316, (CURRENT_DATE - INTERVAL '35 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '35 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '35 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '35 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '35 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '35 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '35 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '35 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '35 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '35 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '35 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '35 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '35 days' + TIME '18:00:00'));

--changeset steshabolk:53
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '34 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '34 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '34 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 307, (CURRENT_DATE - INTERVAL '34 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '34 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '34 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '34 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '34 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '34 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '34 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '34 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '34 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '34 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '34 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '34 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '34 days' + TIME '12:00:00'));

--changeset steshabolk:54
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '34 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '34 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '34 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 307, (CURRENT_DATE - INTERVAL '34 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '34 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '34 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '34 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '34 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '34 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '34 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '34 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '34 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '34 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '34 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '34 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '34 days' + TIME '18:00:00'));

--changeset steshabolk:55
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '33 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '33 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '33 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 307, (CURRENT_DATE - INTERVAL '33 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '33 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '33 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '33 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '33 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '33 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '33 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '33 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '33 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '33 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '33 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '33 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '33 days' + TIME '12:00:00'));

--changeset steshabolk:56
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '33 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '33 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '33 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 307, (CURRENT_DATE - INTERVAL '33 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '33 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '33 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '33 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '33 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '33 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '33 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '33 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '33 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '33 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '33 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '33 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '33 days' + TIME '18:00:00'));

--changeset steshabolk:57
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '32 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '32 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '32 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 307, (CURRENT_DATE - INTERVAL '32 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '32 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '32 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '32 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '32 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '32 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '32 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '32 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '32 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '32 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '32 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '32 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '32 days' + TIME '12:00:00'));

--changeset steshabolk:58
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '32 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '32 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '32 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 307, (CURRENT_DATE - INTERVAL '32 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '32 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '32 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '32 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '32 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '32 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '32 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '32 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '32 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '32 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '32 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '32 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '32 days' + TIME '18:00:00'));

--changeset steshabolk:59
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '31 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '31 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '31 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 307, (CURRENT_DATE - INTERVAL '31 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '31 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '31 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '31 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '31 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '31 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '31 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '31 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '31 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '31 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '31 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '31 days' + TIME '12:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '31 days' + TIME '12:00:00'));

--changeset steshabolk:60
INSERT INTO prices (product_id, price, updated_at)
VALUES ((SELECT id FROM products WHERE code = 2282347), 237, (CURRENT_DATE - INTERVAL '31 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83748710), 215, (CURRENT_DATE - INTERVAL '31 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 7420379), 222, (CURRENT_DATE - INTERVAL '31 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 2309872), 307, (CURRENT_DATE - INTERVAL '31 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15061503), 695, (CURRENT_DATE - INTERVAL '31 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14909291), 1630, (CURRENT_DATE - INTERVAL '31 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 13458176), 549, (CURRENT_DATE - INTERVAL '31 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12801489), 391, (CURRENT_DATE - INTERVAL '31 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 12052242), 1674, (CURRENT_DATE - INTERVAL '31 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 15185363), 1430, (CURRENT_DATE - INTERVAL '31 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 44110461), 975, (CURRENT_DATE - INTERVAL '31 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 14580842), 1799, (CURRENT_DATE - INTERVAL '31 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 24754283), 1881, (CURRENT_DATE - INTERVAL '31 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 65984481), 1680, (CURRENT_DATE - INTERVAL '31 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 83864392), 1055, (CURRENT_DATE - INTERVAL '31 days' + TIME '18:00:00')),
       ((SELECT id FROM products WHERE code = 141248305), 280, (CURRENT_DATE - INTERVAL '31 days' + TIME '18:00:00'));
