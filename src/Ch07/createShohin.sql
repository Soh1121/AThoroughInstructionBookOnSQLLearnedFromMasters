CREATE TABLE Shohin
(shohin_id		CHAR(4)		NOT NULL,
 shohin_mei		VARCHAR(10)	,
 shohin_bunrui		VARCHAR(10)	,
 hanbai_tanka		INTEGER		,
 PRIMARY KEY (shohin_id));

BEGIN TRANSACTION;

INSERT INTO Shohin VALUES ('0001', 'Tシャツ', '衣服', 1000);
INSERT INTO Shohin VALUES ('0002', '穴あけパンチ', '事務用品', 500);
INSERT INTO Shohin VALUES ('0003', 'カッターシャツ', '衣服', 4000);
INSERT INTO Shohin VALUES ('0004', '包丁', 'キッチン用品', 3000);
INSERT INTO Shohin VALUES ('0005', '圧力鍋', 'キッチン用品', 6800);
INSERT INTO Shohin VALUES ('0006', 'フォーク', 'キッチン用品', 500);
INSERT INTO Shohin VALUES ('0007', 'おろしがね', 'キッチン用品', 880);
INSERT INTO Shohin VALUES ('0008', 'ボールペン', '事務用品', 100);

COMMIT;
