SELECT DISTINCT emp
  FROM EmpSkills ES1
 WHERE NOT EXISTS
       (SELECT skill
          FROM Skills
	EXCEPT
	SELECT skill
	  FROM EmpSkills ES2
	 WHERE ES1.emp = ES2.emp)
   AND NOT EXISTS
       (SELECT skill
          FROM EmpSkills ES3
	 WHERE ES1.emp = ES3.emp
	EXCEPT
        SELECT skill
	  FROM Skills);

SELECT emp
  FROM EmpSkills ES1
 WHERE NOT EXISTS
       (SELECT skill
          FROM Skills
	EXCEPT
	SELECT skill
	  FROM EmpSkills ES2
	 WHERE ES1.emp = ES2.emp)
 GROUP BY emp
HAVING COUNT(*) = (SELECT COUNT(*) FROM Skills);
