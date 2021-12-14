SELECT *
  FROM Projects P1
 WHERE '◯' = ALL
       (SELECT CASE WHEN step_nbr <= 1
                     AND status = '完了' THEN '◯'
		    WHEN step_nbr > 1
		     AND status = '待機' THEN '◯'
		    ELSE '✕' END
	  FROM Projects P2
	 WHERE P1.project_id = P2.project_id);
