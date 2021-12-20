-- 遅い
SELECT *
  FROM Class_A
 WHERE id IN (SELECT id FROM Class_B);

-- 速い
SELECT *
  FROM Class_A A
 WHERE EXISTS
       (SELECT *
          FROM Class_B B
	 WHERE A.id = B.id);

-- INを結合で代用
SELECT A.id, A.name
  FROM Class_A A INNER JOIN Class_B B ON A.id = B.id;
