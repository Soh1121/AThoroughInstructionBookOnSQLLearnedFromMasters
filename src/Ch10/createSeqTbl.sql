CREATE TABLE SeqTbl2
(seq		INTEGER		NOT NULL,
 PRIMARY KEY (seq));

BEGIN TRANSACTION;

INSERT INTO SeqTbl2 VALUES (1);
INSERT INTO SeqTbl2 VALUES (2);
INSERT INTO SeqTbl2 VALUES (4);
INSERT INTO SeqTbl2 VALUES (5);
INSERT INTO SeqTbl2 VALUES (6);
INSERT INTO SeqTbl2 VALUES (7);
INSERT INTO SeqTbl2 VALUES (8);
INSERT INTO SeqTbl2 VALUES (11);
INSERT INTO SeqTbl2 VALUES (12);

COMMIT;
