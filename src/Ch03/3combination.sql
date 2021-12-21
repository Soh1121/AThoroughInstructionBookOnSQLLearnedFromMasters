SELECT P1.name AS name_1, P2.name AS name_2, P3.name AS name_3
  FROM Products AS P1 INNER JOIN Products AS P2 ON P1.name > P2.name
                            INNER JOIN Products AS P3 ON P2.name > P3.name;
