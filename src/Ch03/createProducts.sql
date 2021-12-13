CREATE TABLE Products
(name		VARCHAR(10)	NOT NULL,
 price		INTEGER		NOT NULL,
 PRIMARY KEY (name));

BEGIN TRANSACTION;
INSERT INTO Products VALUES ('りんご', 100);
INSERT INTO Products VALUES ('みかん', 50);
INSERT INTO Products VALUES ('バナナ', 80);

COMMIT;
