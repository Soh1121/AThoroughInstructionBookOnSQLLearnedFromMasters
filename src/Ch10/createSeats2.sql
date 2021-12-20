CREATE TABLE Seats2
(seat		INTEGER		NOT NULL,
 line_id	CHAR(1)		,
 status		CHAR(1)		,
 PRIMARY KEY (seat));

BEGIN TRANSACTION;

INSERT INTO Seats2 VALUES (1, 'A', '占');
INSERT INTO Seats2 VALUES (2, 'A', '占');
INSERT INTO Seats2 VALUES (3, 'A', '空');
INSERT INTO Seats2 VALUES (4, 'A', '空');
INSERT INTO Seats2 VALUES (5, 'A', '空');
INSERT INTO Seats2 VALUES (6, 'B', '占');
INSERT INTO Seats2 VALUES (7, 'B', '占');
INSERT INTO Seats2 VALUES (8, 'B', '空');
INSERT INTO Seats2 VALUES (9, 'B', '空');
INSERT INTO Seats2 VALUES (10, 'B', '空');
INSERT INTO Seats2 VALUES (11, 'C', '空');
INSERT INTO Seats2 VALUES (12, 'C', '空');
INSERT INTO Seats2 VALUES (13, 'C', '空');
INSERT INTO Seats2 VALUES (14, 'C', '占');
INSERT INTO Seats2 VALUES (15, 'C', '空');

COMMIT;
