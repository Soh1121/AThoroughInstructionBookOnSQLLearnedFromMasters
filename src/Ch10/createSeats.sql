CREATE TABLE Seats
(seat		INTEGER		NOT NULL,
 status		CHAR(1)		,
 PRIMARY KEY (seat));

BEGIN TRANSACTION;

INSERT INTO Seats VALUES (1, '占');
INSERT INTO Seats VALUES (2, '占');
INSERT INTO Seats VALUES (3, '空');
INSERT INTO Seats VALUES (4, '空');
INSERT INTO Seats VALUES (5, '空');
INSERT INTO Seats VALUES (6, '占');
INSERT INTO Seats VALUES (7, '空');
INSERT INTO Seats VALUES (8, '空');
INSERT INTO Seats VALUES (9, '空');
INSERT INTO Seats VALUES (10, '空');
INSERT INTO Seats VALUES (11, '空');
INSERT INTO Seats VALUES (12, '占');
INSERT INTO Seats VALUES (13, '占');
INSERT INTO Seats VALUES (14, '空');
INSERT INTO Seats VALUES (15, '空');

COMMIT;