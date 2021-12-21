CREATE TABLE Courses
(name		VARCHAR(10)		NOT NULL,
 course		VARCHAR(10)		,
 PRIMARY KEY (name, course));

BEGIN TRANSACTION;

INSERT INTO Courses VALUES ('赤井', 'SQL入門');
INSERT INTO Courses VALUES ('赤井', 'UNIX基礎');
INSERT INTO Courses VALUES ('鈴木', 'SQL入門');
INSERT INTO Courses VALUES ('工藤', 'SQL入門');
INSERT INTO Courses VALUES ('工藤', 'Java中級');
INSERT INTO Courses VALUES ('吉田', 'UNIX基礎');
INSERT INTO Courses VALUES ('渡辺', 'SQL入門');

COMMIT;
