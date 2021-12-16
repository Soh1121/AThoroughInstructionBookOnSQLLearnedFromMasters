CREATE TABLE TestResults
(student_id		CHAR(3)		NOT NULL,
 class			CHAR(1)		NOT NULL,
 sex			CHAR(1)		NOT NULL,
 score			INTEGER		NOT NULL,
 PRIMARY KEY (student_id));

BEGIN TRANSACTION;

INSERT INTO TestResults VALUES ('001', 'A', '男', 100);
INSERT INTO TestResults VALUES ('002', 'A', '女', 100);
INSERT INTO TestResults VALUES ('003', 'A', '女', 49);
INSERT INTO TestResults VALUES ('004', 'A', '男', 30);
INSERT INTO TestResults VALUES ('005', 'B', '女', 100);
INSERT INTO TestResults VALUES ('006', 'B', '男', 92);
INSERT INTO TestResults VALUES ('007', 'B', '男', 80);
INSERT INTO TestResults VALUES ('008', 'B', '男', 80);
INSERT INTO TestResults VALUES ('009', 'B', '女', 10);
INSERT INTO TestResults VALUES ('010', 'C', '男', 92);
INSERT INTO TestResults VALUES ('011', 'C', '男', 80);
INSERT INTO TestResults VALUES ('012', 'C', '女', 21);
INSERT INTO TestResults VALUES ('013', 'D', '女', 100);
INSERT INTO TestResults VALUES ('014', 'D', '女', 0);
INSERT INTO TestResults VALUES ('015', 'D', '女', 0);

COMMIT;
