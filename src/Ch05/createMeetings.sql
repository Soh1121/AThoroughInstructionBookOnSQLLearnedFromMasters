CREATE TABLE Meetings
(meeting	VARCHAR(10)	NOT NULL,
 person		VARCHAR(10)	NOT NULL);

BEGIN TRANSACTION;

INSERT INTO Meetings VALUES ('第1回', '伊藤');
INSERT INTO Meetings VALUES ('第1回', '水島');
INSERT INTO Meetings VALUES ('第1回', '伊東');
INSERT INTO Meetings VALUES ('第2回', '伊藤');
INSERT INTO Meetings VALUES ('第2回', '宮田');
INSERT INTO Meetings VALUES ('第3回', '伊東');
INSERT INTO Meetings VALUES ('第3回', '水島');
INSERT INTO Meetings VALUES ('第3回', '宮田');

COMMIT;
