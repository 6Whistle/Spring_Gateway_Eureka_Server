DELIMITER $$
DROP PROCEDURE IF EXISTS loopInsert$$

CREATE PROCEDURE loopInsert()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE j INT DEFAULT 1;
    DECLARE randType VARCHAR(200);
    DECLARE randCategory VARCHAR(200);
    DECLARE registrationVal VARCHAR(200);
    DECLARE categoryVal INT;
    DECLARE categoryReqVal INT;

#     SET i = 2;
#     WHILE i <= 100
#         DO
#             IF RAND() < 0.5 THEN
#                 SET registrationVal = 'LOCAL';
#             ELSE
#                 SET registrationVal = 'GOOGLE';
#             END IF;
#             INSERT INTO user_model(id, email, name, phone, toeic_level, registration, created_at, updated_at)
#             VALUES (i, concat('test', i, '@email.com'), concat('이름', i),
#                     concat('010', lpad(floor(1 + (RAND() * 99999999)), 8, '0')), FLOOR(1 + (RAND() * 9)),
#                     registrationVal,
#                     now(), now());
#             INSERT INTO role_model(user_id, role)
#             VALUES (i, 0);
#             SET i = i + 1;
#         END WHILE;
#
#
#     while j <= 100
#         DO
#             SET categoryVal = FLOOR(1 + (RAND() * 3));
#             SET randType = 'notice';
#             case categoryVal
#                 when 1 then set randCategory = '공지';
#                 when 2 then set randCategory = '이벤트';
#                 when 3 then set randCategory = '점검';
#                 ELSE SET randCategory = 'NULL';
#                 end case;
#             INSERT INTO board_model(id , title, content, type, category, user_id, created_at, updated_at)
#             VALUES (j, concat('공지사항', j), concat('공지내용', j), randType, randCategory, 1, now(), now());
#             SET j = j + 1;
#         END WHILE;
#
#     SET j = j + 1;
#     SET i = 1;
#     WHILE i <= 500
#         DO
#             IF RAND() < 0.5 THEN
#                 SET randType = 'free';
#             ELSE
#                 SET randType = 'request';
#             END IF;
#             SET categoryVal = FLOOR(1 + (RAND() * 3));
#             SET categoryReqVal = FLOOR(1 + (RAND() * 4));
#
#             IF randType = 'free' then
#                 case categoryVal
#                     when 1 then set randCategory = '공부법';
#                     when 2 then set randCategory = '자료 공유';
#                     when 3 then set randCategory = '시험 후기';
#                     ELSE SET randCategory = 'NULL';
#                     end case;
#             ELSE
#                 case categoryReqVal
#                     when 1 then set randCategory = '결제 문의';
#                     when 2 then set randCategory = '시스템 에러';
#                     when 3 then set randCategory = '학습 콘텐츠';
#                     when 4 then set randCategory = '기타';
#                     ELSE SET randCategory = 'NULL';
#                     END case;
#             END if;
#
#             INSERT INTO board_model(id, title, content, type, category, user_id, created_at, updated_at)
#             VALUES (j, concat('제목', i), concat('내용', i), randType, randCategory, FLOOR(2 + (RAND() * 99)), now(), now());
#             SET j = j + 1;
#             SET i = i + 1;
#         END WHILE;

    SET i = 1;
    WHILE i <= 1000
        DO
            INSERT INTO reply_model(id, content, user_id, board_id, created_at, updated_at)
            VALUES (i, concat('댓글', i), FLOOR(2 + (RAND() * 99)), FLOOR(102 + (RAND() * 498)), now(), now());
            SET i = i + 1;
        END WHILE;

END $$
DELIMITER $$

CALL loopInsert;