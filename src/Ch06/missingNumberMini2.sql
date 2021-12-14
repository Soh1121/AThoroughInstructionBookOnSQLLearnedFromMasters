SELECT CASE WHEN COUNT(*) = 0 OR MIN(seq) > 1
            THEN 1
	    ELSE (SELECT MIN(seq + 1)
	            FROM SeqTbl S1
		   WHERE NOT EXISTS
		          (SELECT *
			     FROM SeqTbl S2
			    WHERE S2.seq = S1.seq + 1)) END
  FROM SeqTbl;
