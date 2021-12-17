SELECT A.id AS id, A.name AS A_name
  FROM Class_A A LEFT OUTER JOIN Class_B B
    ON A.id = B.id
 WHERE B.name IS NULL;

SELECT B.id AS id, B.name AS B_name
  FROM Class_A A RIGHT OUTER JOIN Class_B B
    ON A.id = B.id
 WHERE A.name IS NULL;
