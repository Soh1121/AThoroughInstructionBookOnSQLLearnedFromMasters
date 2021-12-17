CREATE TABLE Personnel
(employee		VARCHAR(10)		NOT NULL,
 child_1		VARCHAR(10)		,
 child_2		VARCHAR(10)		,
 child_3		VARCHAR(10)		,
 PRIMARY KEY (employee));

BEGIN TRANSACTION;

INSERT INTO Personnel VALUES ('赤井', '一郎', '二郎', '三郎');
INSERT INTO Personnel VALUES ('工藤', '春子', '夏子', NULL);
INSERT INTO Personnel VALUES ('鈴木', '夏子', NULL, NULL);
INSERT INTO Personnel VALUES ('吉田', NULL, NULL, NULL);

COMMIT;
