SELECT S1.seat AS start_seat, '〜', S2.seat AS end_seat
  FROM Seats S1, Seats S2, Seats S3
 WHERE S2.seat = S1.seat + (3 - 1)
   AND S3.seat BETWEEN S1.seat AND S2.seat
 GROUP BY S1.seat, S2.seat
HAVING COUNT(*) = SUM(CASE WHEN S3.status = '空' THEN 1 ELSE 0 END);

SELECT S1.seat AS start_seat, '〜', S2.seat AS end_seat
  FROM Seats2 S1, Seats2 S2, Seats2 S3
 WHERE S2.seat = S1.seat + (3 - 1)
   AND S3.seat BETWEEN S1.seat AND S2.seat
 GROUP BY S1.seat, S2.seat
HAVING COUNT(*) = SUM(CASE WHEN S3.status = '空' AND S3.line_id = S1.line_id THEN 1 ELSE 0 END);
