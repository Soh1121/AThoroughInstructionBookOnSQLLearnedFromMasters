SELECT DISTINCT student_id
  FROM TestScores TS1
 WHERE NOT EXISTS
       (SELECT *
          FROM TestScores TS2
	 WHERE TS2.student_id = TS1.student_id
	   AND TS2.score < 50);
