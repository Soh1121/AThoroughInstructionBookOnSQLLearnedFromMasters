SELECT P1.name AS name_1, P2.name AS name_2
  FROM Products AS P1 INNER JOIN Products AS P2
    ON P1.name > P2.name;
