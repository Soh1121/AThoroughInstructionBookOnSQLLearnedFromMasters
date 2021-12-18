SELECT COUNT(*) AS row_cnt
  FROM (SELECT *
          FROM tbl_A
	 UNION
	SELECT *
	  FROM tbl_B) TMP;
