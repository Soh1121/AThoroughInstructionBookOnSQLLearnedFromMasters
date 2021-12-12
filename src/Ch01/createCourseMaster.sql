CREATE TABLE CourseMaster
(course_id	INTEGER		NOT NULL,
 course_name	VARCHAR(10)	NOT NULL,
 PRIMARY KEY (course_id)
);

BEGIN TRANSACTION;

INSERT INTO CourseMaster VALUES (1, '経理入門');
INSERT INTO CourseMaster VALUES (2, '財務知識');
INSERT INTO CourseMaster VALUES (3, '簿記検定開講講座');
INSERT INTO CourseMaster VALUES (4, '税理士');

COMMIT;
