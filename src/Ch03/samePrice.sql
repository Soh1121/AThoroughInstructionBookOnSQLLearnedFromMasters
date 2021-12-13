SELECT DISTINCT P1.name, P2.name
  FROM Products AS P1 INNER JOIN Products AS P2
    ON P1.price = P2.price
   AND P1.name <> P2.name
 ORDER BY P1.price;

SELECT P1.name, P2.name FROM Products AS P1
 WHERE EXISTS (SELECT *
                 FROM Products P2
		WHERE P1.price = P2.price
		  AND P1.name < P2.name)
 ORDER BY P1.price;
