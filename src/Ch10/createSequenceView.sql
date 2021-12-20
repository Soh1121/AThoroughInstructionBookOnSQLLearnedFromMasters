CREATE VIEW Sequence (seq) AS
SELECT D1.digit + (D2.digit * 10) + (D3.digit * 100)
  FROM Digits D1 CROSS JOIN Digits D2 CROSS JOIN Digits D3;

SELECT seq
  FROM Sequence
 WHERE seq BETWEEN 1 AND 100
 ORDER BY seq;
