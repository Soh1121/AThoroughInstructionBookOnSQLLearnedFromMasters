CREATE TABLE SupParts
(sup		CHAR(1)		NOT NULL,
 part		VARCHAR(10)	NOT NULL,
 PRIMARY KEY (sup, part));

BEGIN TRANSACTION;

INSERT INTO SupParts VALUES ('A', 'ボルト');
INSERT INTO SupParts VALUES ('A', 'ナット');
INSERT INTO SupParts VALUES ('A', 'パイプ');
INSERT INTO SupParts VALUES ('B', 'ボルト');
INSERT INTO SupParts VALUES ('B', 'パイプ');
INSERT INTO SupParts VALUES ('C', 'ボルト');
INSERT INTO SupParts VALUES ('C', 'ナット');
INSERT INTO SupParts VALUES ('C', 'パイプ');
INSERT INTO SupParts VALUES ('D', 'ボルト');
INSERT INTO SupParts VALUES ('D', 'パイプ');
INSERT INTO SupParts VALUES ('E', 'ヒューズ');
INSERT INTO SupParts VALUES ('E', 'ナット');
INSERT INTO SupParts VALUES ('E', 'パイプ');
INSERT INTO SupParts VALUES ('F', 'ヒューズ');

COMMIT;
