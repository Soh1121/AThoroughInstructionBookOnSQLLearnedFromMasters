SELECT key
  FROM Greatests
 ORDER BY CASE WHEN key = 'A' THEN 2
               WHEN key = 'B' THEN 1
	       WHEN key = 'C' THEN 4
	       WHEN key = 'D' THEN 3
	  ELSE NULL END;
