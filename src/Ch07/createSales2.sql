CREATE TABLE Sales2
(year		INTEGER		NOT NULL,
 sale		INTEGER		NOT NULL,
 PRIMARY KEY (year));

BEGIN TRANSACTION;

INSERT INTO Sales2 VALUES(1990, 50);
INSERT INTO Sales2 VALUES(1992, 50);
INSERT INTO Sales2 VALUES(1993, 52);
INSERT INTO Sales2 VALUES(1994, 55);
INSERT INTO Sales2 VALUES(1997, 55);

COMMIT;
