CREATE TABLE StudentClub
(std_id		INTEGER		NOT NULL,
 club_id	INTEGER		NOT NULL,
 club_name	VARCHAR(10)	NOT NULL,
 mai_club_flg	CHAR(1)		NOT NULL,
 PRIMARY KEY (std_id, club_id));

BEGIN TRANSACTION;

INSERT INTO StudentClub VALUES (100, 1, '野球', 'Y');
INSERT INTO StudentClub VALUES (100, 2, '吹奏楽', 'N');
INSERT INTO StudentClub VALUES (200, 2, '吹奏楽', 'N');
INSERT INTO StudentClub VALUES (200, 3, 'バドミントン', 'Y');
INSERT INTO StudentClub VALUES (200, 4, 'サッカー', 'N');
INSERT INTO StudentClub VALUES (300, 4, 'サッカー', 'N');
INSERT INTO StudentClub VALUES (400, 5, '水泳', 'N');
INSERT INTO StudentClub VALUES (500, 6, '囲碁', 'N');

COMMIT;
