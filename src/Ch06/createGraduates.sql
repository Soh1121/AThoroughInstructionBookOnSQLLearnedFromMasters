CREATE TABLE Graduates
(name		VARCHAR(10)		NOT NULL,
 income		INTEGER			,
 PRIMARY KEY (name));

BEGIN TRANSACTION;

INSERT INTO Graduates VALUES ('サンプソン', 400000);
INSERT INTO Graduates VALUES ('マイク', 30000);
INSERT INTO Graduates VALUES ('ホワイト', 20000);
INSERT INTO Graduates VALUES ('アーノルド', 20000);
INSERT INTO Graduates VALUES ('スミス', 20000);
INSERT INTO Graduates VALUES ('ロレンス', 15000);
INSERT INTO Graduates VALUES ('ハドソン', 15000);
INSERT INTO Graduates VALUES ('ケント', 10000);
INSERT INTO Graduates VALUES ('ベッカー', 10000);
INSERT INTO Graduates VALUES ('スコット', 10000);

COMMIT;
