BEGIN TRANSACTION;

UPDATE tbl_B SET col_3 = 8 WHERE key = 'B';

COMMIT;

(SELECT * FROM tbl_A
 EXCEPT
 SELECT * FROM tbl_B)
 UNION ALL
 (SELECT * FROM tbl_B
  EXCEPT
  SELECT * FROM tbl_A);

BEGIN TRANSACTION;

UPDATE tbl_B SET col_3 = 9 WHERE key = 'B';

COMMIT;