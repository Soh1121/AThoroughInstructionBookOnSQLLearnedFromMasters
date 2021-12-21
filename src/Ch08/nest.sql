SELECT MASTER1.age_class AS age_class,
       MASTER2.sex_cd AS sex_cd,
       DATA.pop_tohoku AS pop_tohoku,
       DATA.pop_kanto AS pop_kanto
  FROM (SELECT age_class, sex_cd,
               SUM(CASE WHEN pref_name IN ('青森', '秋田') THEN population ELSE NULL END) AS pop_tohoku,
               SUM(CASE WHEN pref_name IN ('東京', '千葉') THEN population ELSE NULL END) AS pop_kanto
	  FROM TblPop
	 GROUP BY age_class, sex_cd) DATA
 RIGHT OUTER JOIN TblAge MASTER1
    ON MASTER1.age_class = DATA.age_class
 RIGHT OUTER JOIN TblSex MASTER2
    ON MASTER2.sex_cd = DATA.sex_cd;

SELECT MASTER.age_class AS age_class,
       MASTER.sex_cd AS sex_cd,
       DATA.pop_tohoku AS pop_tohoku,
       DATA.pop_kanto AS pop_kanto
  FROM (SELECT age_class, sex_cd
          FROM TblAge CROSS JOIN TblSex) MASTER
  LEFT OUTER JOIN (SELECT age_class, sex_cd,
                          SUM(CASE WHEN pref_name IN ('青森', '秋田') THEN population ELSE NULL END) AS pop_tohoku,
			  SUM(CASE WHEN pref_name IN ('東京', '千葉') THEN population ELSE NULL END) AS pop_kanto
		     FROM TblPop
		    GROUP BY age_class, sex_cd) DATA
    ON MASTER.age_class = DATA.age_class
   AND MASTER.sex_cd = DATA.sex_cd
 ORDER BY age_class;
