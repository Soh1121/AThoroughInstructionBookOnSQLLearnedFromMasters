CREATE TABLE TestScores
(student_id		INTEGER		NOT NULL,
 subject		CHAR(2)		NOT NULL,
 score			INTEGER		NOT NULL,
 PRIMARY KEY (student_id, subject));

BEGIN TRANSACTION;

INSERT INTO TestScores VALUES (100, '算数', 100);
INSERT INTO TestScores VALUES (100, '国語', 80);
INSERT INTO TestScores VALUES (100, '理科', 80);
INSERT INTO TestScores VALUES (200, '算数', 80);
INSERT INTO TestScores VALUES (200, '国語', 95);
INSERT INTO TestScores VALUES (300, '算数', 40);
INSERT INTO TestScores VALUES (300, '国語', 90);
INSERT INTO TestScores VALUES (300, '社会', 55);
INSERT INTO TestScores VALUES (400, '算数', 80);

COMMIT;
