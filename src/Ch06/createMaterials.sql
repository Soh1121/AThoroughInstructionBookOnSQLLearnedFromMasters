CREATE TABLE Materials
(center		VARCHAR(10)		NOT NULL,
 receive_date	DATE			NOT NULL,
 material	VARCHAR(10)		NOT NULL,
 PRIMARY KEY (center, receive_date));

BEGIN TRANSACTION;

INSERT INTO Materials VALUES ('東京', '2018-4-01', '錫');
INSERT INTO Materials VALUES ('東京', '2018-4-12', '亜鉛');
INSERT INTO Materials VALUES ('東京', '2018-5-17', 'アルミニウム');
INSERT INTO Materials VALUES ('東京', '2018-5-20', '亜鉛');
INSERT INTO Materials VALUES ('大阪', '2018-4-20', '銅');
INSERT INTO Materials VALUES ('大阪', '2018-4-22', 'ニッケル');
INSERT INTO Materials VALUES ('大阪', '2018-4-29', '鉛');
INSERT INTO Materials VALUES ('名古屋', '2018-3-15', 'チタン');
INSERT INTO Materials VALUES ('名古屋', '2018-4-01', '炭素鋼');
INSERT INTO Materials VALUES ('名古屋', '2018-4-24', '炭素鋼');
INSERT INTO Materials VALUES ('名古屋', '2018-5-02', 'マグネシウム');
INSERT INTO Materials VALUES ('名古屋', '2018-5-10', 'チタン');
INSERT INTO Materials VALUES ('福岡', '2018-5-10', '亜鉛');
INSERT INTO Materials VALUES ('福岡', '2018-5-28', '錫');

COMMIT;
