-- 集約した後にHAVING句でフィルタリング
SELECT salse_date, SUM(quantity)
  FROM SalesHistory
 GROUP BY salse_date
HAVING salse_date = '2018-10-01';

-- 集約する前にWHERE句でフィルタリング
SELECT salse_date, SUM(quantity)
  FROM SalesHistory
 WHERE salse_date = '2018-10-01'
 GROUP BY salse_date;
