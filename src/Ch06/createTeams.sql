CREATE TABLE Teams
(member		VARCHAR(10)		NOT NULL,
 team_id	INTEGER			NOT NULL,
 status		VARCHAR(5)		NOT NULL,
 PRIMARY KEY (member));

BEGIN TRANSACTION;

INSERT INTO Teams VALUES ('ジョー', 1, '待機');
INSERT INTO Teams VALUES ('ケン', 1, '出動中');
INSERT INTO Teams VALUES ('ミック', 1, '待機');
INSERT INTO Teams VALUES ('カレン', 2, '出動中');
INSERT INTO Teams VALUES ('キース', 2, '休暇');
INSERT INTO Teams VALUES ('ジャン', 3, '待機');
INSERT INTO Teams VALUES ('ハート', 3, '待機');
INSERT INTO Teams VALUES ('ディック', 3, '待機');
INSERT INTO Teams VALUES ('ベス', 4, '待機');
INSERT INTO Teams VALUES ('アレン', 5, '出動中');
INSERT INTO Teams VALUES ('ロバート', 5, '休暇');
INSERT INTO Teams VALUES ('ケーガン', 5, '待機');

COMMIT;
