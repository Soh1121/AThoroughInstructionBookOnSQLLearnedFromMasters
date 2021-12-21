CREATE TABLE Addresses
(name		VARCHAR(10)		NOT NULL,
 family_id	INTEGER			NOT NULL,
 address	VARCHAR(100)		NOT NULL,
 PRIMARY KEY (name)
);

BEGIN TRANSACTION;

INSERT INTO Addresses VALUES ('前田義明', 100, '東京都港区虎ノ門3-2-29');
INSERT INTO Addresses VALUES ('前田由美', 100, '東京都港区虎ノ門3-2-92');
INSERT INTO Addresses VALUES ('加藤茶', 200, '東京都新宿区西新宿2-8-1');
INSERT INTO Addresses VALUES ('加藤勝', 200, '東京都新宿区西新宿2-8-1');
INSERT INTO Addresses VALUES ('ホームズ', 300, 'ベーカー街 221B');
INSERT INTO Addresses VALUES ('ワトソン', 400, 'ベーカー街 221B');

COMMIT;
