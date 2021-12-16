SELECT class
  FROM TestResults
 GROUP BY class
HAVING SUM(CASE WHEN (50 <= score AND sex = '男') THEN 1 ELSE 0 END) >
       SUM(CASE WHEN (50 <= score AND sex = '女') THEN 1 ELSE 0 END);
