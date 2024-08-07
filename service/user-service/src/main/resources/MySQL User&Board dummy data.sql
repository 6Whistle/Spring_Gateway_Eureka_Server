DELIMITER $$
DROP PROCEDURE IF EXISTS loopInsert$$

CREATE PROCEDURE loopInsert()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE randType VARCHAR(200);
    DECLARE randCategory VARCHAR(200);
    DECLARE typeVal INT;
    DECLARE categoryVal INT;
    DECLARE categoryReqVal INT;
    DECLARE calendarVal BOOLEAN;
    DECLARE roleVal INT;
    DECLARE regVal VARCHAR(200);

    SET i = 2;
    WHILE i <= 30 DO
            IF RAND() < 0.5 THEN
                SET calendarVal = true, regVal = 'LOCAL';
            ELSE
                SET calendarVal = false, regVal = 'GOOGLE';
            END IF;
            INSERT INTO user_model(id, email, name, phone, toeic_level, registration, created_at, updated_at)
            VALUES (i, concat('email', i, '@test.com'), concat('이름', i),
                    concat('010', lpad(floor(1 + (RAND() * 99999999)), 8, '0')), FLOOR(1 + (RAND() * 9)), regVal,
                    now(), now());
            INSERT INTO calendar_model(user_id, title, is_all_day, start_time, end_time, created_at, updated_at)
            VALUES (i, concat('제목', i), calendarVal, now(), now(), now(), now());
            INSERT INTO role_model(user_id, role)
            VALUES (i, 0);
            SET i = i + 1;
        END WHILE;

    SET i = 1;
    WHILE i <= 500 DO
            SET typeVal = FLOOR(1 + (RAND() * 3));
            SET categoryVal = FLOOR(1 + (RAND() * 3));
            SET categoryReqVal = FLOOR(1 + (RAND() * 4));
            CASE typeVal
                when 1 then SET randType = 'notice';
                when 2 then SET randType = 'free';
                when 3 then SET randType = 'request';
                ELSE SET randType = 'NULL';
                END CASE;
            IF typeVal = 1 then
                case categoryVal
                    when 1 then set randCategory = '공지';
                    when 2 then set randCategory = '이벤트';
                    when 3 then set randCategory = '점검';
                    ELSE SET randType = 'NULL';
                    end case;
            ELSEIF typeVal = 2 then
                case categoryVal
                    when 1 then set randCategory = '공부법';
                    when 2 then set randCategory = '자료 공유';
                    when 3 then set randCategory = '시험 후기';
                    ELSE SET randType = 'NULL';
                    end case;
            ELSEIF typeVal = 3 then
                case categoryReqVal
                    when 1 then set randCategory = '결제 문의';
                    when 2 then set randCategory = '시스템 에러';
                    when 3 then set randCategory = '학습 콘텐츠';
                    when 4 then set randCategory = '기타';
                    ELSE SET randType = 'NULL';
                    END case;
            END if;

            INSERT INTO board_model(title, content, type, category, user_id, created_at, updated_at)
            VALUES (concat('제목', i), concat('내용', i), randType, randCategory, FLOOR(2 + (RAND() * 29)), now(), now());

            SET i = i + 1;
        END WHILE;

    SET i = 1;

    WHILE i <= 1000 DO
            INSERT INTO reply_model(content, user_id, board_id, created_at, updated_at)
            VALUES (concat('댓글', i), FLOOR(2 + (RAND() * 29)), FLOOR(1 + (RAND() * 500)), now(), now());
            SET i = i + 1;
        END WHILE;

END $$
DELIMITER $$

CALL loopInsert;