SELECT CASE WHEN COUNT(*) = (SELECT COUNT(*) FROM tbl_A)
             AND COUNT(*) = (SELECT COUNT(*) FROM tbl_B)
	    THEN '等しい'
	    ELSE '異なる' END AS result
  FROM (SELECT *
          FROM tbl_A
	UNION
	SELECT *
	  FROM tbl_B) TMP;
