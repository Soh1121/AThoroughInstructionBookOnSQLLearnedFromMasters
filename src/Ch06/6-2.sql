SELECT dpt
  FROM Students
 GROUP BY dpt
HAVING COUNT(*) = SUM(CASE WHEN ('2018-09-01' <= sbmt_date AND sbmt_date < '2018-10-01') THEN 1 ELSE 0 END);
