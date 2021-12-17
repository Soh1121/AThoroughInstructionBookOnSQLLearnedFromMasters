SELECT COALESCE(A.id, B.id) AS id,
       A.name AS A_name,
       B.name AS B_name
  FROM Class_A A FULL OUTER JOIN Class_B B
    ON A.id = B.id;

SELECT A.id AS id, A.name, B.name
  FROM Class_A A LEFT OUTER JOIN Class_B B
    ON A.id = B.id
 UNION
SELECT B.id AS id, A.name, B.name
  FROM Class_A A RIGHT OUTER JOIN Class_B B
    ON A.id = B.id;
