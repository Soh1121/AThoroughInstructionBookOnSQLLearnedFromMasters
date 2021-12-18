SELECT COUNT(*) AS row_cnt
  FROM (SELECT *
          FROM tbl_A
	 UNION
	SELECT *
	  FROM tbl_B) TMP;

SELECT CASE WHEN COUNT(*) = 0
            THEN '等しい'
	    ELSE '異なる' END AS result
  FROM ((SELECT * FROM tbl_A
          UNION
	 SELECT * FROM tbl_B)
        EXCEPT
	(SELECT * FROM tbl_A
	 INTERSECT
	 SELECT * FROM tbl_B)) TMP;
