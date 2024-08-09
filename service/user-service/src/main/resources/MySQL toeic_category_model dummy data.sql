DELIMITER $$
DROP PROCEDURE IF EXISTS loopInsert$$
CREATE PROCEDURE loopInsert()

BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE isTake BOOLEAN;
    DECLARE takeDate DATE DEFAULT '2023-01-01';
    WHILE i <= 50
        DO
            IF RAND() < 0.5 THEN
                SET isTake = true;
            ELSE
                SET isTake = false;
            END IF;
            IF i <= 25 THEN
                INSERT INTO toeic_category_model(title, take)
                VALUES (concat(DATE_FORMAT(takeDate, '%Y'),
                               '년 상반기 TOEIC ', i, '차 기출 모의고사'), isTake);
                SET i = i + 1;
            ELSE
                INSERT INTO toeic_category_model(title, take)
                VALUES (concat(DATE_FORMAT(takeDate, '%Y'),
                               '년 하반기 TOEIC ', i, '차 기출 모의고사'), isTake);
                SET i = i + 1;
            END IF;
        END WHILE;
    SET takeDate = DATE_ADD(takeDate, INTERVAL 1 YEAR);
    SET i = 1;
    WHILE i <= 50
        DO
            IF RAND() < 0.5 THEN
                SET isTake = true;
            ELSE
                SET isTake = false;
            END IF;
            IF i <= 25 THEN
                INSERT INTO toeic_category_model(title, take)
                VALUES (concat(DATE_FORMAT(takeDate, '%Y'),
                               '년 상반기 TOEIC ', i, '차 기출 모의고사'), isTake);
                SET i = i + 1;
            ELSE
                INSERT INTO toeic_category_model(title, take)
                VALUES (concat(DATE_FORMAT(takeDate, '%Y'),
                               '년 하반기 TOEIC ', i, '차 기출 모의고사'), isTake);
                SET i = i + 1;
            END IF;
            SET i = i + 1;
        END WHILE;

END $$
DELIMITER $$
CALL loopInsert;