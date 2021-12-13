CREATE TABLE ServerLoadSample
(server		CHAR(1)		NOT NULL,
 sample_date	DATE		NOT NULL,
 load_val	INTEGER		NOT NULL,
 PRIMARY KEY (server, sample_date));

BEGIN TRANSACTION;

INSERT INTO ServerLoadSample VALUES ('A', '2018-02-01', 1024);
INSERT INTO ServerLoadSample VALUES ('A', '2018-02-02', 2366);
INSERT INTO ServerLoadSample VALUES ('A', '2018-02-05', 2366);
INSERT INTO ServerLoadSample VALUES ('A', '2018-02-07', 985);
INSERT INTO ServerLoadSample VALUES ('A', '2018-02-08', 780);
INSERT INTO ServerLoadSample VALUES ('A', '2018-02-12', 1000);
INSERT INTO ServerLoadSample VALUES ('B', '2018-02-01', 54);
INSERT INTO ServerLoadSample VALUES ('B', '2018-02-02', 39008);
INSERT INTO ServerLoadSample VALUES ('B', '2018-02-03', 2900);
INSERT INTO ServerLoadSample VALUES ('B', '2018-02-04', 556);
INSERT INTO ServerLoadSample VALUES ('B', '2018-02-05', 12600);
INSERT INTO ServerLoadSample VALUES ('B', '2018-02-06', 7309);
INSERT INTO ServerLoadSample VALUES ('C', '2018-02-01', 1000);
INSERT INTO ServerLoadSample VALUES ('C', '2018-02-07', 2000);
INSERT INTO ServerLoadSample VALUES ('C', '2018-02-16', 500);

COMMIT;
