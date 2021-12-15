CREATE TABLE Items
(item	VARCHAR(10)	NOT NULL,
 PRIMARY KEY (item));

CREATE TABLE ShopItems
(shop	VARCHAR(10)	NOT NULL,
 item	VARCHAR(10)	NOT NULL,
 PRIMARY KEY (shop, item));

BEGIN TRANSACTION;

INSERT INTO Items VALUES ('ビール');
INSERT INTO Items VALUES ('紙おむつ');
INSERT INTO Items VALUES ('自転車');

INSERT INTO ShopItems VALUES ('仙台', 'ビール');
INSERT INTO ShopItems VALUES ('仙台', '紙おむつ');
INSERT INTO ShopItems VALUES ('仙台', '自転車');
INSERT INTO ShopItems VALUES ('仙台', 'カーテン');
INSERT INTO ShopItems VALUES ('東京', 'ビール');
INSERT INTO ShopItems VALUES ('東京', '紙おむつ');
INSERT INTO ShopItems VALUES ('東京', '自転車');
INSERT INTO ShopItems VALUES ('大阪', 'テレビ');
INSERT INTO ShopItems VALUES ('大阪', '紙おむつ');
INSERT INTO ShopItems VALUES ('大阪', '自転車');

COMMIT;
