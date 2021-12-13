CREATE TABLE LoadSample
(sample_date	DATE	NOT NULL,
 load_val	INTEGER	NOT NULL,
 PRIMARY KEY (sample_date)
);

BEGIN TRANSACTION;

INSERT INTO LoadSample VALUES ('2018-02-01', 1024);
INSERT INTO LoadSample VALUES ('2018-02-02', 2366);
INSERT INTO LoadSample VALUES ('2018-02-05', 2366);
INSERT INTO LoadSample VALUES ('2018-02-07', 985);
INSERT INTO LoadSample VALUES ('2018-02-08', 780);
INSERT INTO LoadSample VALUES ('2018-02-12', 1000);

COMMIT;