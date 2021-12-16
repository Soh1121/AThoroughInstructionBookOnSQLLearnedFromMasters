SELECT center
  FROM Materials
 GROUP BY center
HAVING COUNT(material) <> COUNT(DISTINCT material);

SELECT center, CASE WHEN COUNT(material) <> COUNT(Distinct material)
                    THEN 'ダブリ有り'
		    ELSE 'ダブリ無し'
		    END AS status
  FROM Materials
 GROUP BY center;

SELECT center, material
  FROM Materials M1
 WHERE EXISTS (SELECT *
                 FROM Materials M2
		WHERE M1.center = M2.center
		  AND M1.receive_date <> M2.receive_date
		  AND M1.material = M2.material);
