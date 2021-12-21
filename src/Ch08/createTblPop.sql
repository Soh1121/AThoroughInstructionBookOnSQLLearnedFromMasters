CREATE TABLE TblAge
(age_class		INTEGER		NOT NULL,
 age_range		VARCHAR(10)	,
 PRIMARY KEY (age_class));

CREATE TABLE TblSex
(sex_cd		CHAR(1)		NOT NULL,
 sex		CHAR(1)		,
 PRIMARY KEY (sex_cd));

CREATE TABLE TblPop
(pref_name		VARCHAR(10)		NOT NULL,
 age_class		INTEGER			NOT NULL,
 sex_cd			CHAR(1)			NOT NULL,
 population		INTEGER			,
 PRIMARY KEY (pref_name, age_class, sex_cd));

BEGIN TRANSACTION;

INSERT INTO TblAge VALUES (1, '21〜30歳');
INSERT INTO TblAge VALUES (2, '31〜40歳');
INSERT INTO TblAge VALUES (3, '41〜50歳');

INSERT INTO TblSex VALUES ('m', '男');
INSERT INTO TblSex VALUES ('f', '女');

INSERT INTO TblPop VALUES ('秋田', 1, 'm', 400);
INSERT INTO TblPop VALUES ('秋田', 3, 'm', 1000);
INSERT INTO TblPop VALUES ('秋田', 1, 'f', 800);
INSERT INTO TblPop VALUES ('秋田', 3, 'f', 1000);
INSERT INTO TblPop VALUES ('青森', 1, 'm', 700);
INSERT INTO TblPop VALUES ('青森', 1, 'f', 500);
INSERT INTO TblPop VALUES ('青森', 3, 'f', 800);
INSERT INTO TblPop VALUES ('東京', 1, 'm', 900);
INSERT INTO TblPop VALUES ('東京', 1, 'f', 1500);
INSERT INTO TblPop VALUES ('東京', 3, 'f', 1200);
INSERT INTO TblPop VALUES ('千葉', 1, 'm', 900);
INSERT INTO TblPop VALUES ('千葉', 1, 'f', 1000);
INSERT INTO TblPop VALUES ('千葉', 3, 'f', 900);

COMMIT;
