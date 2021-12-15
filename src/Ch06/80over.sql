SELECT class
  FROM TestResults
 GROUP BY class
HAVING COUNT(*) * 0.75 <= SUM(CASE WHEN 80 <= score THEN 1 ELSE 0 END);
