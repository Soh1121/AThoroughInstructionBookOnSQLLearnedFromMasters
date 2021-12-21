CREATE TABLE Students
(student_id		INTEGER		NOT NULL,
 dpt			VARCHAR(10)	NOT NULL,
 sbmt_date		DATE		,
 PRIMARY KEY (student_id));

BEGIN TRANSACTION;

INSERT INTO Students VALUES (100, '理学部', '2018-10-10');
INSERT INTO Students VALUES (101, '理学部', '2018-09-22');
INSERT INTO Students VALUES (102, '文学部', NULL);
INSERT INTO Students VALUES (103, '文学部', '2018-09-10');
INSERT INTO Students VALUES (200, '文学部', '2018-09-22');
INSERT INTO Students VALUES (201, '工学部', NULL);
INSERT INTO Students VALUES (202, '経済学部', '2018-09-25');

COMMIT;
