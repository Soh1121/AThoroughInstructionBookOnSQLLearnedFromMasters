CREATE TABLE Reservations
(reserver		VARCHAR(10)		NOT NULL,
 start_date		DATE			,
 end_date		DATE			,
 PRIMARY KEY (reserver));

BEGIN TRANSACTION;

INSERT INTO Reservations VALUES ('木村', '2018-10-26', '2018-10-27');
INSERT INTO Reservations VALUES ('荒木', '2018-10-28', '2018-10-31');
INSERT INTO Reservations VALUES ('堀', '2018-10-31', '2018-11-01');
INSERT INTO Reservations VALUES ('山本', '2018-11-03', '2018-11-04');
INSERT INTO Reservations VALUES ('内田', '2018-11-03', '2018-11-05');
INSERT INTO Reservations VALUES ('水谷', '2018-11-06', '2018-11-06');

COMMIT;
