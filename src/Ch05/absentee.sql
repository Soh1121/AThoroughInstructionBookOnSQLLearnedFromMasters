SELECT DISTINCT M1.meeting, M2.person
  FROM Meetings M1 CROSS JOIN Meetings M2
 WHERE NOT EXISTS
  (SELECT *
     FROM Meetings M3
    WHERE M1.meeting = M3.meeting
      AND M2.person = M3.person);

SELECT M1.meeting, M2.person
  FROM Meetings M1 CROSS JOIN Meetings M2
EXCEPT
SELECT meeting, person
  FROM Meetings;
