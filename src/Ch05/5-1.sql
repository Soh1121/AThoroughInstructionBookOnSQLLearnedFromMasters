SELECT DISTINCT key
  FROM ArrayTbl AT1
 WHERE NOT EXISTS
       (SELECT *
          FROM ArrayTbl AT2
	 WHERE AT1.key = AT2.key
	   AND COALESCE(AT2.val, 0) <> 1);

SELECT DISTINCT key
  FROM ArrayTbl A1
 WHERE NOT EXISTS
       (SELECT *
          FROM ArrayTbl A2
	 WHERE A1.key = A2.key
	   AND (A2.val <> 1 OR A2.val IS NULL));

SELECT DISTINCT key
  FROM ArrayTbl A1
 WHERE 1 = ALL
       (SELECT val
          FROM ArrayTbl A2
	 WHERE A1.key = A2.key);

SELECT key
  FROM ArrayTbl
 GROUP BY key
HAVING SUM(CASE WHEN val = 1 THEN 1 ELSE 0 END) = 10;

SELECT key
  FROM ArrayTbl
 GROUP BY key
HAVING MAX(val) = 1 AND MIN(val) = 1;
