CREATE TABLE Projects
(project_id		VARCHAR(5)		NOT NULL,
 step_nbr		INTEGER			NOT NULL,
 status			VARCHAR(10)		NOT NULL,
 PRIMARY KEY (project_id, step_nbr));

BEGIN TRANSACTION;

INSERT INTO Projects VALUES ('AA100', 0, '完了');
INSERT INTO Projects VALUES ('AA100', 1, '待機');
INSERT INTO Projects VALUES ('AA100', 2, '待機');
INSERT INTO Projects VALUES ('B200', 0, '待機');
INSERT INTO Projects VALUES ('B200', 1, '待機');
INSERT INTO Projects VALUES ('CS300', 0, '完了');
INSERT INTO Projects VALUES ('CS300', 1, '完了');
INSERT INTO Projects VALUES ('CS300', 2, '待機');
INSERT INTO Projects VALUES ('CS300', 3, '待機');
INSERT INTO Projects VALUES ('DY400', 0, '完了');
INSERT INTO Projects VALUES ('DY400', 1, '完了');
INSERT INTO Projects VALUES ('DY400', 2, '完了');

COMMIT;
