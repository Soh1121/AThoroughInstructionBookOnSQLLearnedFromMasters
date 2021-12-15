SELECT team_id, member
  FROM Teams T1
 WHERE NOT EXISTS (SELECT *
                     FROM Teams T2
		    WHERE T1.team_id = T2.team_id
		      AND status <> '待機');

SELECT team_id
  FROM Teams
 GROUP BY team_id
HAVING COUNT(*) = SUM(CASE WHEN status = '待機' THEN 1 ELSE 0 END);

SELECT team_id
  FROM Teams
 GROUP BY team_id
HAVING MAX(status) = '待機'
   AND MIN(status) = '待機';

SELECT team_id,
       CASE WHEN MAX(status) = '待機' AND MIN(status) = '待機' THEN '総員スタンバイ' ELSE '隊長！メンバーが足りません' END AS status
  FROM Teams
 GROUP BY team_id;
