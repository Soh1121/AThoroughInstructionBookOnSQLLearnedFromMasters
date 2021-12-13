CREATE TABLE Products_NoRedundant
AS
SELECT ROW_NUMBER()
  OVER (PARTITION BY name, price
            ORDER BY name) AS row_num, name, price
  FROM Products;

DELETE FROM Products_NoRedundant
 WHERE row_num > 1;
