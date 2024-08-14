insert into user_model (id,email, password, profile, name, phone, toeic_level, registration, created_at, updated_at) values (1,'eyele1@t.co', '$2a$04$GRrg/R0OhJ6FKm.klN0vDulLU59qZ5Dp6otnjrpqMFfA13qOQ2s1.', 'http://dummyimage.com/139x100.png/dddddd/000000', 'Elinore Yele', '3211114310', 2, 'LOCAL', now(), now());

INSERT INTO toeic_category_model (id,  title,take, sound, test_type, created_at, updated_at)
VALUES (1,'',0,'https://kr.object.ncloudstorage.com/toeicdoit/%EC%9D%8C%EC%9B%90%ED%8C%8C%EC%9D%BC/%EB%AA%A8%EC%9D%98%EA%B3%A0%EC%82%AC.mp3','exam', NOW(), NOW());
INSERT INTO toeic_category_model (id,  title,take, sound, test_type, created_at, updated_at)
VALUES (2,'',0,'https://kr.object.ncloudstorage.com/toeicdoit/%EC%9D%8C%EC%9B%90%ED%8C%8C%EC%9D%BC/%EB%A0%88%EB%B2%A8%ED%85%8C%EC%8A%A4%ED%8A%B8.mp3','test', NOW(), NOW());
INSERT INTO toeic_category_model (id,  title,take, sound, test_type, created_at, updated_at)
VALUES (3,'',0,'','level', NOW(), NOW());
INSERT INTO toeic_category_model (id,  title,take, sound, test_type, created_at, updated_at)
VALUES (4,'',0,'','part', NOW(), NOW());
INSERT INTO toeic_category_model (id,  title,take, sound, test_type, created_at, updated_at)
VALUES (5,'',0,'','part', NOW(), NOW());
INSERT INTO toeic_category_model (id,  title,take, sound, test_type, created_at, updated_at)
VALUES (6,'',0,'','part', NOW(), NOW());
INSERT INTO toeic_category_model (id,  title,take, sound, test_type, created_at, updated_at)
VALUES (7,'',0,'','part', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (1,1, '', 'C', '1',
        '미국식 발음||(A) He’s watering the lawn.||(B) He’s walking on a path.||(C) He’s mowing the grass.||(D) He’s repairing a machine.',
        9, 'https://kr.object.ncloudstorage.com/toeicdoit/part1-1.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (2,1, '', 'D', '1',
        '호주식 발음||(A) She’s opening some packages.||(B) She’s assembling a cabinet.||(C) She’s holding a metal rack.||(D) She’s putting some boxes on a shelf.',
        9, 'https://kr.object.ncloudstorage.com/toeicdoit/part1-2.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (3,1, '', 'C', '1',
        '캐나다식 발음||(A) One of the women is looking through the window.||(B) One of the women is reviewing some documents.||(C) One of the men is giving a presentation.||(D) One of the men is typing on a laptop.',
        3, 'https://kr.object.ncloudstorage.com/toeicdoit/part1-3.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (4,1, '', 'A', '1',
        '영국식 발음||(A) A cord has been plugged into an outlet.||(B) The woman is placing some objects in a cart.||(C) The woman is grasping the handles of a bag.||(D) Pieces of luggage are being cleared off of a bench.',
        1, 'https://kr.object.ncloudstorage.com/toeicdoit/part1-4.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (5,1, '', 'B', '1',
        '호주식 발음||(A) A clerk is hanging a sign above some merchandise.||(B) Some customers are browsing at an outdoor market.||(C) Stalls have been set up near a city street.||(D) A shopper is buying a book from a vendor.',
        8, 'https://kr.object.ncloudstorage.com/toeicdoit/part1-5.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (6,1, '', 'D', '1',
        '미국식 발음||(A) A construction crew is spreading out gravel.||(B) Heavy machinery is parked on the pavement.||(C) A tire on the vehicle is being replaced.||(D) A dump truck is being loaded with dirt.',
        9, 'https://kr.object.ncloudstorage.com/toeicdoit/part1-6.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (7,1,'Mark your answer on your answer sheet.', 'C', '2',
        '캐나다식 발음 → 영국식 발음||Who was named Employee of the Month?||(A) I edited the employee manual.||(B) At Harvey’s company.||(C) Angie received the award.',
        8, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (8,1,'Mark your answer on your answer sheet.', 'C', '2',
        '호주식 발음 → 미국식 발음||When would you like to go to the movies?||(A) The film was very long.||(B) I liked the Grande Cinema.||(C) Let’s leave around eight.',
        4, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (9,1, 'Mark your answer on your answer sheet.', 'A', '2',
        '영국식 발음 → 캐나다식 발음||Are the front doors of the store locked?||(A) Yes, I checked them.||(B) It’s a popular shop.||(C) Behind the building.',
        1, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (10,1, 'Mark your answer on your answer sheet.', 'C', '2',
        '호주식 발음 → 미국식 발음||Could you pick me up around 6 o’clock?||(A) The last time we met.||(B) I parked down the street.||(C) That shouldn’t be a problem.',
        8, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (11,1, 'Mark your answer on your answer sheet.', 'C', '2',
        '캐나다식 발음 → 영국식 발음||Where is the human resources seminar being held?||(A) On hiring strategies.||(B) It will begin on Saturday.||(C) At the Lindstrom Convention Center.',
        1, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (12,1, 'Mark your answer on your answer sheet.', 'B', '2',
        '호주식 발음 → 영국식 발음||Why isn’t Patrick at the reception desk?||(A) We should replace our office furniture.||(B) He’s running some errands.||(C) The receptionist was very friendly.',
        6, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (13,1, 'Mark your answer on your answer sheet.', 'B', '2',
        '미국식 발음 → 호주식 발음||Should we try to visit Paris during our vacation?||(A) Visiting hours end at 7 P.M.||(B) I’ve always wanted to go there.||(C) My father went there on a business trip.',
        5, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (14,1, 'Mark your answer on your answer sheet', 'A', '2',
        '영국식 발음 → 캐나다식 발음||When was the warehouse last inspected?||(A) Sometime in March.||(B) A federal inspector.||(C) The one on Jefferson Street.',
        7, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (15,1, 'Mark your answer on your answer sheet.', 'C', '2',
        '미국식 발음 → 영국식 발음||Who are you going with to the beach?||(A) Yes, for a few hours.||(B) At a nearby resort.||(C) Actually, I can’t go.',
        6, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (16,1, 'Mark your answer on your answer sheet.', 'A', '2',
        '캐나다식 발음 → 미국식 발음||How was the yoga class you took at the fitness center?||(A) The session went really well.||(B) By signing up in person.||(C) There’s a gym across the street.',
        8, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (17,1 ,'Mark your answer on your answer sheet.', 'C', '2',
        '호주식 발음 → 영국식 발음||Why do we have to attend another workshop?||(A) From Monday to Wednesday.||(B) Because I bought some extra pens.||(C) To learn a new accounting system.',
        5, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (18,1, 'Mark your answer on your answer sheet.', 'A', '2',
        '캐나다식 발음 → 미국식 발음||How many computers were ordered for the department?||(A) You can check the invoice.||(B) On personal laptops only.||(C) He hasn’t delivered any yet.',
        9, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (19,1, 'Mark your answer on your answer sheet.', 'B', '2',
        '미국식 발음 → 호주식 발음||What improvements have you made to your house?||(A) We won’t move in until this summer.||(B) The living room has been newly decorated.||(C) It’s much better this way.',
        9, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (20,1, 'Mark your answer on your answer sheet.', 'C', '2',
        '영국식 발음 → 캐나다식 발음||You’ll have to take these documents to Mr. Harper.||(A) Some more paperwork.||(B) Take your time on the assignment.||(C) I believe he left for the day.',
        6, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (21,1, 'Mark your answer on your answer sheet.', 'C', '2',
        '호주식 발음 → 미국식 발음||This manuscript needs to be finalized before 4 P.M.||(A) Let’s go before the reading starts.||(B) A novel that I wrote.||(C) Maybe Louis can work on it.',
        1, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (22,1, 'Mark your answer on your answer sheet.', 'B', '2',
        '영국식 발음 → 캐나다식 발음||Why is the downtown library currently closed?||(A) I think it’s close to here.||(B) They are doing some renovations.||(C) The book was interesting.',
        2, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (23,1, 'Mark your answer on your answer sheet.', 'C', '2',
        '미국식 발음 → 호주식 발음||Did Meredith send you the revised budget proposal?||(A) What do you propose?||(B) If you talk to the financial director.||(C) I just looked over it.',
        8, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (24,1, 'Mark your answer on your answer sheet.', 'C', '2',
        '캐나다식 발음 → 영국식 발음||We’re still supposed to organize the product launch, aren’t we?||(A) Lunch menus are available online.||(B) Consumers seemed pleased with it.||(C) The supervisor wants us to.',
        6, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (25,1, 'Mark your answer on your answer sheet.', 'A', '2',
        '호주식 발음 → 미국식 발음||Isn t the clinics waiting room going to be repainted soon?||(A) It would make the space more attractive.||(B) A bid from a construction company.||(C) She didn’t look at the color chart.',
        3, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (26,1, 'Mark your answer on your answer sheet.', 'B', '2',
        '영국식 발음 → 캐나다식 발음||The art gallery is featuring an excellent exhibition right now.||(A) No, I’ll call the gallery curator.||(B) I’m planning to see it on Sunday.||(C) The drawing course is open to the public.',
        4, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (27,1, 'Mark your answer on your answer sheet.', 'B', '2',
        '미국식 발음 → 호주식 발음||Wasn t John asked to lead the orientation for the interns?||(A) Yes,
        I read the instructions.||(B) Isnt that usually Maria’s job?||(C) A few internal documents.', 1, '',
        NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (28,1, 'Mark your answer on your answer sheet.', 'C', '2',
        '미국식 발음 → 캐나다식 발음||Some of our corporate investors want to discuss the possible merger.||(A) At the press conference last Monday.||(B) We’ve invested a lot of money in that building.||(C) OK, my assistant will schedule a meeting.',
        2, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (29,1, 'Mark your answer on your answer sheet.', 'A', '2',
        '영국식 발음 → 호주식 발음||Would you like me to find out how much property insurance costs?||(A) Yes, get quotes from multiple providers.||(B) To protect their business assets.||(C) It was properly filed.',
        6, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (30,1, 'Mark your answer on your answer sheet.', 'A', '2',
        '미국식 발음 → 호주식 발음||Does Kate need a deadline extension, or has she finished her project?||(A) I think she could use more time.||(B) No, the research wasn’t very extensive.||(C) Here is my project outline.',
        4, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (31,1, 'Mark your answer on your answer sheet.', 'B', '2',
        '캐나다식 발음 → 영국식 발음||The CEO’s flight is due to arrive in New York an hour later than scheduled.||(A) The executives were very impressed.||(B) What caused the delay?||(C) I’d rather eat on the plane.',
        2, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (32,1, 'What problem does the woman mention?', 'A', '3',
        '영국식 발음 → 호주식 발음||W: Could you take me to the Littleton Mall today? I accidentally bought the wrong size jeans when I went shopping there last week. I’d like to exchange them for a smaller pair. M: Sure, but I have some things to do this morning. I’m going',
        3, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (33,1, 'Why does the man need to visit the bank?', 'D', '3',
        '영국식 발음 → 호주식 발음||W: Could you take me to the Littleton Mall today? I accidentally bought the wrong size jeans when I went shopping there last week. I’d like to exchange them for a smaller pair. M: Sure, but I have some things to do this morning. I’m going',
        7, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (34,1, 'What does the man offer to do this afternoon?', 'C', '3',
        '영국식 발음 → 호주식 발음||W: Could you take me to the Littleton Mall today? I accidentally bought the wrong size jeans when I went shopping there last week. I’d like to exchange them for a smaller pair. M: Sure, but I have some things to do this morning. I’m going',
        8, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (35,1, 'What is the conversation mainly about?', 'D', '3',
        '미국식 발음 → 캐나다식 발음||W:  Paulo, we’re running low on staples, pens, and pencils here at the office. I’d like you to restock them sometime before the end of the week. M:  No problem, Ms. Feingold. I can take care of that tomorrow. Are there any other items yo',
        3, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (36,1, 'What does the man ask the woman about?', 'C', '3',
        '미국식 발음 → 캐나다식 발음||W:  Paulo, we’re running low on staples, pens, and pencils here at the office. I’d like you to restock them sometime before the end of the week. M:  No problem, Ms. Feingold. I can take care of that tomorrow. Are there any other items yo',
        4, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (37,1, 'What does the woman suggest?', 'A', '3',
        '미국식 발음 → 캐나다식 발음||W:  Paulo, we’re running low on staples, pens, and pencils here at the office. I’d like you to restock them sometime before the end of the week. M:  No problem, Ms. Feingold. I can take care of that tomorrow. Are there any other items yo',
        4, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (38,1, 'According to the man what will happen next month?', 'B', '3',
        '호주식 발음 → 미국식 발음 → 영국식 발음||M:    Did you two know that Eun Hee Kim will be retiring next month? I just heard the news. W1: Yes, that came as a shock. She just signed a new five-year contract. W2: Considering how much she seems to like her job, I’m surprise',
        7, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (39,1, 'What do the women point out?', 'C', '3',
        '호주식 발음 → 미국식 발음 → 영국식 발음||M:    Did you two know that Eun Hee Kim will be retiring next month? I just heard the news. W1: Yes, that came as a shock. She just signed a new five-year contract. W2: Considering how much she seems to like her job, I’m surprise',
        8, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (40,1, 'What will Claire most likely do tomorrow?', 'C', '3',
        '호주식 발음 → 미국식 발음 → 영국식 발음||M: Did you two know that Eun Hee Kim will be retiring next month? I just heard the news. W1: Yes, that came as a shock. She just signed a new five-year contract. W2: Considering how much she seems to like her job, I’m surprised s',
        1, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (41,1, 'Who most likely is the woman?', 'A', '3',
        '캐나다식 발음 → 영국식 발음||M: Hello. I’m interested in buying a kitchen stove, but I’d like to know more about your store’s delivery and installation services. Are they included in the price of the product? W: As for delivery, you don’t have to worry about that. W',
        6, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (42,1, 'What does the woman imply when she says “you don’t have to worry about that”?', 'B', '3',
        '캐나다식 발음 → 영국식 발음||M: Hello. I’m interested in buying a kitchen stove, but I’d like to know more about your store’s delivery and installation services. Are they included in the price of the product? W: As for delivery, you don’t have to worry about that. W',
        2, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (43,1, 'What does the woman say about the installation fee?', 'C', '3',
        '캐나다식 발음 → 영국식 발음||M: Hello. I’m interested in buying a kitchen stove, but I’d like to know more about your store’s delivery and installation services. Are they included in the price of the product? W: As for delivery, you don’t have to worry about that. W',
        2, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (44,1, 'What are the speakers planning to do on Saturday night?', 'A', '3',
        '미국식 발음 → 호주식 발음||W: Robert, when should I pick you up on Saturday night? M: The concert we’re going to begins at 8 P.M. Why don’t you stop by about 45 minutes earlier? W: But that won’t give us enough time to eat something before the show. M: Didn’t I tel',
        2, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (45,1, 'Why will the man be unavailable until 7 P.M.?', 'B', '3',
        '미국식 발음 → 호주식 발음||W: Robert, when should I pick you up on Saturday night? M: The concert we’re going to begins at 8 P.M. Why don’t you stop by about 45 minutes earlier? W: But that won’t give us enough time to eat something before the show. M: Didn’t I tel',
        8, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (46,1, 'What did the man do last week?', 'D', '3',
        '미국식 발음 → 호주식 발음||W: Robert, when should I pick you up on Saturday night? M: The concert we’re going to begins at 8 P.M. Why don’t you stop by about 45 minutes earlier? W: But that won’t give us enough time to eat something before the show. M: Didn’t I tel',
        2, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (47,1, 'What is the man working on?', 'D', '3',
        '캐나다식 발음 → 영국식 발음||M: Danielle, are you busy right now? I’m putting together some invitations for next month’s charity banquet. I’m supposed to send 200 out by today, and I’ve only completed 50. Would you be willing to help me out? W:  The project I’m work',
        9, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (48,1, 'Why does the woman say “The project I’m working on isn’t very urgent”?', 'D', '3',
        '캐나다식 발음 → 영국식 발음||M: Danielle, are you busy right now? I’m putting together some invitations for next month’s charity banquet. I’m supposed to send 200 out by today, and I’ve only completed 50. Would you be willing to help me out? W:  The project I’m work',
        6, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (49,1, 'What does the woman say she will do?', 'D', '3',
        '캐나다식 발음 → 영국식 발음||M: Danielle, are you busy right now? I’m putting together some invitations for next month’s charity banquet. I’m supposed to send 200 out by today, and I’ve only completed 50. Would you be willing to help me out? W:  The project I’m work',
        7, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (50,1, 'Where most likely are the speakers?', 'D', '3',
        '영국식 발음 → 호주식 발음||W:  Hi. I’d like to sign up for a membership. I live just down the block from your health club, so this would be a convenient place for me to exercise. M: No problem. I can have you signed up within the next 15 minutes. Afterwards, I’ll s',
        2, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (51,1, 'What does the man offer to do for the woman?', 'B', '3',
        '영국식 발음 → 호주식 발음||W:  Hi. I’d like to sign up for a membership. I live just down the block from your health club, so this would be a convenient place for me to exercise. M: No problem. I can have you signed up within the next 15 minutes. Afterwards, I’ll s',
        9, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (52,1, 'What is the woman interested in doing?', 'A', '3',
        '영국식 발음 → 호주식 발음||W:  Hi. I’d like to sign up for a membership. I live just down the block from your health club, so this would be a convenient place for me to exercise. M: No problem. I can have you signed up within the next 15 minutes. Afterwards, I’ll s',
        4, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (53,1, 'What is the purpose of the woman’s call?', 'C', '3',
        '미국식 발음 → 캐나다식 발음||W:  Hello. My name is Petra Reynolds. I’m calling to check on the delivery status of a package. My order number is 10987. M: OK . . . The most recent shipping update is from yesterday. At that point, the package was still in transit. It’',
        9, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (54,1, 'Why is the woman concerned?', 'B', '3',
        '미국식 발음 → 캐나다식 발음||W:  Hello. My name is Petra Reynolds. I’m calling to check on the delivery status of a package. My order number is 10987. M: OK . . . The most recent shipping update is from yesterday. At that point, the package was still in transit. It’',
        3, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (55,1, 'What does the man recommend?', 'A', '3',
        '미국식 발음 → 캐나다식 발음||W:  Hello. My name is Petra Reynolds. I’m calling to check on the delivery status of a package. My order number is 10987. M: OK . . . The most recent shipping update is from yesterday. At that point, the package was still in transit. It’',
        6, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (56,1, 'What did Steve do in the morning?', 'C', '3',
        '캐나다식 발음 → 영국식 발음 → 호주식 발음||M1: Sorry I couldn’t come sooner. I spent the whole morning putting up a small exhibit near the museum’s entrance. W: That’s OK, Steve. Um, a shipment of paintings from a gallery in Rome arrived yesterday. I was supposed to move',
        9, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (57,1, 'What does the woman need help with?', 'A', '3',
        '캐나다식 발음 → 영국식 발음 → 호주식 발음||M1: Sorry I couldn’t come sooner. I spent the whole morning putting up a small exhibit near the museum’s entrance. W: That’s OK, Steve. Um, a shipment of paintings from a gallery in Rome arrived yesterday. I was supposed to move',
        5, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (58,1, 'What does the woman suggest?', 'B', '3',
        '캐나다식 발음 → 영국식 발음 → 호주식 발음||M1: Sorry I couldn’t come sooner. I spent the whole morning putting up a small exhibit near the museum’s entrance. W: That’s OK, Steve. Um, a shipment of paintings from a gallery in Rome arrived yesterday. I was supposed to move',
        2, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (59,1, 'Where do the speakers most likely work?', 'C', '3',
        '캐나다식 발음 → 미국식 발음||M:  A few other hospital staff members and I have decided to attend a conference on Monday, September 3. Would you like to go as well? W: Possibly. I already have a couple of appointments scheduled that day,but I might be able to join yo',
        9, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (60,1, 'What does the woman ask the man about?', 'A', '3',
        '캐나다식 발음 → 미국식 발음||M:  A few other hospital staff members and I have decided to attend a conference on Monday, September 3. Would you like to go as well? W: Possibly. I already have a couple of appointments scheduled that day,but I might be able to join yo',
        5, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (61,1, 'What will most likely happen at the conference?', 'B', '3',
        '캐나다식 발음 → 미국식 발음||M:  A few other hospital staff members and I have decided to attend a conference on Monday, September 3. Would you like to go as well? W: Possibly. I already have a couple of appointments scheduled that day,but I might be able to join yo',
        6, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (62,1, 'What problem does the woman describe?', 'A', '3',
        '영국식 발음 → 호주식 발음||W: Tim, we’ve got a problem. Our brochure for Sunday’s trade show contains an error. M:  Really? What are you referring to? W: Well, it states that our company will introduce a new accounting program in June. But if you remember, the mark',
        8, 'https://kr.object.ncloudstorage.com/toeicdoit/part3-62-64.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (63,1, 'What will the company do in September?', 'B', '3',
        '영국식 발음 → 호주식 발음||W: Tim, we’ve got a problem. Our brochure for Sunday’s trade show contains an error. M:  Really? What are you referring to? W: Well, it states that our company will introduce a new accounting program in June. But if you remember, the mark',
        3, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (64,1, 'Look at the graphic. Where is Tricore Services located?', 'B', '3',
        '영국식 발음 → 호주식 발음||W: Tim, we’ve got a problem. Our brochure for Sunday’s trade show contains an error. M:  Really? What are you referring to? W: Well, it states that our company will introduce a new accounting program in June. But if you remember, the mark',
        2, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (65,1, 'Where does the man most likely work?', 'B', '3',
        '캐나다식 발음 → 미국식 발음||M: Hi. My name is Mark Reed, and I’m calling from Watterson Legal Services. It’s about some documents that I sent using your courier company. The package was supposed to arrive today, but my client hasn’t received it yet. W:  I’ll try to',
        3, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (66,1, 'Look at the graphic. Which service did the man most likely use?', 'B', '3',
        '캐나다식 발음 → 미국식 발음||M: Hi. My name is Mark Reed, and I’m calling from Watterson Legal Services. It’s about some documents that I sent using your courier company. The package was supposed to arrive today, but my client hasn’t received it yet. W:  I’ll try to',
        3, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (67,1, 'When was the package sent?', 'C', '3',
        '캐나다식 발음 → 미국식 발음||M: Hi. My name is Mark Reed, and I’m calling from Watterson Legal Services. It’s about some documents that I sent using your courier company. The package was supposed to arrive today, but my client hasn’t received it yet. W:  I’ll try to',
        7, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (68,1, 'Why did the woman travel to Vancouver?', 'D', '3',
        '호주식 발음 → 영국식 발음||M: Hi, Jane. You look stressed out. What’s going on? W: Well, it’s about my trip to Vancouver last week . . . M:  Oh, I heard about that. You were viewing the office building our company is considering buying, right? W: Yeah. When I got b',
        5, 'https://kr.object.ncloudstorage.com/toeicdoit/part3-68-70.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (69,1, 'Look at the graphic. Which amount is the woman concerned about?', 'C', '3',
        '호주식 발음 → 영국식 발음||M: Hi, Jane. You look stressed out. What’s going on? W: Well, it’s about my trip to Vancouver last week . . . M:  Oh, I heard about that. You were viewing the office building our company is considering buying, right? W: Yeah. When I got b',
        1, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (70,1, 'What does the man suggest?', 'D', '3',
        '호주식 발음 → 영국식 발음||M: Hi, Jane. You look stressed out. What’s going on? W: Well, it’s about my trip to Vancouver last week . . . M:  Oh, I heard about that. You were viewing the office building our company is considering buying, right? W: Yeah. When I got b',
        3, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (71,1, 'What type of business is the listener calling?', 'A', '4',
        '미국식 발음||You have reached Digital Express, Arlington’s largest computer retailer. We are currently closed for the weekend but will reopen on Monday at 9 A.M. We would also like to remind our clients that Digital Express will be undergoing a major change th',
        7, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (72,1, 'According to the speaker what will happen in July?', 'C', '4',
        '미국식 발음||You have reached Digital Express, Arlington’s largest computer retailer. We are currently closed for the weekend but will reopen on Monday at 9 A.M. We would also like to remind our clients that Digital Express will be undergoing a major change th',
        8, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (73,1, 'What should listeners do if they want additional information?', 'A', '4',
        '미국식 발음||You have reached Digital Express, Arlington’s largest computer retailer. We are currently closed for the weekend but will reopen on Monday at 9 A.M. We would also like to remind our clients that Digital Express will be undergoing a major change th',
        5, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (74,1, 'What will arrive next week?', 'D', '4',
        '호주식 발음||I know many of you often have to use your personal cell phones for business-related calls, so I have decided to purchase work phones for everyone. I was hoping to have them by today, but they aren’t going to get here until next week. Just remember',
        9, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (75,1, 'What are listeners instructed to do?', 'D', '4',
        '호주식 발음||I know many of you often have to use your personal cell phones for business-related calls, so I have decided to purchase work phones for everyone. I was hoping to have them by today, but they aren’t going to get here until next week. Just remember',
        5, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (76,1, 'What will the speaker most likely do this afternoon?', 'B', '4',
        '호주식 발음||I know many of you often have to use your personal cell phones for business-related calls, so I have decided to purchase work phones for everyone. I was hoping to have them by today, but they aren’t going to get here until next week. Just remember',
        8, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (77,1, 'Why does Ms. Fox want to participate in the event?', 'A', '4',
        '캐나다식 발음||Hi, Karen. This is Min calling. Our non-profit organization is going to set up a booth at a local job fair on Thursday. Ms. Fox, the public relations director, signed us up for the event. She thinks it will be a good opportunity to reach out to y',
        7, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (78,1, 'Why does the speaker say “I wish we had done this sooner”?', 'D', '4',
        '캐나다식 발음||Hi, Karen. This is Min calling. Our non-profit organization is going to set up a booth at a local job fair on Thursday. Ms. Fox, the public relations director, signed us up for the event. She thinks it will be a good opportunity to reach out to y',
        5, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (79,1, 'Why does the speaker want the listener to help?', 'D', '4',
        '캐나다식 발음||Hi, Karen. This is Min calling. Our non-profit organization is going to set up a booth at a local job fair on Thursday. Ms. Fox, the public relations director, signed us up for the event. She thinks it will be a good opportunity to reach out to y',
        5, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (80,1, 'What is going to be built?', 'B', '4',
        '영국식 발음||In other news, legislators have finally approved construction of the Southview Public Hospital in Boulder, Colorado. The purpose of the project is to address a growing need for additional health services in the state. Currently, there are only six',
        3, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (81,1, 'What is the purpose of the project?', 'C', '4',
        '영국식 발음||In other news, legislators have finally approved construction of the Southview Public Hospital in Boulder, Colorado. The purpose of the project is to address a growing need for additional health services in the state. Currently, there are only six',
        8, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (82,1, 'What problem does the speaker mention?', 'D', '4',
        '영국식 발음||In other news, legislators have finally approved construction of the Southview Public Hospital in Boulder, Colorado. The purpose of the project is to address a growing need for additional health services in the state. Currently, there are only six',
        8, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (83,1, 'What does the speaker say about BLO Group?', 'C', '4',
        '미국식 발음||If you need help managing your finances, contact BLO Group today! At BLO Group, we provide expert advice that you won’t find anywhere else. Since our establishment 100 years ago, we have come to be one of the most trusted investment companies in t',
        7, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (84,1, 'What does BLO Group specialize in?', 'B', '4',
        '미국식 발음||If you need help managing your finances, contact BLO Group today! At BLO Group, we provide expert advice that you won’t find anywhere else. Since our establishment 100 years ago, we have come to be one of the most trusted investment companies in t',
        1, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (85,1, 'What does BLO Group guarantee to provide customers with?', 'B', '4',
        '미국식 발음||If you need help managing your finances, contact BLO Group today! At BLO Group, we provide expert advice that you won’t find anywhere else. Since our establishment 100 years ago, we have come to be one of the most trusted investment companies in t',
        2, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (86,1, 'What is the purpose of the talk?', 'A', '4',
        '호주식 발음||Thank you all for coming to our annual shareholders’ meeting. We have a lot to accomplish today, so let me provide a brief outline of our agenda before we begin. We’ll start the meeting by reviewing our sales levels from the previous 12 months. To',
        2, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (87,1, 'According to the speaker what will Mr. Palmer do?', 'D', '4',
        '호주식 발음||Thank you all for coming to our annual shareholders’ meeting. We have a lot to accomplish today, so let me provide a brief outline of our agenda before we begin. We’ll start the meeting by reviewing our sales levels from the previous 12 months. To',
        4, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (88,1, 'Why does the speaker say “The company’s future depends on the best candidates being selected”?', 'D',
        '4',
        '호주식 발음||Thank you all for coming to our annual shareholders’ meeting. We have a lot to accomplish today, so let me provide a brief outline of our agenda before we begin. We’ll start the meeting by reviewing our sales levels from the previous 12 months. To',
        3, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (89,1, 'What did the speaker recently receive?', 'C', '4',
        '캐나다식 발음||Hello, Patricia. It’s Connor. I just received an e-mail notification from the government’s Residential Safety Agency. There’s a new regulation for residential properties in Dublin. It requires all rental units to have at leastone fire extinguishe',
        6, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (90,1, 'What does the speaker mean when he says “The apartment on Second Street is obviously a concern”?', 'D',
        '4',
        '캐나다식 발음||Hello, Patricia. It’s Connor. I just received an e-mail notification from the government’s Residential Safety Agency. There’s a new regulation for residential properties in Dublin. It requires all rental units to have at leastone fire extinguishe',
        4, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (91,1, 'Why is the speaker unable to perform a task himself?', 'C', '4',
        '캐나다식 발음||Hello, Patricia. It’s Connor. I just received an e-mail notification from the government’s Residential Safety Agency. There’s a new regulation for residential properties in Dublin. It requires all rental units to have at leastone fire extinguishe',
        6, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (92,1, 'What did Green World recently do?', 'D', '4',
        '영국식 발음||It’s great to see you all here at this meeting of the Urban Farming Association. As some of you may already know, the environmental organization Green World generously granted our group funding this month in the amount of $10,000. This money was g',
        1, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (93,1, 'What does the speaker say about Green World’s mission?', 'D', '4',
        '영국식 발음||It’s great to see you all here at this meeting of the Urban Farming Association. As some of you may already know, the environmental organization Green World generously granted our group funding this month in the amount of $10,000. This money was g',
        2, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (94,1, 'What will most likely happen next?', 'B', '4',
        '영국식 발음||It’s great to see you all here at this meeting of the Urban Farming Association. As some of you may already know, the environmental organization Green World generously granted our group funding this month in the amount of $10,000. This money was g',
        2, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (95,1, 'Why is the speaker calling?', 'B', '4',
        '캐나다식 발음||Mr. Gomez, this is Stan Halbert calling from TopTech. I’d like to let you know that I’m done upgrading your computer. I was able to install all of the components you requested except for one that is no longer made by the manufacturer. I included ',
        6, 'https://kr.object.ncloudstorage.com/toeicdoit/part4-95-97.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (96,1, 'Look at the graphic. Which component was unavailable?', 'A', '4',
        '캐나다식 발음||Mr. Gomez, this is Stan Halbert calling from TopTech. I’d like to let you know that I’m done upgrading your computer. I was able to install all of the components you requested except for one that is no longer made by the manufacturer. I included ',
        3, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (97,1, 'What will the listener most likely do on Tuesday?', 'A', '4',
        '캐나다식 발음||Mr. Gomez, this is Stan Halbert calling from TopTech. I’d like to let you know that I’m done upgrading your computer. I was able to install all of the components you requested except for one that is no longer made by the manufacturer. I included ',
        9, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (98,1, 'Look at the graphic. Which station will have a shorter stopover than scheduled?', 'B', '4',
        '미국식 발음|| Attention, passengers. You’re riding on Train 231 from Florence to Zurich. Please note that due to our late departure, we now expect to arrive in Bologna at 11:30 A.M. Our stopover in Bologna will not be cut short. However, we will spend only 20 ',
        7, 'https://kr.object.ncloudstorage.com/toeicdoit/part4-98-100.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (99,1, 'According to the speaker how can listeners get refreshments?', 'B', '4',
        '미국식 발음|| Attention, passengers. You’re riding on Train 231 from Florence to Zurich. Please note that due to our late departure, we now expect to arrive in Bologna at 11:30 A.M. Our stopover in Bologna will not be cut short. However, we will spend only 20 ',
        3, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (100,1, 'What are listeners asked to do?', 'D', '4',
        '미국식 발음|| Attention, passengers. You’re riding on Train 231 from Florence to Zurich. Please note that due to our late departure, we now expect to arrive in Bologna at 11:30 A.M. Our stopover in Bologna will not be cut short. However, we will spend only 20 ',
        1, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (101,1,
        'Violinist Jonas Garcia will deliver the final performance of ------- long career at the Orville Art Hall this Thursday.',
        'B', '5',
        '인칭 대명사의 격||명사(career) 앞에서 형용사처럼 명사를 꾸밀 수 있는 인칭대명사는 소유격이므로 소 유격 인칭대명사(B) his가 정답이다. 주격 인칭대명사(A), 목적격 인칭대명사(C), 재 귀대명사(D)는 명사를 꾸밀 수 없다.',
        8, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (102,1, 'To make certain that trade secrets remain ------- the company employees must fiercely protect them.',
        'B', '5',
        '전치사 선택  위치||‘기업 비밀이 회사 내에 남다’라는 의미가 되어야 하므로 전치사 (B) within(~ 내 에)이 정답이다. (A) between(~ 사이에)은 보통 두 사람이나 사물 앞에 쓰이고, (C) among(~ 사이에)은 셋 이상의 사람이나 사물 앞에 쓰여 다음에 복수 명사를 취하 므로 답이 될 수 없다. (D) behind(~ 뒤에)는 ‘기업 비밀이 회사 뒤에 남다’라는 어색 한 문맥을 만든다.',
        2, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (103,1, '------- employees participate in the company-sponsored health insurance plan is up to them.', 'D', '5',
        '명사절 접속사||whether 빈칸이 포함된 절(___ employees participate in ~ plan)이 문장의 주어 역할을 하 고 있으므로 문장 내에서 주어로 쓰일 수 있는 명사절을 이끄는 명사절 접속사 (D) Whether(~인지 아닌지)가 정답이다. 수량 표현 또는 상관접속사 (A) Both(둘 다), 부 사 (B) Rather(오히려), 상관접속사 (C) Either(둘 중 하나)는 명사절을 이끌 수 없다.',
        8, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (104,1,
        'Hagen Corp. mailed out surveys to gauge people’s ------- with the product selections at their local grocery store.',
        'A', '5',
        '[명사 자리] 동명사 vs. 명사||to 부정사(to gauge)의 목적어 역할을 할 수 있는 것은 명사이므로 명사 (A)와 동명 사 (C)가 정답의 후보이다. ‘제품 선택에 대한 사람들의 만족감을 측정하다’라는 의 미가 되어야 하므로 명사 (A) satisfaction(만족감)이 정답이다. 동명사 (C)는 ‘제품 선 택에 대한 사람들의 만족시키기를 측정하다’라는 어색한 문맥을 만든다. 동사 또는 분사 (B)는 명사 자리에 올 수 없고, to 부정사 (',
        8, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (105,1,
        'FlyThifty’s cancellation policy is stricter than ------- of Abu Dhabi Air but people seem to prefer the budget airline.',
        'C', '5',
        '명사–대명사 일치||전치사(than)의 목적어 자리에 올 수 있는 것은 명사이므로 모든 보기가 정답의 후 보이다. 빈칸이 앞에 나온 명사를 대신해 ‘Abu Dhabi 항공의 취소 정책’이라는 의 미가 되어야 하므로 단수를 나타내는 지시대명사 (C) that이 정답이다. 지시대명사 (A) those, 부정대명사 (B) many(다수)와 (D) several(몇몇)은 복수를 나타내므로 답 이 될 수 없다.',
        6, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (106,1,
        'Cremson Dairy’s ice cream sales were ------- affected when the local news ran a story about contaminated milk products.',
        'D', '5',
        '부사 어휘||‘뉴스에서 오염된 유제품에 관한 이야기를 내보냈을 때 아이스크림 매출액이 부정 적으로 영향을 받았다’라는 문맥이므로 부사 (D) negatively(부정적으로)가 정답이다. (A) doubtfully는 ‘의심스럽게’, (B) occasionally는 ‘이따금’, (C) alternatively는 ‘대신 으로’라는 의미이다.',
        8, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (107,1,
        'Details about the proposed budget cuts will be disclosed at the meeting which is scheduled for tomorrow ------- lunch.',
        'D', '5',
        '전치사 선택  시점||‘회의가 내일 점심 식사 후로 예정되어 있다’라는 의미가 되어야 하므로 시점을 나타 내는 전치사 (D) after(~ 후에)가 정답이다. (A) between은 ‘~ 사이에’라는 의미로 위 치를, (B) along은 ‘~을 따라서’라는 의미로 방향을, (C) below는 ‘~ 아래에’라는 의 미로 위치를 나타낸다.',
        3, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (108,1,
        'Students plan to ------- a petition to the university’s administrative council regarding the proposed tuition fee increase.',
        'C', '5',
        '동사 어휘||‘학생들이 대학교의 행정 위원회에 탄원서를 제출할 계획이다’라는 문맥이므로 동사 (C) present(제출하다)가 정답이다. (A) authorize는 ‘위임하다’, (B) hire는 ‘고용하다’ 라는 의미이다. (D) convince(납득시키다)도 해석상 그럴듯해 보이지만, 목적어로 납 득시키는 내용이 아닌 대상이 와야 하므로 답이 될 수 없다.',
        7, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (109,1,
        'The fifth annual meeting of the Perth Organic Fruit Growers’ Association took place at a farm ------- the outskirts of town.',
        'B', '5',
        '전치사 선택  장소||‘연례 회의가 도시의 변두리에 있는 농장에서 개최되었다’라는 의미가 되어야 하므로 장소를 나타내는 전치사 (B) on(~에)이 정답이다. (A) for는 ‘~을 향해’라는 의미로 방향을 나타내거나 ‘~을 위해서’라는 의미로 목적을 나타낸다. (C) from은 ‘~에서, ~로부터’라는 의미로 방향을, (D) during은 ‘~ 동안’이라는 의미로 기간을 나타낸다.',
        3, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (110,1, 'The Green Pines Hotel banquet hall has been ------- for the executive dinner next week.', 'D', '5',
        '동사 어휘||‘연회장이 중역 만찬을 위해 예약되었다’라는 문맥이므로 동사 reserve(예약하다)의 과거형 (D) reserved가 정답이다. (A)의 serve는 ‘접대하다’, (B)의 communicate는 ‘의사소통하다’, (C)의 inquire는 ‘묻다’라는 의미이다.',
        7, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (111,1, 'If you apply for Patterson Community Colleges courses ------- the deadline you will have to pay a fee.', 'B', '5', '[수식어 거품을 이끄는 것] 전치사 선택  시점||‘기한을 지나서 강좌를 신청하면 수수료를 지불해야 할 것이다’라는 의미가 되어야 하므로 시점을 나타내는 전치사 (B) past(~을 지나서)가 정답이다. (A) forward는 ‘~ 쪽으로, ~을 향하여’, (C) with는 ‘~과 함께’, (D) toward는 ‘~쪽으로, ~을 향하여’라 는 의미로 어색한 문맥을 만든다.', 4, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (112,1, 'The restaurant owner gave the diners complimentary beverages as ------- for making a mistake on their order.', 'C', '5', '명사 어휘||‘식당 주인이 손님들에게 실수한 것에 대한 보상으로 무료 음료를 주었다’라는 문맥 이므로 명사 (C) compensation(보상)이 정답이다. (A) recommendation은 ‘추천’, (B) grievance는 ‘불만, 고충’, (D) appreciation은 ‘감사’라는 의미이다.', 1, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (113,1,
        'The real estate agent who listed the property ------- his client that it had been properly zoned for commercial use.',
        'C', '5',
        '동사 어휘||‘부동산 중개업자가 고객에게 소유지가 상업적 용도로 적절히 구획되어 있다고 확신 시켰다’라는 문맥이므로 동사 assure(확신시키다)의 과거형 (C) assured가 정답이다. (A)의 call은 ‘부르다, 이름 짓다’라는 의미이다. (B)의 testify(증명하다, 증언하다)도 해 석상 그럴듯해 보이지만, 증명하는 내용을 목적어로 취하는 3형식 동사이므로 답이 될 수 없다. (D)의 manage는 ‘간신히 해내다, 관리하다’라는 의미이다.',
        6, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (114,1,
        'Tax officials ------- carry out audits on random citizens to ensure that they are submitting their financial details accurately.',
        'B', '5',
        '부사 자리||빈칸 뒤의 동사(carry)를 꾸미기 위해서는 부사가 와야 하므로 부사 (B) regularly(정기 적으로)가 정답이다. 형용사 (A), 동사 또는 분사 (C), 명사 (D)는 동사를 꾸밀 수 없다.',
        5, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (115,1,
        'For the duration of the ceremony all award winners will be seated in an exclusive area ------- the main stage.',
        'B', '5',
        '[수식어 거품을 이끄는 것] 전치사 선택  시점||이 문장은 주어(all award winners)와 동사(will be seated)를 갖춘 완전한 절이므로, ___ the main stage는 수식어 거품으로 보아야 한다. 이 수식어 거품은 동사가 없는 거품구이므로, 거품구를 이끌 수 있는 전치사 (A), (B), (C)가 정답의 후보이다. ‘모든 수상자들은 주 무대 옆의 전용 구역에 앉을 것이다’라는 의미이므로 위치를 나타내는 전치사 (B) nex',
        3, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (116,1,
        '------- of people are expected to be at the inauguration of the Streetville Farmer’s Market this Saturday.',
        'C', '5',
        '수량 표현 빈칸||뒤 복수 명사(people)를 꾸밀 수 있는 수량 표현 (C)와 (D)가 정답의 후보이다. ‘많은 사람들이 시장 개업식에 올 것으로 예상된다’라는 의미가 되어야 하므로 빈칸 뒤 of와 함께 쓰여 ‘많은’이라는 의미의 수량 표현을 만드는 (C) A lot이 정답이다. (D) Several은 뒤에 of와 the가 모두 와야 한정된 명사의 부분을 나타낼 수 있다. (A) Little(적은)과 (B) Much(많은)는 둘 다 불가산 명사 앞에',
        4, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (117,1,
        'The Norrisville Chamber of Commerce has started a mentorship program that pairs young entrepreneurs with ------- business leaders.',
        'C', '5',
        '[형용사 자리] 현재분사 vs. 과거분사||전치사(with)와 명사(business leaders) 사이에서 명사를 꾸미기 위해서는 형용사나 형용사 역할을 하는 분사가 와야 하므로 분사 (A)와 (C)가 정답의 후보이다. 꾸밈을 받는 명사(business leaders)와 분사가 ‘확실히 자리를 잡은 기업 경영자들’이라는 의 미의 수동 관계이므로 과거분사 (C) established(확실히 자리를 잡은, 인정받는)가 정답 이다. 현재분사 (A) esta',
        9, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (118,1,
        'The public service announcement in which the risks of texting while driving are graphically ------- is being aired nationwide.',
        'C', '5',
        '동사 어휘||‘운전하는 동안 문자 보내는 것의 위험성이 도표로 설명되다’라는 문맥이므로 동사 illustrate(설명하다)의 p.p.형 (C) illustrated가 정답이다. (A)의 exercise는 ‘운동시키 다’, (B)의 perform은 ‘수행하다’, (D)의 imitate는 ‘모방하다’라는 의미이다.',
        3, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (119,1,
        'Some conference attendees have decided ------- a car which they will pick up once they arrive at the airport.',
        'B', '5',
        'to 부정사를 취하는 동사||빈칸 앞에 to 부정사를 목적어로 취하는 동사(decided)가 있으므로 to 부정사 (B) to lease가 정답이다. 동사 또는 명사 (A), 형용사 (C), 동명사 또는 분사 (D)는 to 부정사 를 목적어로 취하는 동사의 목적어 자리에 올 수 없다.',
        8, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (120,1,
        'With the holiday season approaching Rushville residents ------- for donations of canned goods toys and clothing by volunteers from charitable organizations.',
        'A', '5',
        '[동사 자리] 능동태와 수동태의 구별||문장에 주어(Rushville residents)만 있고 동사가 없으므로 동사 (A), (B), (C)가 정답 의 후보이다. 동사 solicit(~을 요청하다)이 타동사인데 빈칸 뒤에 목적어가 없고 ‘주 민들이 기부를 요청받을 것이다’라는 수동의 의미이므로 수동태 (A) will be solicited 가 정답이다. (B)와 (C)는 능동을 나타내므로 답이 될 수 없고, 분사 (D)는 동사 자리 에 올 수 없다.',
        7, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (121,1,
        'Dr. Duffy’s patients and their loved ones appreciate her ------- of knowledge calm temperament and pleasant bedside manner.',
        'C', '5',
        '명사 자리||동사(appreciate)의 목적어 자리인 동시에 소유격(her)과 전치사(of) 사이에 올 수 있 는 것은 명사이므로 명사 (C) wealth(풍부함)가 정답이다. 형용사 (A), 형용사의 비 교급 (B), 부사 (D)는 명사 자리에 올 수 없다. 참고로, a wealth of(풍부한)를 관용구 로 외워둔다.',
        8, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (122,1,
        'Newberry University geneticists ------- their preliminary findings on the rare toad species in the latest issue of Wildlife Discoveries.',
        'D', '5',
        '동사 어휘||‘유전학자들이 예비 조사 결과를 최신호에 게재했다’라는 문맥이므로 동사 publish(게 재하다, 출판하다)의 과거형 (D) published가 정답이다. (A)의 design은 ‘설계하다’, (B) 의 proofread는 ‘교정하다’, (C)의 impress는 ‘감동시키다’라는 의미이다.',
        6, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (123,1,
        'A representative from the Health and Safety Board will be going around ------- meat processing companies across the city this week.',
        'A', '5',
        '[수식어 거품을 이끄는 것] 현재분사 vs. 과거분사||이 문장은 주어(A representative)와 동사(will be going)을 모두 갖춘 완전한 절이므 로, ___ meat ~ week는 수식어 거품으로 보아야 한다. 따라서 수식어 거품이 될 수 있는 분사 (A)와 (B)가 정답의 후보이다. 빈칸 다음에 목적어(meat processing companies)가 있고, 생략된 분사구문의 주어(A representative)와 분사, 목적어(m',
        2, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (124,1,
        'Futuro TeleComm’s sales had been ------- for some time until strong demand for their new state-of-the-art tablet helped revive the company.',
        'D', '5',
        '동사 어휘||‘최신 태블릿에 대한 높은 수요가 회사를 부흥시키는 것을 도울 때까지 매출액이 감 소하고 있었다’라는 문맥이므로 동사 decline(감소하다)의 -ing형 (D) declining이 정 답이다. (A)의 confirm은 ‘확인하다’, (B)의 refurbish는 ‘재단장하다’, (C)의 persist는 ‘고집하다’라는 의미이다.',
        9, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (125,1,
        'The incoming president of BandiCase Inc. has plans to ------- this year by getting rid of any redundant positions.',
        'C', '5',
        '동사 어휘||‘새로 선출된 회장은 불필요한 직위를 제거함으로써 규모를 축소할 계획을 갖고 있 다’라는 문맥이므로 동사 (C) downsize(인력·규모 등을 축소하다)가 정답이다. (A) accumulate는 ‘축적하다’, (B) outsource는 ‘외부에 위탁하다’, (D) initiate는 ‘착수시 키다’라는 의미이다.',
        3, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (126,1,
        'Non-governmental groups and citizen volunteers ------- their efforts to clean up the polluted beach last weekend.',
        'A', '5',
        '[동사 자리] 과거 시제||문장에 동사가 없으므로 동사 (A), (B), (C)가 정답의 후보이다. 과거 시제와 함께 사용 되는 시간 표현(last weekend)이 있으므로 과거 시제 (A) doubled가 정답이다. 미래 시제 (B)는 미래의 상황에 대한 추측이나 의지를 표현하고 과거 완료 시제 (C)는 과거 의 특정 시점 이전에 발생한 일을 표현한다. 현재분사 (D)는 동사 자리에 올 수 없다.',
        6, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (127,1,
        'Those who wish to attend the investment seminar in June must ask their ------- if they can be excused from work.',
        'B', '5',
        '명사 어휘||‘투자 세미나에 참석하고 싶은 사람들은 업무에서 면제될 수 있는지 그들의 관리자 에게 문의해야 한다’는 문맥이므로 명사 (B) supervisors(관리자, 상관)가 정답이다. (A)의 assistant는 ‘조수’, (C)의 acquaintance는 ‘지인’, (D)의 consultant는 ‘상담가’ 라는 의미이다.',
        5, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (128,1,
        'The human resources department requires that workers submit receipts along with an ------- list of their travel expenses.',
        'A', '5',
        '형용사 어휘||‘직원들이 출장 비용의 항목별 표와 함께 영수증을 제출한다’라는 문맥이므로 형용사 (A) itemized(항목별로 구분한)가 정답이다. (B) accepted는 ‘일반적으로 인정된’, (C) settled는 ‘안정된’, (D) chosen은 ‘선발된’이라는 의미이다.',
        9, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (129,1, 'Had Mr. Hogan’s flight not been delayed he ------- Austin in time to attend the store’s grand opening.',
        'A', '5',
        'if 없는 가정법||문장이 Had로 시작되고 주어(Mr. Hogan’s flight) 다음에 p.p.형(been)이 온 것으로 보아, 가정법 과거 완료에서 if절의 if가 생략되고 주어와 동사가 도치된 것임을 알 수 있다. 따라서 주절에는 if절의 Had ~ been과 짝을 이뤄 가정법 과거 완료를 만드는 (A) would have reached가 정답이다. 참고로, 가정법 과거 완료는 과거 사실의 반대 를 가정하며 ‘If + 주어 + had p.p.,',
        1, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (130,1,
        'The IT department sent out e-mails to remind everyone that technicians would be conducting routine ------- on all network computers.',
        'B', '5',
        '명사 어휘||‘기술자들이 모든 네트워크 컴퓨터에 대해 정기 정비를 실시할 것이다’라는 문맥이 므로 명사 (B) maintenance(정비, 보수 관리)가 정답이다. (A) component는 ‘요소, 부 품’, (C) advice는 ‘조언’, (D) warranty는 ‘보증’이라는 의미이다.',
        5, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (131,1, '', 'B', '6',
        '명사자리||타동사(purse)의 목적어 자리에서 형용사(professional)의 꾸밈을 받을 수 있는 것은 명사이므로 명사 (B) interests(관심)가 정답이다. 동사 또는 분사 (A)와 (C), 부사 (D) 는 명사 자리에 올 수 없다. (A)를 동명사로 보더라도 동사 interest가 타동사인데 빈 칸 뒤에 목적어가 없으므로 답이 될 수 없다.',
        4, 'https://kr.object.ncloudstorage.com/toeicdoit/part6-131-134.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (132,1, '', 'C', '6',
        '동사 어휘  주변 문맥 파악||‘Joan Peterson이 수석 고객 담당 직원으로서 나를 ___할 것이다’라는 문맥이므 로 모든 보기가 정답의 후보이다. 빈칸이 있는 문장만으로 정답을 고를 수 없으므 로 주변 문맥이나 전체 문맥을 파악한다. 앞 문장에서 편지의 발신자가 사임할 예 정이라고 했고, 뒤 문장에서 Ms. Peterson이 그 일을 맡을 능력이 있다고 했으므로 Joan Peterson이 편지의 발신자 대신에 수석 고객 담당 직원이 될 것임을 ',
        4, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (133,1, '', 'D', '6',
        '알맞은 문장 고르기||빈칸에 들어갈 알맞은 문장을 고르는 문제이므로 주변 문맥 또는 전체 문맥을 파악 한다. 앞부분에서 편지의 발신자가 사임할 예정이며 Joan Peterson가 후임자가 될 것이라고 했고, 앞 문장 ‘Ms. Peterson is highly experienced and fully capable of assuming this job.’에서 Ms. Peterson이 경험이 풍부하고 그 일을 맡을 능력이 있다 고 했으므로 빈칸에는 후임자에게',
        8, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (134,1, '', 'A', '6',
        'if 없는 가정법||이 문장은 주어가 없는 명령문이고 동사(do ~ hesitate)를 갖춘 완전한 절이므로, ___ you ~ concerns는 수식어 거품으로 보아야 한다. ‘다른 질문이나 문제가 있다 면’이라는 의미가 되어야 하므로 가정법의 if절에 사용되는 조동사 (A) Should가 정 답이다. 참고로 ‘Should you have ~’는 가정법 ‘If you should have ~’에서 If가 생 략되고 주어(you)와 조동사(should)',
        9, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (135,1, '', 'B', '6',
        '알맞은 문장 고르기||빈칸에 들어갈 알맞은 문장을 고르는 문제이므로 주변 문맥 또는 전체 문맥을 파악 한다. 뒤 문장 ‘Thankfully, Lawn Ranger is here to help you.’에서 다행스럽게도 Lawn Ranger가 여러분을 돕기 위해 여기 있다고 했고 뒷부분에서 Lawn Ranger 에 어떤 조경 작업이든 처리할 수 있는 잔디 관리 전문가들이 있다고 했으므로 빈칸 에는 Lawn Ranger가 도울 수 있는 것, 즉 조경 작업에',
        3, 'https://kr.object.ncloudstorage.com/toeicdoit/part6-135-138.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (136,1, '', 'D', '6',
        '수동태 동사 숙어||‘잔디 관리 전문가들이 어떤 조경 작업이든 처리하도록 갖춰져 있다’라는 의미가 되어야 하므로 빈칸 앞의 be 동사(are)와 빈칸 뒤의 to 부정사(to tackle)와 함께 be equipped to(~을 하도록 갖춰져 있다) 구문을 만드는 동사 equip의 p.p.형 (D) equipped가 정답이다. 동사원형 (A)는 be 동사(are) 뒤에 쓰일 수 없다. to 부정사 (B), -ing형 (C)는 동사 equip(준비를 갖추게',
        4, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (137,1, '', 'A', '6',
        '형용사 어휘  주변 문맥 파악|| ‘___한 서비스를 위해 안심하고 Lawn Ranger에 맡기다’라는 문맥이므로 (A), (B), (C)가 정답의 후보이다. 빈칸이 있는 문장만으로 정답을 고를 수 없으므로 주변 문맥 이나 전체 문맥을 파악한다. 앞 문장에서 Lawn Ranger가 최고의 잔디 관리 서비스 제공업체로 6년 연속 뽑혔으며 40년 이상의 경험과 수천 명의 만족한 고객을 모셨 다고 했으므로, Lawn Ranger의 서비스가 믿을 만한 것임을 ',
        2, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (138,1, '', 'D', '6',
        '명사 어휘  주변 문맥 파악|| ‘무료 ___을 위해 오늘 전화해주세요’라는 문맥이므로 모든 보기가 정답의 후보이 다. 빈칸이 있는 문장만으로 정답을 고를 수 없으므로 주변 문맥이나 전체 문맥을 파 악한다. 뒤 문장에서 전문 정원사 중 한 명이 모든 문의 사항에 대해 도움을 줄 것 이라고 했으므로, 전화를 하면 직원에게 상담을 받을 수 있음을 알 수 있다. 따라서 (D) consultation(상담)이 정답이다. (A) brochure는 ‘소책자’, (',
        7, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (139,1,'', 'C', '6',
        'to 부정사가 아닌 원형 부정사를 목적격 보어로 갖는 동사|| 준 사역동사 help의 목적격 보어로는 원형 부정사나 to 부정사가 와야 하므로 원형 부 정사 (C) renovate(개조하다)가 정답이다. 동명사 또는 분사 (A), 동사의 과거형 또는 분사 (B), 명사 (D)는 준 사역동사 help의 목적격 보어 자리에 올 수 없다.',
        9, 'https://kr.object.ncloudstorage.com/toeicdoit/part6-139-142.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (140,1, '', 'D', '6',
        '명사 어휘|| ‘___별로 작업이 되기를 바란다’라는 문맥이므로 (A), (B), (D)가 정답의 후보이다. 빈 칸이 있는 문장만으로 정답을 고를 수 없으므로 주변 문맥이나 전체 문맥을 파악한 다. 뒤 문장에서 회의실에서 시작해서 중역 사무실, 주 업무 구역, 회의실을 작업하자 고 했으므로, 작업을 단계별로 하고 싶어 함을 알 수 있다. 따라서 (D) stages(단계)가 정답이다. (A)의 level은 ‘수준’, (B)의 grade는 ‘등급’, (C)',
        2, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (141,1, '', 'C', '6',
        '알맞은 문장 고르기|| 빈칸에 들어갈 알맞은 문장을 고르는 문제이므로 주변 문맥 또는 전체 문맥을 파악한 다. 뒤 문장 ‘I hope to get your ideas on paint colors, lighting, and new furniture.’ 에서 페인트 색상, 조명, 새로운 가구에 대한 편지 수신자의 생각을 알고 싶다고 했으 므로 빈칸에는 회사 개조 작업에 관한 세부 사항을 논의하는 기회를 요청하는 내용 이 들어가야 함을 알 수 있다. 따라서 ',
        4, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (142,1, '', 'C', '6',
        '[조동사 + 동사원형] 능동태와 수동태의 구별||조동사(should) 다음에는 동사원형이 와야 하므로 동사원형 (A), have + p.p. (B), be + p.p. (C)가 정답의 후보이다. complete(~을 완료하다)가 타동사인데 빈칸 다음에 목적어가 없고, ‘모든 작업이 3월 1일까지 완료되어야 한다’라는 수동의 의미가 되어 야 하므로 수동태(be + p.p.) (C) be completed가 정답이다. (A)와 (B)는 능동태이므 로 답이 ',
        3, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (143,1, '', 'B', '6',
        '동사 어휘||‘Hartford Gas and Electric 회사가 고객들에게 지점이 6월 24일 금요일 오후 1시부 터 닫을 것임을 __한다’라는 문맥이므로 동사 notify(통지하다)의 3인칭 단수형 (B) notifies가 정답이다. (A)의 request는 ‘요청하다’, (C)의 invite는 ‘초대하다’, (D)의 encourage는 ‘격려하다’라는 의미이다.',
        2, 'https://kr.object.ncloudstorage.com/toeicdoit/part6-143-146.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (144,1, '', 'A', '6',
        '알맞은 문장 고르기||빈칸에 들어갈 알맞은 문장을 고르는 문제이므로 주변 문맥 또는 전체 문맥을 파악 한다. 앞 문장 ‘The Hartford Gas and Electric Company hereby notifies customers that its branch office on 121 Allen Street will be closed from 1 P.M. on Friday, June 24, for a scheduled event.’에서 Hartford',
        5, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (145,1, '', 'A', '6',
        '[동사 자리] 현재 시제||문장에 동사가 없으므로 동사 (A), (C), (D)가 정답의 후보이다. ‘정상 영업 시간은 다 음 주 월요일인 6월 27일에 재개될 것이다’라는 의미가 되어야 하므로, 가까운 미래 에 예정된 일을 표현할 수 있는 현재 시제 (A) resume이 정답이다. 과거 시제 (C)와 현재 완료 시제 (D)는 미래를 나타낼 수 없고, 동명사 또는 분사 (B) resuming은 동 사 자리에 올 수 없다.',
        5, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (146,1, '', 'C', '6',
        '접속부사  주변 문맥 파악||빈칸이 콤마와 함께 문장 맨 앞에 온 접속부사 자리이므로, 앞 문장과 빈칸이 있는 문장의 의미 관계를 파악하여 정답을 선택한다. 앞 문장은 결제를 하거나 거래를 완 료해야 하는 고객들은 469번지 Burgess로에 있는 지점에 오면 된다고 했고, 빈칸이 있는 문장에서는 제3 결제 업체에서는 결제가 계속 이루어질 수 있다고 했으므로 앞 문장에서 언급된 내용에 추가적인 내용을 더할 때 사용되는 (C) Additionally(추가',
        2, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (147,1, 'What is being advertised?', 'C', '7',
        '명사 어휘 주변 문맥 파악||‘rent one of our thousands of designer dresses or suits’라는 문구를 통해, 이 광고는 의류 대여 서비스를 홍보하고 있음을 알 수 있다. 따라서 정답은 (C) rental service이다. (A) fashion show는 ‘패션쇼’, (B) grand opening은 ‘개업’, (D) clothing auction은 ‘의류 경매’라는 의미이다. ',
        8, 'https://kr.object.ncloudstorage.com/toeicdoit/part7-147-148.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (148,1, 'What is true about the boutique?', 'C', '7',
        '내용 이해||‘We are open every day of the week from 10:30 A.M. to 7:30 P.M.’라는 문구를 통해, 이 부티크는 주말에도 영업을 한다는 것을 알 수 있다. 따라서 (C) It is open throughout the weekend이 정답이다. (A) It has been in business a long time는 ‘오랫동안 영업해왔다’, (B) It plans to introduce items for me',
        5, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (149,1, 'What is the reason for the e-mail?', 'B', '7',
        '내용 이해||‘management has authorized AirCool to begin upgrading the office ventilation system starting next month’라는 문구를 통해, 이번 이메일은 사무실 환기 시스템 업그레이드와 관련된 내용을 알리기 위해 작성되었음을 알 수 있다. 따라서 정답은 (B) Some improvements will be taking place이다. (A) Staff members are b',
        3, 'https://kr.object.ncloudstorage.com/toeicdoit/part7-149-150.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (150,1, 'What are the e-mail recipients told to expect?', 'B', '7',
        '내용 이해||‘Details of the schedule will be sent out in a few days’라는 문구를 통해, 이메일 수신자들은 자세한 일정이 며칠 내로 발송될 것이라는 내용을 알 수 있다. 따라서 정답은 (B) Detailed schedules이다. (A) Efficiency reports는 ‘효율성 보고서’, (C) Brief work stoppages는 ‘짧은 작업 중단’, (D) Departmental meetings는 ‘부',
        5, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (151, 1,'What is suggested about Mr. Weaver?', 'B', '7',
        '내용 이해||‘We need to discuss your latest draft submission’라는 문구를 통해, Mr. Weaver는 현재 제출한 원고에 대해 논의할 필요가 있음을 알 수 있다. 또한 ‘OK. I’ll just head up to your office then. I’ll be there in less than 10 minutes.’라는 문구는 그가 회의 장소 근처에 있음을 나타낸다. 따라서 정답은 (B) He is near a m',
        6, 'https://kr.object.ncloudstorage.com/toeicdoit/part7-151-152.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (152,1, 'What does Ms. Campos mean at 2:49 P.M. when she writes “just call me”?', 'C', '7',
        '내용 이해||‘A new security system was just installed, and you need an access card to get in now. I’ll come meet you this time.’라는 문구를 통해, Ms. Campos가 Mr. Weaver와 함께 건물에 들어가야 함을 알 수 있다. 따라서 정답은 (C) She will need to accompany Mr. Weaver into the building이다. (A)',
        8, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (153,1, 'Why did Ms. Harrison fill out the card?', 'B', '7',
        '내용 이해||‘Enjoy Busi-News Magazine Every Week!’와 같은 문구와 함께, Ms. Harrison이 새로운 구독을 신청하고 있다는 것을 알 수 있다. 따라서 정답은 (B) To request a magazine subscription이다. (A) To respond to a store survey는 ‘상점 설문에 응답하기 위해’, (C) To update the details of an account는 ‘계정 정보를 업데이트',
        1, 'https://kr.object.ncloudstorage.com/toeicdoit/part7-153-154.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (154,1, 'What is NOT indicated about Ms. Harrison?', 'C', '7',
        '내용 이해||Ms. Harrison의 신청서에서 그녀가 2년 구독을 선택했으며, 신용카드로 결제하고 있음을 알 수 있다. 그러나 그녀가 현재 구독을 갱신하는 것이 아니므로 무료 추가 호를 받지는 않을 것이다. 따라서 정답은 (C) She will get an extra copy of a magazine이다. (A) She lives in the city of Boston는 ‘그녀는 보스턴에 산다’, (B) She wants to pay by credit',
        7, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (155,1, 'Why was the e-mail written?', 'C', '7',
        '내용 이해||이 이메일은 Jay Winters가 Lauren Smith에게 Tammy Hailey를 추천하기 위해 작성된 것이다. 따라서 정답은 (C) To recommend a candidate이다. (A) To inquire about a job vacancy는 ‘일자리 공석에 대해 문의하기 위해’, (B) To follow up on an application는 ‘지원서에 대해 후속 조치를 취하기 위해’, (D) To provide investme',
        5, 'https://kr.object.ncloudstorage.com/toeicdoit/part7-155-157.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (156,1, 'Who most likely is Ms. Hailey?', 'C', '7',
        '내용 이해||Tammy Hailey는 투자 연구 직책에 지원한 후보자이다. 따라서 그녀는 시장 분석가로 일했던 경력을 가지고 있는 것으로 보인다. 따라서 정답은 (C) A market researcher이다. (A) A departmental supervisor는 ‘부서장’, (B) A potential investor는 ‘잠재 투자자’, (D) A corporate accountant는 ‘회사 회계사’라는 의미이다. ',
        3, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (157,1, 'What does Mr. Winters indicate about Stevenson Financial?', 'A', '7',
        '내용 이해||Jay Winters는 Tammy Hailey가 Stevenson Financial의 시카고 본사와 지사에서 일했다고 설명한다. 따라서 Stevenson Financial은 여러 사무소를 가지고 있는 것으로 보인다. 따라서 정답은 (A) It has several offices이다. (B) It uses a recruitment agency는 ‘채용 대행사를 이용한다’, (C) It posted job advertisements는 ‘채용 공',
        5, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (158,1, 'What is the main purpose of the notice?', 'D', '7',
        '내용 이해||이 공지는 Taciturn Towers의 방문자 정책 변경을 알리기 위한 것이다. 따라서 정답은 (D) To announce changes to rules이다. (A) To inform tenants of renovations는 ‘세입자들에게 수리 작업을 알리기 위해’, (B) To provide instructions for delivery staff는 ‘배달 직원들에게 지침을 제공하기 위해’, (C) To encourage use of ',
        5, 'https://kr.object.ncloudstorage.com/toeicdoit/part7-158-160.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (159,1, 'According to the notice what might guests be asked to do at reception?', 'B', '7',
        '내용 이해||공지에 따르면, 방문자는 사진이 부착된 신분증을 제시해야 할 수 있다. 따라서 정답은 (B) Present an identity card이다. (A) Fill out a form는 ‘양식을 작성하다’, (C) Pick up a parking pass는 ‘주차권을 받다’, (D) Retrieve a delivery는 ‘배달 물품을 받다’라는 의미이다. ',
        3, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (160,1, 'What is suggested about delivery drivers?', 'C', '7',
        '내용 이해||배달 직원은 정기적으로 출입하는 직원이기 때문에 서명 절차에서 면제될 수 있다. 따라서 정답은 (C) They may be exempted from having to register이다. (A) They will be asked to wait in the lobby는 ‘그들은 로비에서 기다리라고 요청받을 것이다’, (B) They must park in a sectioned-off area는 ‘그들은 구획된 구역에 주차해야 한다’, (D) ',
        5, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (161,1, 'What information is NOT included on the invoice?', 'D', '7',
        '내용 이해||청구서에 포함되지 않은 정보는 배송 날짜이다. 따라서 정답은 (D) The date of delivery이다. (A) The address of a customer는 ‘고객의 주소’로, 청구서에 포함되어 있다. (B) The number of items purchased는 ‘구매한 물품 수량’으로, 각 항목마다 수량이 나와 있다. (C) The accepted payment methods는 ‘허용되는 결제 방법’으로, 청구서에 명시되어 있다',
        9, 'https://kr.object.ncloudstorage.com/toeicdoit/part7-161-163.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (162,1, 'What is suggested about Shasta Insurance?', 'B', '7',
        '내용 이해||배송료가 $0으로 표시되어 있으며, 이는 Shasta Insurance가 도시 경계 내에 위치해 있다는 것을 암시한다. 따라서 정답은 (B) It is within the city limits이다. (A) It is not open on weekends는 ‘주말에 운영하지 않는다’, (C) It is building a new office는 ‘새 사무실을 짓고 있다’, (D) It is a previous client는 ‘이전에 거래한 적이',
        4, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (163,1, 'What should Mr. Bingham do if he has a question about the invoice?', 'C', '7',
        '내용 이해||청구서에 따르면, 질문이 있을 경우 월요일부터 금요일까지 오전 9시부터 오후 7시 사이에 전화로 문의할 수 있다. 따라서 정답은 (C) Call a number이다. (A) Send an e-mail는 ‘이메일을 보내다’, (B) Fill out an online form는 ‘온라인 양식을 작성하다’, (D) Visit the store는 ‘가게를 방문하다’라는 의미이다.4 ',
        4, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (164,1, 'For what type of company does Mr. Owens most likely work?', 'C', '7',
        '내용 이해||Tim Owens는 온라인 판매 회사에서 일하는 것으로 보인다. 따라서 정답은 (C) Online merchandising이다. (A) Web site design는 웹사이트 디자인, (B) Inventory consulting는 재고 컨설팅, (D) Clothes manufacturing는 의류 제조를 의미한다. ',
        2, 'https://kr.object.ncloudstorage.com/toeicdoit/part7-164-167.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (165,1, 'What is indicated about the shirt?', 'B', '7',
        '내용 이해||Sara Wells는 셔츠를 취소해 달라고 요청했다. 따라서 셔츠는 주문에서 제거될 것이다. 정답은 (B) It will be removed from an order이다. (A) It is available in a different color는 다른 색상으로 이용 가능하다, (C) It may be bought at a physical store는 실제 매장에서 구매할 수 있다, (D) It should arrive just a f',
        3, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (166,1, 'When did Ms. Wells expect her order to arrive?', 'A', '7',
        '내용 이해||Sara Wells는 이번 주에 가방을 받기를 원했다. 따라서 정답은 (A) Within the week이다. (B) Next week는 다음 주, (C) In two weeks는 2주 후, (D) In three weeks는 3주 후를 의미한다. ',
        6, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (167,1, 'At 2:29 P.M. what does Ms. Wells mean when she writes “I guess I’ll just go to a department store”?',
        'B', '7',
        '내용 이해||Sara Wells가 I guess I’ll just go to a department store라고 쓴 것은 대체 상품에 관심이 없고, 대신 백화점에서 구매하겠다는 뜻이다. 따라서 정답은 (B) She has decided to cancel an item이다. (A) She prefers to do her shopping in stores는 매장에서 쇼핑하는 것을 선호한다, (C) She is hoping to save on a d',
        4, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (168,1, 'What is the article mainly about?', 'D', '7',
        '내용 이해||이 기사 주제는 미디어 회사의 국제 확장에 관한 것이다. 따라서 정답은 (D) A media company’s ongoing expansion이다. (A) An upcoming film production는 다가오는 영화 제작, (B) A newly opened entertainment venue는 새로 개장한 엔터테인먼트 장소, (C) An industry’s prominent personalities는 업계의 저명한 인물들을 ',
        2, 'https://kr.object.ncloudstorage.com/toeicdoit/part7-168-171.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (169, 1,'What is mentioned about Didisat?', 'C', '7',
        '내용 이해||Didisat은 뭄바이에 본사를 둔 회사의 자회사이다. 따라서 정답은 (C) It is a subsidiary of a company in Mumbai이다. (A) It will be available exclusively through Skywide는 Skywide를 통해서만 이용 가능하다, (B) Its audience will mostly be residents of Los Angeles',
        9, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (170, 1,'What does Ms. Nair suggest about Didinet?', 'B', '7',
        '내용 이해||Ms. Nair는 Didinet이 다양한 프로그램 콘텐츠를 제작했다고 언급한다. 따라서 정답은 (B) It has produced a variety of programming content이다. (A) It will be aired in several languages는 여러 언어로 방송될 것이다, (C) It started out as a television news channel는 텔레비전 뉴스 채널로 시작했다, (D) It ha',
        6, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (171,1,
        'In which of the positions marked [1] [2] [3] and [4] does the following sentence best belong? “In addition to the standard entertainment programs Didisat’s lineup will include news and talk shows.”',
        'C', '7',
        '내용 이해||“In addition to the standard entertainment programs, Didisat’s lineup will include news and talk shows.”라는 문장은 Ms. Nair가 프로그래밍 하이라이트를 설명하는 부분에 적합하다. 따라서 정답은 (C) [3]이다. ',
        7, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (172,1, 'Where did Ms. Silva and Ms. ONeill meet?', 'B', '7',
        '내용 이해||Gina Silva와 Gloria O Neill은 파리에서 열린 패션 박람회에서 만났다. 따라서 정답은 (B) At clothing exhibition이다.
            (A) At a store opening는 매장 개업식에서 (C) At a holiday sale는 휴일 세일에서.', '5 ',
        'https://kr.object.ncloudstorage.com/toeicdoit/part7-172-175.png',  NOW(), NOW() );


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (173,1, 'How can Ms.O’Neill receive a reduced price?', 'B', '7 ',
        '내용 이해||Gloria O Neill은 $3000 이상의 대량 주문 시 20% 할인을 받을 수 있다.',
        8, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (174,1, 'What does Ms. Silva recommend?', 'C', '7',
        '내용 이해||Gina Silva는 아이템을 휴일 세일 전에 받기 위해 가능한 빨리 주문할 것을 추천한다. 따라서 정답은 (C) Placing an order soon이다. (A) Having items sent by courier는 택배로 아이템을 보내는 것, (B) Attending a fashion event는 패션 이벤트에 참석하는 것, (D) Meeting in person는 직접 만나는 것을 의미한다. ',
        5, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (175,1,
        'In which of the positions marked [1] [2] [3] and [4] does the following sentence best belong?“I hope these items will give you a better idea of the quality of the products that we offer our customers.”',
        'B', '7',
        '내용 이해||“I hope these items will give you a better idea of the quality of the products that we offer our customers.”라는 문장은 샘플에 대해 언급하고 있는 부분에 적합하다. 따라서 정답은 (B) [2]이다.',
        4, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (176,1, 'What is indicated about Regency Hampstead Golf Club?', 'B', '7',
        '내용 이해||Regency Hampstead Golf Club는 모든 멤버십 신청을 승인하지 않을 수 있다. 따라서 정답은 (B) It may not approve every membership application이다. (A) It charges members monthly fees는 회원에게 월 회비를 부과한다, (C) It accepts bank transfer payments는 은행 송금 결제를 받는다, (D) It has branches',
        6, 'https://kr.object.ncloudstorage.com/toeicdoit/part7-176-180.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (177,1, 'What is Ms. Lane eligible to do?', 'D', '7',
        '내용 이해||프리미엄 멤버십을 가진 Ms. Lane은 락커 키를 받을 수 있다. 따라서 정답은 (D) Place personal items in a locker이다. (A) Park in a reserved space는 예약된 공간에 주차할 수 있다, (B) Participate in special events는 특별 행사에 참여할 수 있다, (C) Take advantage of a discount는 할인을 받을 수 있다를 의미한다. ',
        3, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (178,1, 'How much money is Ms. Lane requesting?', 'C', '7',
        '내용 이해||Ms. Lane은 남편의 프리미엄 멤버십에 대한 전액 환불을 요청하고 있다. 프리미엄 멤버십의 비용은 $2,000이다. 따라서 정답은 (C) $2,000이다. ', '2',
         '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (179,1, 'What does Ms. Lane mention about her husband?', 'B', '7',
        '내용 이해||Ms. Lane은 남편 Terry가 최근 바쁘다고 언급했다. 따라서 정답은 (B) He has been busy recently이다. (A) He will be away for a month는 그는 한 달 동안 떠날 것이다, (C) He wants to take a golf class는 그는 골프 수업을 듣고 싶어한다, (D) He has visited the club many times는 그는 클럽을 여러 번 방문했다를 의미한다',
        9, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (180,1, 'What must be submitted with a cancellation form?', 'B', '7',
        '내용 이해||취소 양식을 제출할 때 클럽 패스와 락커 키를 반환해야 한다. 따라서 정답은 (B) A membership card이다. (A) A processing fee는 처리 수수료, (C) An original receipt는 원본 영수증, (D) A parking pass는 주차 패스를 의미한다. ',
        1, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (181,1, 'What is the purpose of the letter?', 'D', '7',
        '내용 이해||편지의 목적은 사업 제안을 설명하기 위함이다. 따라서 정답은 (D) To describe a business proposition이다. (A) To request feedback from a guest는 손님의 피드백 요청, (B) To invite an executive to a conference는 경영진을 회의에 초대, (C) To arrange travel for a customer는 고객을 위한 여행 준비를 의미한다. ',
        2, 'https://kr.object.ncloudstorage.com/toeicdoit/part7-181-185.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (182,1, 'What is NOT true about Accomo?', 'B', '7',
        '내용 이해||Accomo에 대한 설명 중 참이 아닌 것은 It has over a million listed properties. Accomo가 백만 개 이상의 등록된 숙박 시설을 가지고 있다는 내용은 편지에 언급되지 않았다. 따라서 정답은 (B) It has over a million listed properties이다. (A) Its site can be read in multiple languages는 사이트가 여러 언어로 읽을 수 있다, ',
        2, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (183,1, 'In the letter the word “settled” in paragraph 3 line 3 is closest in meaning to', 'C', '7',
        '단어 의미 편지에서 settled라는 단어는 paid와 가장 비슷한 의미를 가진다. 따라서 정답은 (C) paid이다. (A) located는 위치한, (B) agreed는 동의한, (D) relieved는 완화된을 의미한다. ',
        3, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (184,1, 'What is suggested about the Riverview Inn?', 'B', '7',
        '내용 이해||Riverview Inn에 대해 제안된 내용 중 하나는 외국인 방문객이 적다는 것이다. 따라서 정답은 (B) It gets few foreign visitors이다. (A) It was recently renovated는 최근에 개조되었다, (C) It is busiest in the month of May는 5월에 가장 바쁘다, (D) It offers budget accommodations는 저렴한 숙박 시설을 제공한다를 의미',
        3, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (185,1, 'How is Accomo different from Traveline?', 'B', '7',
        '내용 이해||Accomo는 Traveline과 다르게 더 자주 결제가 필요하지 않다. 따라서 정답은 (B) It requires payment less frequently이다. (A) Its booking fees are higher는 예약 수수료가 더 높다, (C) Its services are more limited는 서비스가 더 제한적이다, (D) It charges more commission는 더 많은 수수료를 부과한다를 의미한다. ',
        6, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (186,1, 'In the announcement the word “modest” in paragraph 1 line 4 is closest in meaning to', 'D', '7',
        '단어 의미 공고에서 modest라는 단어는 small과 가장 가까운 의미를 가진다. 따라서 정답은 (D) small이다. (A) ordinary는 일반적인, (B) reserved는 예약된, (C) casual은 캐주얼한을 의미한다.',
        2, 'https://kr.object.ncloudstorage.com/toeicdoit/part7-186-190.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (187,1, 'What is NOT indicated about the series of talks?', 'A', '7',
        '내용 이해||강연 시리즈에 대한 설명 중에서 같은 건물에서 열릴 것이라는 내용은 언급되지 않았다. 따라서 정답은 (A) They will take place in the same building이다. (B) They will be held during the evening는 저녁 시간에 열릴 것이다, (C) They will feature successful businesspeople는 성공한 사업가들이 강연할 것이다, (D) They will ',
        9, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (188,1, 'On which date will Ms. Clay most likely visit Royal Woods University?', 'C', '7',
        '내용 이해||Ms. Clay는 Ms. Ling의 자리를 대신하여 강연할 예정이다. 따라서 Ms. Ling의 강연 날짜인 3월 28일에 Royal Woods University를 방문할 가능성이 높다. 정답은 (C) March 28이다. ',
        4, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (189,1, 'Why did Ms. Clay first start her online business?', 'B', '7',
        '내용 이해||Ms. Clay는 학비를 충당하기 위해 온라인 비즈니스를 시작했다. 따라서 정답은 (B) To finance her schooling이다. (A) To raise funds for a retail outlet는 소매점 자금을 마련하기 위해, (C) To satisfy a business course requirement는 비즈니스 과목 요구사항을 충족하기 위해, (D) To sell items made by other designer',
        4, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (190,1, 'What is true about Ms. Clay?', 'B', '7',
        '내용 이해||Ms. Clay는 RWU의 졸업생 단체 회원이다. 따라서 정답은 (C) She is on the board of directors of an alumni group이다. (A) She just released a product line for men는 남성용 제품 라인을 막 출시했다, (B) She can attend other series lectures for free는 다른 시리즈 강연에 무료로 참석할 수 있다, (D) She ',
        1, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (191,1, 'What is NOT indicated about Susanna Sullivan?', 'D', '7',
        '내용 이해||Susanna Sullivan에 대해 언급되지 않은 내용은 그녀가 예술 전시회의 그녀의 거주지는 뉴욕에 있다, (B) She is skilled at traditional painting methods는 개막식에 참석할 것이라는 것이다. 따라서 정답은 (D) She will attend the opening of an art show이다.',
        1, 'https://kr.object.ncloudstorage.com/toeicdoit/part7-191-195.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (192,1, 'What most likely is Penny Logan’s job?', 'C', '7',
        '내용 이해||Penny Logan은 Wendy Andrews가 Susanna Sullivan의 이메일 주소를 얻기 위해 연락한 사람으로 보인다. 이는 Penny Logan이 갤러리 큐레이터일 가능성이 높음을 시사한다. 따라서 정답은 (C) A gallery curator이다. ', 8,
        '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (193,1, 'What did Senator Jackson do on September 5?', 'B', '7',
        '내용 이해||Senator Jackson은 9월 5일에 Columbus Gallery에서 열린 예술 전시회를 방문했다. 따라서 정답은 (B) Visited an art exhibit이다. (A) Posed for a portrait는 초상화를 위해 포즈를 취했다, (C) Attended a university event는 대학 행사를 참석했다, (D) Presented an award to an artist는 예술가에게 상을 수여했다를 의미한',
        3, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (194,1, 'What will happen if Ms. Sullivan agrees to attend the unveiling?', 'B', '7',
        '내용 이해||Ms. Sullivan이 초상화 공개 행사에 참석하기로 동의하면, Wendy Andrews가 그녀에게 정보를 이메일로 보낼 것이다. 따라서 정답은 (B) She will be sent information by Wendy Andrews이다. (A) She will receive a fee to speak at the event는 행사에서 연설하는 대가로 수수료를 받을 것이다, (C) She will have to pay for some ',
        5, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (195,1, 'Who might ask Ms. Sullivan some questions about her recent work?', 'B', '7',
        '내용 이해||Ms. Sullivan의 최근 작품에 대해 질문할 사람은 지역 언론의 기자들일 가능성이 높다. 따라서 정답은 (B) Members of the local press이다. (A) Work colleagues of the senator는 상원의원의 직장 동료들, (C) A group of art students는 예술 학생들, (D) A photographer working on an exhibit는 전시회 작업을 하는 사진작가를 의',
        7, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (196,1, 'What is NOT indicated about Woodward Customs?', 'C', '7',
        '내용 이해||Woodward Customs에 대해 언급되지 않은 내용은 생산 공간과 소매 공간이 같은 위치에 있다는 것이다. 따라서 정답은 (C) Its production and retail space are at the same location이다. (A) It started out as a family-run enterprise는 가족이 운영하는 사업으로 시작했다, (B) It makes furniture for residences and wo',
        3, 'https://kr.object.ncloudstorage.com/toeicdoit/part7-196-200.png', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (197,1, 'Why did Mr. Brody write the e-mail?', 'D', '7',
        '내용 이해||Mr. Brody는 이메일을 통해 영업 시간에 대한 실수를 보고하고 수정 요청을 하기 위해 썼다. 따라서 정답은 (C) To report a mistake about opening hours이다. ', 8, '', NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (198,1, 'What is the purpose of the advertisement?', 'C', '7', '내용 이해||광고의 목적은 소매점의 개점을 알리는 것이다. 따라서 정답은 (C) To announce a grand opening for a retail outlet이다. ',
        3 , '',
        NOW(), NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (199,1, 'What can guests do at Woodward Customs’ store on April 29?', 'C ', '7 ',
        ' 내용 이해||Woodward Customs의 매장에서 4월 29일에 손님들이 할 수 있는 일은 상품을 위한 경연에 참여하는 것이다.따라서 정답은 (C) Participate in a contest for a prize이다.(A) Meet with local craftspeople는 지역 공예가를 만나다,
      ', 8, '', NOW(),
        NOW());


INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (200,1, 'What is suggested about Mr.Brody?', 'A ', '7 ',
        ' 내용 이해||Mr.Brody는 정기 광고에 대해 출판사의 판매 부서에 연락했다.따라서 정답은 (A) He contacted a publications sales department about regular advertisements이다.', 7,
        '', NOW(), NOW());

INSERT INTO toeic_model (id,toeic_category_id ,question, answer, part, description, level,  image, created_at, updated_at)
VALUES (201,2,'','D','1','미국식 발음||(A) Hes cutting the grass.||(B) Hes reaching for a tool.||(C) Hes carrying some wood.||(D) Hes wearing gloves',1,'https://kr.object.ncloudstorage.com/toeicdoit/level-test/level-1.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (202,2,'','C','1','호주식 발음||(A) The glasses are being filled.||(B) The napkins are being folded.||(C) Lights are hanging from the ceiling.||(D) Guests are entering a restaurant.',2,'https://kr.object.ncloudstorage.com/toeicdoit/level-test/level-2.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (203,2,'Mark your answer on your answer sheet.','B','2','Why were you late this morning?||(A) I already ate breakfast.||(B) There was heavy traffic.||(C) Ive worn it before.',3,'', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (204,2,'Mark your answer on your answer sheet.','C','2','Where are you flying to tomorrow?||(A) Can I get a window seat?||(B) A long flight.||(C) Im headed to Rome.',4,'', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (205,2,'Mark your answer on your answer sheet.','A','2','Could you help me carry these boxes back to the shelves?||(A) Sure no problem.||(B) They are setting it up.||(C) OK Ill read them later.',5,'', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (206,2,'Mark your answer on your answer sheet.','A','2','How frequently do you participate in community service?||(A) When Im free on weekends.||(B) The service wasnt very good.||(C) Approximately a month.',6,'', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (207,2,'Mark your answer on your answer sheet.','B','2','Whos the new head of the research department?||(A) The results were conclusive.||(B) It will be announced tomorrow.||(C) Hell be coming from his apartment.',7,'', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (208,2,'Mark your answer on your answer sheet.','C','2','Are you going to contact the client or will Peter do it?||(A) I will review the contract.||(B) We have many customers.||(C) He did it yesterday.',8,'', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (209,2,'Mark your answer on your answer sheet.','B','2','Can you help me find the currency exchange service?||(A) Sorry I dont have change.||(B) Its right next door actually.||(C) We only accept checks.',9,'', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (210,2,'Mark your answer on your answer sheet.','B','2','Its difficult to drive in the snow isnt it?||(A) I have a license.||(B) Yes its very hard.||(C) The weather is cold.',7,'', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (211,2,'Only hospital staff and authorized visitors are ------- to enter the recovery room. ','A','5','동사의 과거분사|| 허가된 사람만 들어갈 수 있다는 문맥을 고려할 때 허가된이라는 의미의 과거분사 permitted가 맞습니다. 나머지 선택지인 established(설립된) managed(관리된) preserved(보존된)는 문맥에 맞지 않습니다.',6,'', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (212,2,'Escalating interest rates are among the most ------- concerns of entrepreneurs with large mortgage loans.','B','5','형용사와 명사의 결합||concerns(걱정)를 수식하는 형용사로 긴급한이라는 의미의 urgent가 적합합니다. urgency(긴급함)는 명사형 urgencies(긴급한 상황들)는 복수형 명사 urgently(긴급하게)는 부사형으로 문맥에 맞지 않습니다.',6,'', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (213,2,'Young architects are encouraged to attend workshops regularly to boost their knowledge of the ------- trends in the field.','A','5','형용사의 비교급 및 최상급||최신의라는 의미로 latest가 적합합니다. later(나중의) late(늦은) lately(최근에)는 문맥에 맞지 않습니다.',7,'  ', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (214,2,'During the first semester students at Cloverdale Elementary can choose to participate in ------- a singing or a dance class.','C','5','대명사의 용법||노래 또는 춤 수업 중 하나를 의미하는 either가 적합합니다. neither(둘 다 아닌) both(둘 다) also(또한)는 문맥에 맞지 않습니다.',8,'', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (215,2,'The staff at technical support are divided over the idea of moving ------- office to a unit on the third floor.','C','5','소유격 인칭대명사||office를 수식하는 소유격 인칭대명사로 their가 적합합니다. theirs(그들의 것) them(그들을) themselves(그들 자신)은 문맥에 맞지 않습니다.',7,'', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (216,2,'What is indicated about Ms. Hopps?','A','7','문맥 이해||Ms. Hopps가 Mr. Warren에게 더 많은 책임을 맡고 싶다고 말한 것으로 보아 그녀는 자발적으로 더 많은 일을 맡기로 한 것으로 해석됩니다. I finally went to Mr. Warren this afternoon about how I’m ready for more responsibility around here.이 문장에서 그녀가 자발적으로 더 많은 일을 맡겠다고 한 것이 드러납니다.',6,'https://kr.object.ncloudstorage.com/toeicdoit/level-test/level-36-37.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (217,2,'At 4:59 P.M. what does Mr. Palmer mean when he writes “Its about time”?','D','7','표현의 의미||Mr. Palmer의 "Its about time"이라는 표현은 어떤 일이 오래 걸려 마침내 일어났음을 뜻합니다. 문맥상 Ms. Hopps가 승진 기회를 얻은 것이 마땅히 더 일찍 이루어졌어야 했다는 뜻으로 해석됩니다.',8,'https://kr.object.ncloudstorage.com/toeicdoit/level-test/level-36-37.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (218,2,'Where might this information be found?','B','7','문맥 이해||이 글은 섬유 광학 산업에 관한 전문가들의 의견을 다루고 있으며 업계의 최근 상황과 문제점을 논의합니다. 이는 특정 기업이나 제품에 관한 공지가 아닌 업계 전반에 관한 정보를 제공하는 것으로 보아 무역 저널에서 찾을 수 있는 정보입니다.',8,'https://kr.object.ncloudstorage.com/toeicdoit/level-test/level-38-40.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (219,2,'On which topic can readers obtain more information?','B','7','문맥 이해||글에서 전문가들이 업계의 문제를 다루고 있으며 특히 향후 섬유 광학의 잠재적 응용에 대한 코멘터리를 포함한다고 언급되어 있습니다. 이는 미래의 사용에 관한 정보를 제공한다는 것을 의미합니다.',7,'https://kr.object.ncloudstorage.com/toeicdoit/level-test/level-38-40.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (220,2,'In which of the positions marked [1] [2] [3] and [4] does the following sentence best belong?||“Combined with a downturn in demand all growth has been disrupted.”','B','7','문장의 흐름||주어진 문장은 섬유 광학 산업의 성장이 방해받았음을 나타냅니다. 글의 첫 부분에서 업계의 문제를 다루고 있는 [1]과 [2] 사이에 위치시키면 적절합니다. [1]에서 섬유 광학 산업이 좋은 한 해를 보내지 못했음을 언급한 뒤',7,'https://kr.object.ncloudstorage.com/toeicdoit/level-test/level-38-40.png', NOW(), NOW());

INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (221,4, '', 'A', '1', '영국식 발음||(A) A man is cleaning a monitor.||(B) A woman is pointing at a window.||(C) People are arranging some furniture.||(D) People are studying some charts.', 1, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/bypart-1.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (222,4, '', 'B', '1', '미국식 발음||(A) Some equipment is being assembled.||(B) There are stools arranged in a row.||(C) Some weights are resting on a rack.||(D) A plant has been situated in a hallway.', 2, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/bypart-2.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (223,4, '', 'C', '1', '호주식 발음||(A) A man is reading a book.||(B) A man is putting on a hat.||(C) A man is reaching for a publication.||(D) A man is taking off his jacket.', 3, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/bypart-3.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (224,4, '', 'D', '1', '영국식 발음||(A) Theyre having a conversation over a meal.||(B) Some of them are looking at a menu.||(C) Theyre arranging some tables.||(D) Some of them are grasping cups.', 4, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/bypart-4.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (225,4, '', 'D', '1', '미국식 발음||(A) Hes cutting the grass.||(B) Hes reaching for a tool.||(C) Hes carrying some wood.||(D) Hes wearing gloves', 5, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/bypart-5.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (226,4, '', 'A', '1', '호주식 발음||(A) The glasses are being filled.||(B) The napkins are being folded.||(C) Lights are hanging from the ceiling.||(D) Guests are entering a restaurant.', 6, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/bypart-6.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (227,4, '', 'B', '1', '영국식 발음||(A) A construction crew is spreading out gravel.||(B) Heavy machinery is parked on the pavement.||(C) A tire on the vehicle is being replaced.||(D) A dump truck is being loaded with dirt.', 7, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/bypart-7.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (228,4, '', 'C', '1', '영국식 발음||(A) Some backpacks are being stored.||(B) They are looking at a map.||(C) They are standing at a ticket booth.||(D) The railway lines are being built.', 8, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/bypart-8.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (229,4, '', 'D', '1', '미국식 발음||(A) Some napkins are being folded.||(B) Some chairs are occupied.||(C) Some meals have been served.||(D) Some silverware has been laid out.', 9, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/bypart-9.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (230,4, 'Mark your answer on your answer sheet.', 'B', '2', 'What is the matter with your scanner?||(A) The copies come out blurry.||(B) That could have been avoided.||(C) My neighbor fixes electronics.', 1, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (231,4, 'Mark your answer on your answer sheet.', 'C', '2', 'When are we holding the press conference?||(A) Theres too much pressure.||(B) In the conference room.||(C) Definitely this week.', 2, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (232,4, 'Mark your answer on your answer sheet.', 'A', '2', 'Do you know who turned in this report?||(A) Check with Mallory.||(B) Turn it off please.||(C) In a news report.', 3, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (233,4, 'Mark your answer on your answer sheet.', 'B', '2', 'Which exhibit do you want to see first?||(A) I asked the man in the blue shirt.||(B) Italian sculptures on the third floor.||(C) OK lets meet at 2 P.M.', 4, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (234,4, 'Mark your answer on your answer sheet.', 'C', '2', 'These plates and cups need to be put away.||(A) Where do they go?||(B) A new chef.||(C) Its a spicy dish.', 5, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (235,4, 'Mark your answer on your answer sheet.', 'A', '2', 'Where should my résumé be directed?||A) Hes the new director.||(B) To the Human Resources department.||(C) By Wednesday at the latest.', 6, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (236,4, 'Mark your answer on your answer sheet.', 'B', '2', 'Can you make 30 copies of this document before the meeting after lunch?||(A) We have more than 30 candidates.||(B) Sure Ill be there.||(C) Ill ask Anne to do it.', 7, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (237,4, 'Mark your answer on your answer sheet.', 'C', '2', 'Mary has a laptop just like this doesnt she?||(A) No shes a reporter.||(B) Hers is a newer model.||(C) At the top of the form.', 8, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (238,4, 'Mark your answer on your answer sheet.', 'A', '2', 'Why cant you make it to the meeting?||(A) I have a dental appointment.||(B) No I havent met her yet.||(C) At 12 oclock.', 9, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (239,4, 'Mark your answer on your answer sheet.', 'A', '2', 'Should we take a plane to the conference or drive there?||(A) In San Francisco.||(B) No thats not mine.||(C) Lets take a bus.', 1, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (240,4, 'Mark your answer on your answer sheet.', 'B', '2', 'Please hand in the sales report before you leave for the day.||(A) Ill put it on your desk by 5.||(B) The result looks terrible.||(C) She worked late yesterday.', 2, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (241,4, 'Mark your answer on your answer sheet.', 'C', '2', 'Dont we have to finish the business proposal by the end of the week?||(A) The business is doing well.||(B) No we still have lots of time.||(C) For several hours.', 3, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (242,4, 'Mark your answer on your answer sheet.', 'A', '2', 'Where can I find the information desk?||(A) It was informative.||(B) Later this afternoon.||(C) Around the corner.', 4, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (243,4, 'Mark your answer on your answer sheet.', 'B', '2', 'How large will this new painting be?||(A) At the gallery next door.||(B) Roughly the same as my previous one.||(C) The walls need to be repainted.', 5, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (244,4, 'Mark your answer on your answer sheet.', 'C', '2', 'Is Mr. Ken introducing the talk?||(A) Most of the speakers.||(B) He might not make it in time.||(C) Yes he walked there.', 6, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (245,4, 'Mark your answer on your answer sheet.', 'A', '2', 'Id like to buy an extra container of the sauce.||(A) I cant see what it contains.||(B) It will be $2 more.||(C) I have not seen the new advertisement', 7, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (246,4, 'Mark your answer on your answer sheet.', 'A', '2', 'Which guests will receive a goodie bag?||(A) Anyone who has a ticket.||(B) Invite them too.||(C) The recipe is difficult.', 8, '', NOW(), NOW());

INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (247,4, 'Where is the conversation most likely taking place?', 'B', '3', '미국식 발음 → 호주식 발음||W: Hey Sam. Sorry to bother you on the factory floor while youre working but I have a question. Can you show me the fabric that were going to use for the Rushmore clothing line? Our clients want to confirm that it is premium cotton.||M: Y', 1, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (248,4, 'What is mentioned about the clients?', 'C', '3', '미국식 발음 → 호주식 발음||W: Hey Sam. Sorry to bother you on the factory floor while youre working but I have a question. Can you show me the fabric that were going to use for the Rushmore clothing line? Our clients want to confirm that it is premium cotton.||M: Y', 1, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (249,4, 'What does the woman ask the man to do?', 'A', '3', '미국식 발음 → 호주식 발음||W: Hey Sam. Sorry to bother you on the factory floor while youre working but I have a question. Can you show me the fabric that were going to use for the Rushmore clothing line? Our clients want to confirm that it is premium cotton.||M: Y', 1, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (250,4, 'What is the problem?', 'D', '3', '영국식 발음 → 미국식 발음 ||M: Good morning Barbara. I looked at our social media page but it hasnt been updated lately. This could be an issue.||W: Yes I know. An intern was handling posts but  she transferred to another department.||M: I see. Well why dont we hir', 2, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (251,4, 'What does the man suggest?', 'D', '3', '영국식 발음 → 미국식 발음 ||M: Good morning Barbara. I looked at our social media page but it hasnt been updated lately. This could be an issue.||W: Yes I know. An intern was handling posts but  she transferred to another department.||M: I see. Well why dont we hir', 2, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (252,4, 'Why does the man say “Social media is a good way to reach applicants”?', 'B', '3', '영국식 발음 → 미국식 발음 ||M: Good morning Barbara. I looked at our social media page but it hasnt been updated lately. This could be an issue.||W: Yes I know. An intern was handling posts but  she transferred to another department.||M: I see. Well why dont we hir', 2, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (253,4, 'What is the woman shopping for?', 'A', '3', '미국식 발음 → 영국식 발음||W: Hi there [10] Im looking to buy a large monitor since I do a lot of computer work. Do you have any recommended models?||M: Yes would you like to check out the latest 32-inch monitor from S.T. Electronics? It was released just two weeks', 3, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (254,4, 'What is the woman concerned about?', 'C', '3', '미국식 발음 → 영국식 발음||W: Hi there [10] Im looking to buy a large monitor since I do a lot of computer work. Do you have any recommended models?||M: Yes would you like to check out the latest 32-inch monitor from S.T. Electronics? It was released just two weeks', 3, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (255,4, 'What will the woman do next?', 'D', '3', '미국식 발음 → 영국식 발음||W: Hi there [10] Im looking to buy a large monitor since I do a lot of computer work. Do you have any recommended models?||M: Yes would you like to check out the latest 32-inch monitor from S.T. Electronics? It was released just two weeks', 3, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (256,4, 'Where do the speakers work at?', 'B', '3', '호주식 발음 → 미국식 발음||M: Rachel [13] Richmond Hotel has decided to hire our company to renovate their lobby.||W: Wow! Thats great news. [13] I heard many interior companies sent them proposals.||M: They liked our unique design. I want you and John to take care', 5, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (257,4, 'What does the woman imply when she says||"John is new to the company"?', 'A', '3', '호주식 발음 → 미국식 발음||M: Rachel [13] Richmond Hotel has decided to hire our company to renovate their lobby.||W: Wow! Thats great news. [13] I heard many interior companies sent them proposals.||M: They liked our unique design. I want you and John to take care', 5, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (258,4, 'What does the man say he will do next?', 'B', '3', '호주식 발음 → 미국식 발음||M: Rachel [13] Richmond Hotel has decided to hire our company to renovate their lobby.||W: Wow! Thats great news. [13] I heard many interior companies sent them proposals.||M: They liked our unique design. I want you and John to take care', 5, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (259,4, 'What did the woman recently purchase?', 'D', '3', '영국식 발음 → 미국식 발음||M1: Customer service desk. How may I assist you?||W: Hello. [16] I purchased a dishwasher at your store last Monday but I havent received it yet.||M1: Im going to transfer you to the home appliances department. Hold on please.||M2: Hello ', 6, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (260,4, 'What information is the woman asked to provide?', 'A', '3', '영국식 발음 → 미국식 발음||M1: Customer service desk. How may I assist you?||W: Hello. [16] I purchased a dishwasher at your store last Monday but I havent received it yet.||M1: Im going to transfer you to the home appliances department. Hold on please.||M2: Hello ', 6, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (261,4, 'What does Kevin say he will do?', 'C', '3', '영국식 발음 → 미국식 발음||M1: Customer service desk. How may I assist you?||W: Hello. [16] I purchased a dishwasher at your store last Monday but I havent received it yet.||M1: Im going to transfer you to the home appliances department. Hold on please.||M2: Hello ', 6, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (262,4,'What will the speakers company build?', 'C', '3', '호주식 → 영국식 발음||M: Abigail lets talk about the construction of the new building. [19] The developer wants to start advertising for the new office space in September so we need to begin construction on schedule||W: Well Im working on a traffic control plan n', 7, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (263,4, 'Look at the graphic. Where will some workers be directing traffic?', 'B', '3', '호주식 → 영국식 발음||M: Abigail lets talk about the construction of the new building. [19] The developer wants to start advertising for the new office space in September so we need to begin construction on schedule||W: Well Im working on a traffic control plan n', 7, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (264,4, 'What does the man ask the woman to do?', 'A', '3', '호주식 → 영국식 발음||M: Abigail lets talk about the construction of the new building. [19] The developer wants to start advertising for the new office space in September so we need to begin construction on schedule||W: Well Im working on a traffic control plan n', 7, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (265,4, 'Why is the man calling?', 'B', '3', '영국식 발음 → 미국식 발음||W: Thanks for calling the Cooper Eye Center. How can I help ||M: Hi my name is Steve Hoover and Id like to set up a time to see Dr. Larson. He prescribed me glasses last year. ||W: OK. Thats  no problem. We have an appointment available w', 8, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (266,4, 'What is mentioned about Dr. Larson?', 'C', '3', '영국식 발음 → 미국식 발음||W: Thanks for calling the Cooper Eye Center. How can I help ||M: Hi my name is Steve Hoover and Id like to set up a time to see Dr. Larson. He prescribed me glasses last year. ||W: OK. Thats  no problem. We have an appointment available w', 8, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (267,4, 'Why does the man decline an offer?', 'D', '3', '영국식 발음 → 미국식 발음||W: Thanks for calling the Cooper Eye Center. How can I help ||M: Hi my name is Steve Hoover and Id like to set up a time to see Dr. Larson. He prescribed me glasses last year. ||W: OK. Thats  no problem. We have an appointment available w', 8, '', NOW(), NOW());

INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (268,4, 'Who most likely is the speaker?', 'B', '4', ' 호주식 발음||Todays tour will be slightly different than previous ones as we just opened the new West Wing. This adjacent structure was designed by Brenda Keen. She is famous for glass structures that allow in lots of natural light. This space has been constr', 5, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (269,4, 'What does the speaker say about Mr. Falke? ', 'C', '4', '호주식 발음||Todays tour will be slightly different than previous ones as we just opened the new West Wing. This adjacent structure was designed by Brenda Keen. She is famous for glass structures that allow in lots of natural light. This space has been constru', 5, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (270,4, 'What are the listeners asked to do?', 'D', '4', '호주식 발음||Todays tour will be slightly different than previous ones as we just opened the new West Wing. This adjacent structure was designed by Brenda Keen. She is famous for glass structures that allow in lots of natural light. This space has been constru', 5, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (271,4, 'Look at the graphic. What company do the listeners most likely work for?', 'A', '4', '미국식 발음||We commissioned a sales report for the previous quarter and our company came in second place in phone sales in the United States. These numbers include revenue from all models on the market. ||The report validates our previous efforts as the newes', 6, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (272,4, 'How does a company want to achieve a goal? ', 'B', '4', '미국식 발음||We commissioned a sales report for the previous quarter and our company came in second place in phone sales in the United States. These numbers include revenue from all models on the market. ||The report validates our previous efforts as the newes', 6, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (273,4, 'What will most likely happen next?', 'D', '4', '미국식 발음||We commissioned a sales report for the previous quarter and our company came in second place in phone sales in the United States. These numbers include revenue from all models on the market. ||The report validates our previous efforts as the newes', 6, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (274,4, 'What is the class mainly about?', 'B', '4', '영국식 발음||Thank you for attending this class offered by the Nanaimo Regional Community Center. [22] Im Shawn Park and I will be teaching you about photography techniques.||With 20 years of experience as a nature photographer Im excited to share my knowledge', 7, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (275,4, 'What is mentioned about tomorrows class?', 'C', '4', '영국식 발음||Thank you for attending this class offered by the Nanaimo Regional Community Center. [22] Im Shawn Park and I will be teaching you about photography techniques.||With 20 years of experience as a nature photographer Im excited to share my knowledge', 7, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (276,4, 'What will the speaker do next?', 'A', '4', '영국식 발음||Thank you for attending this class offered by the Nanaimo Regional Community Center. [22] Im Shawn Park and I will be teaching you about photography techniques.||With 20 years of experience as a nature photographer Im excited to share my knowledge', 7, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (277,4, 'What kind of event is the speaker discussing?', 'D', '4', '미국식 발음||As you all know [25] Tom Kleins new fashion presentation is just two weeks away. I would like to inform you that there will be a dress rehearsal next Monday.|| Also some of you have final costume fittings with Mr. Klein tomorrow. He has already sc', 8, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (278,4, 'What does the speaker imply when she says||"Many people will be attending"?', 'B', '4', '미국식 발음||As you all know [25] Tom Kleins new fashion presentation is just two weeks away. I would like to inform you that there will be a dress rehearsal next Monday.|| Also some of you have final costume fittings with Mr. Klein tomorrow. He has already sc', 8, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (279,4, 'What does the speaker remind the listeners to pick up?', 'A', '4', '미국식 발음||As you all know [25] Tom Kleins new fashion presentation is just two weeks away. I would like to inform you that there will be a dress rehearsal next Monday.|| Also some of you have final costume fittings with Mr. Klein tomorrow. He has already sc', 8, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (280,4, 'What does the speaker say happened to the company recently?', 'D', '4', '호주식 발음||Hi everyone. [28] Since the number of our clients has significantly increased we had to move to a larger space. Next month we plan to hire more employees and we are also going to purchase five new copiers. ||Yesterday we conducted an inventory and', 9, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (281,4,'Look at the graphic. What is the code number of the item that will be ordered today?', 'B', '4', '호주식 발음||Hi everyone. [28] Since the number of our clients has significantly increased we had to move to a larger space. Next month we plan to hire more employees and we are also going to purchase five new copiers. ||Yesterday we conducted an inventory and', 9, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (282,4, 'What does the speaker suggest doing?', 'C', '4', '호주식 발음||Hi everyone. [28] Since the number of our clients has significantly increased we had to move to a larger space. Next month we plan to hire more employees and we are also going to purchase five new copiers. ||Yesterday we conducted an inventory and', 9, '', NOW(), NOW());

INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (283,4, 'All registration paperwork should ---- within two days if applicants do not wish to forfeit their reservations.', 'B', '5', '동사의 형태||조동사(should) 다음에는 동사원형 (A)(B)(D)가 올 수 있다. 등록 서류가 제출되다’라는 수동의 의미가 되어야 하므로 수동태(B) be submitted가 정답이다. 능동태를 만드는 (A)와 (D)는 답이 될 수 없다.', 1, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (284,4, 'Although Steve Pearson used to ---- as a statistical analyst for a private corporation he is now a financial consultant for the government.', 'C', '5', '동사의 형태||조동사처럼 쓰이는 표현(used to) 다음에도 동사원형이 와야 하므로 (C) work가 정답이다. 참고로 used to + 동사원형은 ~ 하곤 했다’라는 의미이고 be used to + -ing는 ~하는 데 익숙하다’라는 의미인 것도 알아두자.', 2, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (285,4, 'Until recently the Family Entertainment Arcade located in the mall ---- not generating the revenue its owners expected.', 'B', '5', '동사의 형태||문장에 동사가 없으므로 빈칸에는 -ing(generating) 앞에 와서 동사 형태를 만드는 be동사 (A)(B)가 정답의 후보이다. 과거시간 표현(Until recently)이 있으므로 과거 시제인 (B) was가 정답이다.', 3, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (286,4, 'Because the positions need to be filled immediately applications must ---- no later than March 21.', 'D', '5', '동사의 형태||조동사(must) 다음에는 동사원형 (A)(D)가 와야 한다. 지원서에 소인이 찍히다’라는 수동의 의미가 되어야 하므로 수동태 (D) be postmarked가 정답이다.', 4, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (287,4, 'The supervisor insists that notification ---- at least one month in advance if a project deadline cannot be met.', 'C', '5', '동사의 형태||조동사(must) 다음에는 동사원형 (A)(D)가 와야 한다. 지원서에 소인이 찍히다’라는 수동의 의미가 되어야 하므로 수동태 (D) be postmarked가 정답이다.', 4, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (288,4, 'A series of earthquakes has caused ---- to residential and commercial areas of several major cities in Southeast Asia.', 'C', '5', '동사의 형태||타동사(has caused) 뒤에 목적어 자리를 채우는 문제이다. 목적어가 될 수 있는 명사 (C) damage(피해)가 정답이다. to 부정 사 (D) to damage의 동사원형 damage(피해를 입히다는 뒤에 목적어가 있어야 하는 타동사인데 이 경우 뒤에 목적어 없이 혼자 쓰일 수 없으므로 답이 될 수 없다.', 5, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (289,4, 'During the presentation the marketing manager will ---- about the need to target consumers from key demographic groups with new products.', 'C', '5', '동사의 형태||목적어(the need) 앞에 전치사(about)가 있는 것으로 보아 빈칸에는 자동사 (A)(C)가 정답의 후보이다. 전치사 about과 함께 쓰여 ~에 대해 이야기하다’라는 의미를 만드는 자동사 (C)talk가 정답이다. (B)와 (D)는 전치사 없이 목적어를 바로 가져야 하는 타동사이므로 답이 될 수 없다.', 6, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (290,4, 'Because this year marks the companys fiftieth anniversar Maguire Incorporated will ---- the occasion with a massive party.', 'B', '5', '동사의 형태||조동사(will) 다음에는 동사원형이 와야 하므로 (B) celebrate가 정답이다.', 7, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (291,4, 'The marketing team will finalize the timetable when they ---- ready to begin the market research for the region.', 'B', '5', '동사의 형태||when절의 동사 자리를 채우는 문제이다. 빈칸 뒤의 형용사(ready) 앞에 올 수 있는 동사는 be동사이므로 (B)(D)가 정답의 후보이다. when이 이끄는 시간절에서는 미래를 나타내기 위해 현재 시제를 쓰므로 현재 시제 (B) are가 정답이다. 동사원형 (A) be는 동사 자리에 올 수 없으므로 답이 될 수 없다.', 8, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (292,4, 'The inspector recommends that the factorys waste disposal equipment ---- to lessen the risk of environmental damage.', 'C', '5', '동사의 형태||주절에 제안을 나타내는 동사(recommends)가 왔으므로 종속절의 동사로는 원형 (A)(C)가 와야 한다. that절의 주어(the factorys waste disposal equipment)와 동사(upgrade)가 공장의 폐기물 처리 설비가 개선되다라는 의미의 수동 관계이므로 수동태 (C) be upgraded가 정답이다.', 9, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (293,4, 'A test was given to the applicants to eliminate those who do not ---- the basic knowledge requirements for the job.', 'A', '5', '동사의 형태||조동사(do) 다음에는 동사원형 (A)(C)가 와야 한다. 사람들이 요건을 충족시키다라는 능동의 의미가 되어야 하므로 능동태 동 사 (A) satisfy가 정답이다.', 8, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (294,4, '---- the sudden collapse of the firm hundreds of people found themselves without jobs.', 'D', '5', '동사의 형태||이 문장은 주어(hundreds of people) 동사(found) 목적어(themselves)를 갖춘 완전한 절이므로 ---- the sudden collapse of the firm은 수식어 거품으로 보아야 한다. 이 수식어 거품은 동사가 없는 거품구이므로 거품구를 이끌 수 있는 전치사 (A)(D)가 와야 한다.', 7, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (295,4, 'To avoid incurring a budget deficit the finance team ---- expenses that it considered inessential.', 'C', '5', '동사의 형태||문장에 동사가 없으므로 빈칸에는 동사 (A)(C)(D)가 와야 한다. 주어(the finance team)가 단수 주어이며 재무팀이 비용을 삭감하다라는 능동의 의미가 되어야 하므로 능동태 동사 (C) trimmed가 정답이다. (A) trim은 복수 동사이므로 답이 될 수 없다.', 8, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (296,4, 'Because many employees have vacations scheduled in August the editor has ---- that the deadline for the photography book be extended to October.', 'C', '5', '동사의 형태||빈칸 뒤에 목적어(that ~ October)가 온 것으로 보아 빈칸에는 have동사(has)와 함께 완료형 동사를 만드는 p.p.형 (C)(D) 가 와야 한다. has 다음에 (C)를 넣으면 능동태 (D)를 넣으면 수동태 동사가 된다. that절 이하를 요청하다라는 능동의 의미 가 맞으므로 (C) requested가 정답이다', 9, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (297,4, 'The shipping costs indicated on our Web site are an  ---- and may not match the final charge.', 'B', '5', '어휘 고르기||최종 확정된 요금은 “견적서 추정값”과 일치하지 않을 수 있다고 하는 것이 적절하다. 정답 (B) (A) attempt 시도 (B) estimate 추정치 견적서 (C) omission 생략 누락 (D) objective 목적 목표', 4, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (298,4, 'Xia Li has successfully completed the training program at Dai Car Manufacturing and is now --- for promotion to assembly-line operator.', 'A', '5', '어휘 고르기||be eligible for (~할 자격이 있다)를 덩어리로 기억하자.(B) possible 가능한 (C) decisive 결정적인 결단력 있는 (D) significant 상당한 중요한', 5, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (299,4, 'Renovations to the Kwon Art Gallery will ---- begin as soon as a contractor is selected.', 'C', '5', '어휘 고르기||(A)는 주로 현재시제와 (B)는 주로 과거시제와 (D)는 주로 현재나 과거완료시제와 주로 쓰인다. 정답 (C) (A) 보통 (B) 이전에 (C) 아마도 (D) 최근에(=recently) ', 6, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (300,4, 'Seminars at the Prentice Street Business Center will be ---- to twenty people to allow for interactive discussions and personalized attention.', 'B', '5', '어휘 고르기||뒤에 구체적으로 한정하는 숫자(20명)가 나왔으므로 20명으로 “제한된다”는 것이 적절하다. 정답 (B)(A) 시작된 (B) 제한된 (C) 남겨진 (D) 주장된 단언된', 7, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (301,4, 'In an ---- to conserve printer paper please make double-sided copies on photocopy machine whenever possible.', 'C', '5', '어휘 고르기||in an effort to V(~하기 위한 노력으로)를 덩어리로 기억하자.(A) 결과 (B) 예시 (C) 노력 (D) 계정 계좌', 8, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (302,4, 'To expedite delivery of your order parts are sent directly from the suppliers. ---- your order might arrive in several shipments.', 'D', '5', '어휘 고르기||부품들이 공급업체에서 직접 배송된다고 했고 문맥상 “그 결과” 배송이 여러 차례 이루어지지만 배송비 추가는 없을 것이다라 는 것이 적절하다. 정답 (D)(A) 대신에 (B) 예를 들어 (C) 대조적으로 (D) 그 결과', 9, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (303,4, '', 'B', '6', '명사 자리||목적은 최신 정보를 제공하기 위함이다 objection(반대)을 쓰면 반대는 최신 정보를 제공하기 위함이다’ 라는 어색한 의미가 된다.', 6, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/by-part-6-1.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (304,4, '', 'C', '6', '동사 자리||문장에 동사가 없으므로 동사 (C) suggest(제안하다)가 정답이다. 명사 (A) 준동사 (B)와 형용사 (D)는 동사 자리에 올 수 없다.', 7, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/by-part-6-1.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (305,4, '', 'C', '6', '내용 이해||인터넷이 연결된 텔레비전에 광고하는 것을 반드시 ---- 해야 한다 라는 문맥이므로 모든 보기가 정답의 후보 이다. ||지문 앞부분에서 글쓴이가 현재의 방송 광고 동향에 대한 최신 정보를 제공하기 위해 워크숍을 준비하는 것을 생각하고 있었다고 한 후 전통적인 텔레비전을 많이 보지 않을 수도 있는 시청자들에게 호소하는 방법에 대한 더 깊은 이해가 필요하다', 7, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/by-part-6-1.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (306,4, '', 'B', '6', '문맥상 알맞은 문장 고르기||의미이므로 명사 (B) objective(목적)가  정답이다. (C) 앞 문장에서텔레비전을 많이 보지 않을 수도 있는 시청자들에게 호소하는 방법에 대한 더 깊은 이해가 필요하다고 했으므로(we require a better ~~ traditional television)||빈칸에는 고객들이 혁신적인 방법으로 광고하는 것을 희망 하고 있기 때문에 이것이 중요하다는 내용이 들어가야 함을 알 수 있다.', 7, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/by-part-6-1.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (307,4, '', 'B', '6', '동사 자리||동사 is 앞에 주어자리가 비어 있으므로 빈칸에는 주어가 필요하다. to 부정사구(to keep abreast of advances)가 as가 이끄는 부사절의 진짜주어이므로 빈칸에는 가짜주어가 와야 한다.||가짜주어가 될 수 있는 it과 there 중 to 부정사구를 진짜주어로 가질 수 있는 (B) it이 정답이다.', 8, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/by-part-6-2.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (308,4, '', 'C', '6', '동사 형태||이 문장은 주어(the association) 동사(is inviting) 목적어(specialists)를 갖춘 완전한 절이므로 ---- various fields는 수식어 거품으로 보아야 한다. 이 수식어 거품은 동사가 없는 거품구이므로 거품구를 이끌 수 있는 전치사 (C) from이 정답이다.', 8, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/by-part-6-2.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (309,4, '', 'D', '6', '내용 이해||의사들과 연구자들이 전문지식을 ----하도록 하다라는 문맥이므로 (B) evaluate(평가하다) (D) share(공유하다)가 정답의 후보이다. 빈칸이 있는 문장만으로 정답을 고를 수 없으므로 주변 문맥이나 전체 문맥을 파악해야 한다.', 8, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/by-part-6-2.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (310,4, '', 'A', '6', '문맥상알맞은 문장 고르기||앞 부분에서 전국의료협회는 다양한 의료 관련 정보를 포함하는 웹사이트를 설계하고 있다고 했고 이것은 웹사이트를 종합적이고 가치 있는 의학 자원으로 만드는 데 도움이 될 것이라고 했으므로 빈칸에는 그 정보들이 환자의 삶을 개선시키거나 살릴 수 있다는 내용이 들어가야함', 8, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/by-part-6-2.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (311,4, 'Why was the letter sent to Mr. Branson? ', 'B', '7', '내용 이해||TCA 플래티넘 카드 계정으로 업그레이드되었다는 소식을 전하고 있으므로 (B)가 정답이다. 단서의 upgraded to a TCA Platinum account가 정답에서 a change in membership status로 표현되었다.', 7, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/by-part-7-1.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (312,4, 'What is included in the letter? ', 'A', '7', '내용 이해 ||새로운 회원 카드가 동봉되어 있다고 했으므로 (A)가 정답이다. 단서의 enclosed가 질문에서 included로 표현되었다. (D) 여기에서 소책자는 종이 책이 아니라 웹 사이트에서 내려받는 파일이다.', 6, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/by-part-7-1.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (313,4, 'What is Mr. Branson asked to do?', 'D', '7', '내용 이해 ||웹  사이트에서  내려받을  수  있는  소책자를  읽으라고  했으므로 (D)가  정답이다.  단서의 read the TCA Platinum booklet이 정답에서 Review an information file로 표현되었다.', 6, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/by-part-7-1.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (314,4, 'What is the purpose of this form?', 'D', '7', '내용 이해||이 서식은 병가/휴가 및 결근 신청서(Sick leave/vacation time Leave of absence request form)라는 제목 에서부터 목적이 무엇인지 단서를 찾을 수 있다. 또 본문의 I want to use 10 days of sick leave /vacation (circle one)에서도 병가 신청을 하기 위한 서식임을 확인할 수 있다.', 8, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/by-part-7-2.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (315,4, 'Why does Marina need time off work?', 'D', '7', '내용 이해||본문 중간 Reason for leave request: I have to undergo dental surgery.에서 치과 수술을 받기 위해 휴가 신청서를 작성했다는 것을 알 수 있으므로 정답은 (D)이다. surgery가 operation으로 단어가 paraphrase되었다.', 7, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/by-part-7-2.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (316,4, 'How should the copy of the form be handled?', 'B', '7', '내용 이해||Please forward the original signed copy of this request to your Department Head for approval.에서 신청자의 서명이 들어간 원본을 신청자 본인의 부서장에게 승인을 받기 위해 전달해야 한다고 했으므로 정답은 (B).', 8, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/by-part-7-2.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (317,4, 'What is the purpose of the article?', 'B', '7', '내용 이해||샌 퍼낸도 지역의 신생 회사를 소개하는 내용이므로 (B)가 정답이다. 단서의 start-up이 정답에서 new ~business로 표현되었다. 기사 제목에서 new arrival은 직역하면 새로 도착한 사람’을 뜻하며 신제품이나 새로운 회사 등을 나타내는 말이다.', 6, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/by-part-7-3.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (318,4,'What is NOT mentioned as one of Swiftmores services?', 'A', '7', '기계 수리와 관련된 내용은 나오지 않으므로 (A)가 정답이다.', 3, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/by-part-7-3.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (319,4, 'According to the article what is true about some of the companys customers?', 'C', '7', '내용 이해||개인화된 서비스에 만족하고 있다고 했으므로 (C)가 정답이다. 단서의 are satisfied with the personalized service가 정답에서 are content with its customized service 로 표현되었다. customize는 고객의 요구에 맞추어서 상품 등을 바꾼다는 뜻이다. (B) 유럽이 아니라 북미 지역이므로 오답이다.', 6, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/by-part-7-3.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (320,4, 'Who is a business analyst? ', 'D', '7', '내용 이해||(A) (B) 두 명은 회사의 설립자이며 (C)는 마케팅 부장이다. 정답은 (D)', 5, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/by-part-7-3.png', NOW(), NOW());

INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (321,3, '', 'C', '1', '미국식 발음||(A) Hes watering the lawn.||(B) Hes walking on a path.||(C) Hes mowing the grass.||(D) Hes repairing a machine.', 1, 'https://kr.object.ncloudstorage.com/toeicdoit/part1-1.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (322,3, '', 'D', '1', '호주식 발음||(A) Shes opening some packages.||(B) Shes assembling a cabinet.||(C) Shes holding a metal rack.||(D) Shes putting some boxes on a shelf.', 1, 'https://kr.object.ncloudstorage.com/toeicdoit/part1-2.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (323,3, '', 'C', '1', '캐나다식 발음||(A) One of the women is looking through the window.||(B) One of the women is reviewing some documents.||(C) One of the men is giving a presentation.||(D) One of the men is typing on a laptop.', 2, 'https://kr.object.ncloudstorage.com/toeicdoit/part1-3.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (324,3, '', 'A', '1', '영국식 발음||(A) A cord has been plugged into an outlet.||(B) The woman is placing some objects in a cart.||(C) The woman is grasping the handles of a bag.||(D) Pieces of luggage are being cleared off of a bench.', 2, 'https://kr.object.ncloudstorage.com/toeicdoit/part1-4.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (325,3, '', 'B', '1', '호주식 발음||(A) A clerk is hanging a sign above some merchandise.||(B) Some customers are browsing at an outdoor market.||(C) Stalls have been set up near a city street.||(D) A shopper is buying a book from a vendor.', 3, 'https://kr.object.ncloudstorage.com/toeicdoit/part1-5.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (326,3, '', 'D', '1', '미국식 발음||(A) A construction crew is spreading out gravel.||(B) Heavy machinery is parked on the pavement.||(C) A tire on the vehicle is being replaced.||(D) A dump truck is being loaded with dirt.', 3, 'https://kr.object.ncloudstorage.com/toeicdoit/part1-6.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (327,3, '', 'D', '1', '미국식 발음||(A) Hes cutting the grass.||(B) Hes reaching for a tool.||(C) Hes carrying some wood.||(D) Hes wearing gloves', 4, 'https://kr.object.ncloudstorage.com/toeicdoit/level-test/level-1.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (328,3, '', 'C', '1', '호주식 발음||(A) The glasses are being filled.||(B) The napkins are being folded.||(C) Lights are hanging from the ceiling.||(D) Guests are entering a restaurant.', 4, 'https://kr.object.ncloudstorage.com/toeicdoit/level-test/level-2.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (329,3, '', 'A', '1', '영국식 발음||(A) A man is cleaning a monitor.||(B) A woman is pointing at a window.||(C) People are arranging some furniture.||(D) People are studying some charts.', 5, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/bypart-1.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (330,3, '', 'B', '1', '미국식 발음||(A) Some equipment is being assembled.||(B) There are stools arranged in a row.||(C) Some weights are resting on a rack.||(D) A plant has been situated in a hallway.', 5, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/bypart-2.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (331,3, '', 'C', '1', '호주식 발음||(A) A man is reading a book.||(B) A man is putting on a hat.||(C) A man is reaching for a publication.||(D) A man is taking off his jacket.', 6, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/bypart-3.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (332,3, '', 'D', '1', '영국식 발음||(A) Theyre having a conversation over a meal.||(B) Some of them are looking at a menu.||(C) Theyre arranging some tables.||(D) Some of them are grasping cups.', 6, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/bypart-4.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (333,3, '', 'D', '1', '미국식 발음||(A) Hes cutting the grass.||(B) Hes reaching for a tool.||(C) Hes carrying some wood.||(D) Hes wearing gloves', 7, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/bypart-5.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (334,3, '', 'A', '1', '호주식 발음||(A) The glasses are being filled.||(B) The napkins are being folded.||(C) Lights are hanging from the ceiling.||(D) Guests are entering a restaurant.', 7, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/bypart-6.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (335,3, '', 'B', '1', '영국식 발음||(A) A construction crew is spreading out gravel.||(B) Heavy machinery is parked on the pavement.||(C) A tire on the vehicle is being replaced.||(D) A dump truck is being loaded with dirt.', 8, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/bypart-7.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (336,3, '', 'C', '1', '영국식 발음||(A) Some backpacks are being stored.||(B) They are looking at a map.||(C) They are standing at a ticket booth.||(D) The railway lines are being built.', 8, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/bypart-8.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (337,3, '', 'D', '1', '미국식 발음||(A) Some napkins are being folded.||(B) Some chairs are occupied.||(C) Some meals have been served.||(D) Some silverware has been laid out.', 9, 'https://kr.object.ncloudstorage.com/toeicdoit/%ED%8C%8C%ED%8A%B8%EB%B3%84/bypart-9.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (338,3, '', 'C', '1', '호주식 발음||(A) The glasses are being filled.||(B) The napkins are being folded.||(C) Lights are hanging from the ceiling.||(D) Guests are entering a restaurant.', 9, 'https://kr.object.ncloudstorage.com/toeicdoit/level-test/level-2.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (339,3, 'Mark your answer on your answer sheet.', 'C', '2', '캐나다식 발음 → 영국식 발음||Who was named Employee of the Month?||(A) I edited the employee manual.||(B) At Harveys company.||(C) Angie received the award.', 1, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (340,3, 'Mark your answer on your answer sheet.', 'C', '2', '호주식 발음 → 미국식 발음||When would you like to go to the movies?||(A) The film was very long.||(B) I liked the Grande Cinema.||(C) Lets leave around eight.', 1, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (341,3, 'Mark your answer on your answer sheet.', 'A', '2', '영국식 발음 → 캐나다식 발음||Are the front doors of the store locked?||(A) Yes, I checked them.||(B) Its a popular shop.||(C) Behind the building.', 2, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (342,3, 'Mark your answer on your answer sheet.', 'C', '2', '호주식 발음 → 미국식 발음||Could you pick me up around 6 oclock?||(A) The last time we met.||(B) I parked down the street.||(C) That shouldnt be a problem.', 2, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (343,3, 'Mark your answer on your answer sheet.', 'C', '2', '캐나다식 발음 → 영국식 발음||Where is the human resources seminar being held?||(A) On hiring strategies.||(B) It will begin on Saturday.||(C) At the Lindstrom Convention Center.', 3, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (344,3, 'Mark your answer on your answer sheet.', 'B', '2', '호주식 발음 → 영국식 발음||Why isnt Patrick at the reception desk?||(A) We should replace our office furniture.||(B) Hes running some errands.||(C) The receptionist was very friendly.', 3, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (345,3, 'Mark your answer on your answer sheet.', 'B', '2', '미국식 발음 → 호주식 발음||Should we try to visit Paris during our vacation?||(A) Visiting hours end at 7 P.M.||(B) Ive always wanted to go there.||(C) My father went there on a business trip.', 4, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (346,3, 'Mark your answer on your answer sheet', 'A', '2', '영국식 발음 → 캐나다식 발음||When was the warehouse last inspected?||(A) Sometime in March.||(B) A federal inspector.||(C) The one on Jefferson Street.', 4, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (347,3, 'Mark your answer on your answer sheet.', 'C', '2', '미국식 발음 → 영국식 발음||Who are you going with to the beach?||(A) Yes, for a few hours.||(B) At a nearby resort.||(C) Actually, I cant go.', 5, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (348,3, 'Mark your answer on your answer sheet.', 'A', '2', '캐나다식 발음 → 미국식 발음||How was the yoga class you took at the fitness center?||(A) The session went really well.||(B) By signing up in person.||(C) Theres a gym across the street.', 5, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (349,3, 'Mark your answer on your answer sheet.', 'C', '2', '호주식 발음 → 영국식 발음||Why do we have to attend another workshop?||(A) From Monday to Wednesday.||(B) Because I bought some extra pens.||(C) To learn a new accounting system.', 6, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (350,3, 'Mark your answer on your answer sheet.', 'A', '2', '캐나다식 발음 → 미국식 발음||How many computers were ordered for the department?||(A) You can check the invoice.||(B) On personal laptops only.||(C) He hasnt delivered any yet.', 6, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (351,3, 'Mark your answer on your answer sheet.', 'B', '2', '미국식 발음 → 호주식 발음||What improvements have you made to your house?||(A) We wont move in until this summer.||(B) The living room has been newly decorated.||(C) Its much better this way.', 7, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (352,3, 'Mark your answer on your answer sheet.', 'C', '2', '영국식 발음 → 캐나다식 발음||Youll have to take these documents to Mr. Harper.||(A) Some more paperwork.||(B) Take your time on the assignment.||(C) I believe he left for the day.', 7, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (353,3, 'Mark your answer on your answer sheet.', 'C', '2', '호주식 발음 → 미국식 발음||This manuscript needs to be finalized before 4 P.M.||(A) Lets go before the reading starts.||(B) A novel that I wrote.||(C) Maybe Louis can work on it.', 8, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (354,3, 'Mark your answer on your answer sheet.', 'B', '2', '영국식 발음 → 캐나다식 발음||Why is the downtown library currently closed?||(A) I think its close to here.||(B) They are doing some renovations.||(C) The book was interesting.', 2, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (355,3, 'Mark your answer on your answer sheet.', 'C', '2', '미국식 발음 → 호주식 발음||Did Meredith send you the revised budget proposal?||(A) What do you propose?||(B) If you talk to the financial director.||(C) I just looked over it.', 9, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (356,3, 'Mark your answer on your answer sheet.', 'C', '2', '캐나다식 발음 → 영국식 발음||Were still supposed to organize the product launch, arent we?||(A) Lunch menus are available online.||(B) Consumers seemed pleased with it.||(C) The supervisor wants us to.', 9, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (357,3, 'What problem does the woman mention?', 'A', '3', '영국식 발음 → 호주식 발음||W: Could you take me to the Littleton Mall today? I accidentally bought the wrong size jeans when I went shopping there last week. Id like to exchange them for a smaller pair. M: Sure, but I have some things to do this morning. Im going t', 1, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (358,3, 'Why does the man need to visit the bank?', 'D', '3', '영국식 발음 → 호주식 발음||W: Could you take me to the Littleton Mall today? I accidentally bought the wrong size jeans when I went shopping there last week. Id like to exchange them for a smaller pair. M: Sure, but I have some things to do this morning. Im going t', 1, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (359,3, 'What does the man offer to do this afternoon?', 'C', '3', '영국식 발음 → 호주식 발음||W: Could you take me to the Littleton Mall today? I accidentally bought the wrong size jeans when I went shopping there last week. Id like to exchange them for a smaller pair. M: Sure, but I have some things to do this morning. Im going t', 1, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (360,3, 'What is the conversation mainly about?', 'D', '3', '미국식 발음 → 캐나다식 발음||W:  Paulo, were running low on staples, pens, and pencils here at the office. Id like you to restock them sometime before the end of the week. M:  No problem, Ms. Feingold. I can take care of that tomorrow. Are there any other items you ', 2, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (361,3, 'What does the man ask the woman about?', 'C', '3', '미국식 발음 → 캐나다식 발음||W:  Paulo, were running low on staples, pens, and pencils here at the office. Id like you to restock them sometime before the end of the week. M:  No problem, Ms. Feingold. I can take care of that tomorrow. Are there any other items you ', 2, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (362,3, 'What does the woman suggest?', 'A', '3', '미국식 발음 → 캐나다식 발음||W:  Paulo, were running low on staples, pens, and pencils here at the office. Id like you to restock them sometime before the end of the week. M:  No problem, Ms. Feingold. I can take care of that tomorrow. Are there any other items you ', 2, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (363,3, 'According to the man what will happen next month?', 'B', '3', '호주식 발음 → 미국식 발음 → 영국식 발음||M:    Did you two know that Eun Hee Kim will be retiring next month? I just heard the news. W1: Yes, that came as a shock. She just signed a new five-year contract. W2: Considering how much she seems to like her job, Im surprised', 3, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (364,3, 'What do the women point out?', 'C', '3', '호주식 발음 → 미국식 발음 → 영국식 발음||M:    Did you two know that Eun Hee Kim will be retiring next month? I just heard the news. W1: Yes, that came as a shock. She just signed a new five-year contract. W2: Considering how much she seems to like her job, Im surprised', 3, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (365,3, 'What will Claire most likely do tomorrow?', 'C', '3', '호주식 발음 → 미국식 발음 → 영국식 발음||M: Did you two know that Eun Hee Kim will be retiring next month? I just heard the news. W1: Yes, that came as a shock. She just signed a new five-year contract. W2: Considering how much she seems to like her job, Im surprised sh', 3, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (366,3, 'Who most likely is the woman?', 'A', '3', '캐나다식 발음 → 영국식 발음||M: Hello. Im interested in buying a kitchen stove, but Id like to know more about your stores delivery and installation services. Are they included in the price of the product? W: As for delivery, you dont have to worry about that. We pr', 4, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (367,3, 'What does the woman imply when she says “you dont have to worry about that”?', 'B', '3', '캐나다식 발음 → 영국식 발음||M: Hello. Im interested in buying a kitchen stove, but Id like to know more about your stores delivery and installation services. Are they included in the price of the product? W: As for delivery, you dont have to worry about that. We pr', 4, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (368,3, 'What does the woman say about the installation fee?', 'C', '3', '캐나다식 발음 → 영국식 발음||M: Hello. Im interested in buying a kitchen stove, but Id like to know more about your stores delivery and installation services. Are they included in the price of the product? W: As for delivery, you dont have to worry about that. We pr', 4, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (369,3, 'What are the speakers planning to do on Saturday night?', 'A', '3', '미국식 발음 → 호주식 발음||W: Robert, when should I pick you up on Saturday night? M: The concert were going to begins at 8 P.M. Why dont you stop by about 45 minutes earlier? W: But that wont give us enough time to eat something before the show. M: Didnt I tell yo', 5, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (370,3, 'Why will the man be unavailable until 7 P.M.?', 'B', '3', '미국식 발음 → 호주식 발음||W: Robert, when should I pick you up on Saturday night? M: The concert were going to begins at 8 P.M. Why dont you stop by about 45 minutes earlier? W: But that wont give us enough time to eat something before the show. M: Didnt I tell yo', 5, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (371,3, 'What did the man do last week?', 'D', '3', '미국식 발음 → 호주식 발음||W: Robert, when should I pick you up on Saturday night? M: The concert were going to begins at 8 P.M. Why dont you stop by about 45 minutes earlier? W: But that wont give us enough time to eat something before the show. M: Didnt I tell yo', 5, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (372,3, 'What is the man working on?', 'D', '3', '캐나다식 발음 → 영국식 발음||M: Danielle, are you busy right now? Im putting together some invitations for next months charity banquet. Im supposed to send 200 out by today, and Ive only completed 50. Would you be willing to help me out? W:  The project Im working o', 6, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (373,3, 'Why does the woman say “The project Im working on isnt very urgent”?', 'D', '3', '캐나다식 발음 → 영국식 발음||M: Danielle, are you busy right now? Im putting together some invitations for next months charity banquet. Im supposed to send 200 out by today, and Ive only completed 50. Would you be willing to help me out? W:  The project Im working o', 6, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (374,3, 'What does the woman say she will do?', 'D', '3', '캐나다식 발음 → 영국식 발음||M: Danielle, are you busy right now? Im putting together some invitations for next months charity banquet. Im supposed to send 200 out by today, and Ive only completed 50. Would you be willing to help me out? W:  The project Im working o', 6, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (375,3, 'Where most likely are the speakers?', 'D', '3', '영국식 발음 → 호주식 발음||W:  Hi. Id like to sign up for a membership. I live just down the block from your health club, so this would be a convenient place for me to exercise. M: No problem. I can have you signed up within the next 15 minutes. Afterwards, Ill sho', 7, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (376,3, 'What does the man offer to do for the woman?', 'B', '3', '영국식 발음 → 호주식 발음||W:  Hi. Id like to sign up for a membership. I live just down the block from your health club, so this would be a convenient place for me to exercise. M: No problem. I can have you signed up within the next 15 minutes. Afterwards, Ill sho', 7, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (377,3, 'What is the woman interested in doing?', 'A', '3', '영국식 발음 → 호주식 발음||W:  Hi. Id like to sign up for a membership. I live just down the block from your health club, so this would be a convenient place for me to exercise. M: No problem. I can have you signed up within the next 15 minutes. Afterwards, Ill sho', 7, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (378,3, 'What is the purpose of the womans call?', 'C', '3', '미국식 발음 → 캐나다식 발음||W:  Hello. My name is Petra Reynolds. Im calling to check on the delivery status of a package. My order number is 10987. M: OK . . . The most recent shipping update is from yesterday. At that point, the package was still in transit. Itll', 8, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (379,3, 'Why is the woman concerned?', 'B', '3', '미국식 발음 → 캐나다식 발음||W:  Hello. My name is Petra Reynolds. Im calling to check on the delivery status of a package. My order number is 10987. M: OK . . . The most recent shipping update is from yesterday. At that point, the package was still in transit. Itll', 8, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (380,3, 'What does the man recommend?', 'A', '3', '미국식 발음 → 캐나다식 발음||W:  Hello. My name is Petra Reynolds. Im calling to check on the delivery status of a package. My order number is 10987. M: OK . . . The most recent shipping update is from yesterday. At that point, the package was still in transit. Itll', 8, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (381,3, 'What did Steve do in the morning?', 'C', '3', '캐나다식 발음 → 영국식 발음 → 호주식 발음||M1: Sorry I couldnt come sooner. I spent the whole morning putting up a small exhibit near the museums entrance. W: Thats OK, Steve. Um, a shipment of paintings from a gallery in Rome arrived yesterday. I was supposed to move th', 9, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (382,3, 'What does the woman need help with?', 'A', '3', '캐나다식 발음 → 영국식 발음 → 호주식 발음||M1: Sorry I couldnt come sooner. I spent the whole morning putting up a small exhibit near the museums entrance. W: Thats OK, Steve. Um, a shipment of paintings from a gallery in Rome arrived yesterday. I was supposed to move th', 9, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (383,3, 'What does the woman suggest?', 'B', '3', '캐나다식 발음 → 영국식 발음 → 호주식 발음||M1: Sorry I couldnt come sooner. I spent the whole morning putting up a small exhibit near the museums entrance. W: Thats OK, Steve. Um, a shipment of paintings from a gallery in Rome arrived yesterday. I was supposed to move th', 9, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (384,3, 'What type of business is the listener calling?', 'A', '4', '미국식 발음||You have reached Digital Express, Arlingtons largest computer retailer. We are currently closed for the weekend but will reopen on Monday at 9 A.M. We would also like to remind our clients that Digital Express will be undergoing a major change thi', 1, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (385,3, 'According to the speaker what will happen in July?', 'C', '4', '미국식 발음||You have reached Digital Express, Arlingtons largest computer retailer. We are currently closed for the weekend but will reopen on Monday at 9 A.M. We would also like to remind our clients that Digital Express will be undergoing a major change thi', 1, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (386,3, 'What should listeners do if they want additional information?', 'A', '4', '미국식 발음||You have reached Digital Express, Arlingtons largest computer retailer. We are currently closed for the weekend but will reopen on Monday at 9 A.M. We would also like to remind our clients that Digital Express will be undergoing a major change thi', 1, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (387,3, 'What will arrive next week?', 'D', '4', '호주식 발음||I know many of you often have to use your personal cell phones for business-related calls, so I have decided to purchase work phones for everyone. I was hoping to have them by today, but they arent going to get here until next week. Just remember ', 2, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (388,3, 'What are listeners instructed to do?', 'D', '4', '호주식 발음||I know many of you often have to use your personal cell phones for business-related calls, so I have decided to purchase work phones for everyone. I was hoping to have them by today, but they arent going to get here until next week. Just remember ', 2, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (389,3, 'What will the speaker most likely do this afternoon?', 'B', '4', '호주식 발음||I know many of you often have to use your personal cell phones for business-related calls, so I have decided to purchase work phones for everyone. I was hoping to have them by today, but they arent going to get here until next week. Just remember ', 2, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (390,3, 'Why does Ms. Fox want to participate in the event?', 'A', '4', '캐나다식 발음||Hi, Karen. This is Min calling. Our non-profit organization is going to set up a booth at a local job fair on Thursday. Ms. Fox, the public relations director, signed us up for the event. She thinks it will be a good opportunity to reach out to y', 3, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (391,3, 'Why does the speaker say “I wish we had done this sooner”?', 'D', '4', '캐나다식 발음||Hi, Karen. This is Min calling. Our non-profit organization is going to set up a booth at a local job fair on Thursday. Ms. Fox, the public relations director, signed us up for the event. She thinks it will be a good opportunity to reach out to y', 3, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (392,3, 'Why does the speaker want the listener to help?', 'D', '4', '캐나다식 발음||Hi, Karen. This is Min calling. Our non-profit organization is going to set up a booth at a local job fair on Thursday. Ms. Fox, the public relations director, signed us up for the event. She thinks it will be a good opportunity to reach out to y', 3, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (393,3, 'What is going to be built?', 'B', '4', '영국식 발음||In other news, legislators have finally approved construction of the Southview Public Hospital in Boulder, Colorado. The purpose of the project is to address a growing need for additional health services in the state. Currently, there are only six', 4, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (394,3, 'What is the purpose of the project?', 'C', '4', '영국식 발음||In other news, legislators have finally approved construction of the Southview Public Hospital in Boulder, Colorado. The purpose of the project is to address a growing need for additional health services in the state. Currently, there are only six', 4, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (395,3, 'What problem does the speaker mention?', 'D', '4', '영국식 발음||In other news, legislators have finally approved construction of the Southview Public Hospital in Boulder, Colorado. The purpose of the project is to address a growing need for additional health services in the state. Currently, there are only six', 4, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (396,3, 'What does the speaker say about BLO Group?', 'C', '4', '미국식 발음||If you need help managing your finances, contact BLO Group today! At BLO Group, we provide expert advice that you wont find anywhere else. Since our establishment 100 years ago, we have come to be one of the most trusted investment companies in th', 5, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (397,3, 'What does BLO Group specialize in?', 'B', '4', '미국식 발음||If you need help managing your finances, contact BLO Group today! At BLO Group, we provide expert advice that you wont find anywhere else. Since our establishment 100 years ago, we have come to be one of the most trusted investment companies in th', 5, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (398,3, 'What does BLO Group guarantee to provide customers with?', 'B', '4', '미국식 발음||If you need help managing your finances, contact BLO Group today! At BLO Group, we provide expert advice that you wont find anywhere else. Since our establishment 100 years ago, we have come to be one of the most trusted investment companies in th', 5, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (399,3, 'What is the purpose of the talk?', 'A', '4', '호주식 발음||Thank you all for coming to our annual shareholders meeting. We have a lot to accomplish today, so let me provide a brief outline of our agenda before we begin. Well start the meeting by reviewing our sales levels from the previous 12 months. To h', 6, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (400,3, 'According to the speaker what will Mr. Palmer do?', 'D', '4', '호주식 발음||Thank you all for coming to our annual shareholders meeting. We have a lot to accomplish today, so let me provide a brief outline of our agenda before we begin. Well start the meeting by reviewing our sales levels from the previous 12 months. To h', 6, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (401,3, 'Why does the speaker say “The companys future depends on the best candidates being selected”?', 'D', '4', '호주식 발음||Thank you all for coming to our annual shareholders meeting. We have a lot to accomplish today, so let me provide a brief outline of our agenda before we begin. Well start the meeting by reviewing our sales levels from the previous 12 months. To h', 6, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (402,3, 'What did the speaker recently receive?', 'C', '4', '캐나다식 발음||Hello, Patricia. Its Connor. I just received an e-mail notification from the governments Residential Safety Agency. Theres a new regulation for residential properties in Dublin. It requires all rental units to have at leastone fire extinguisher t', 7, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (403,3, 'What does the speaker mean when he says “The apartment on Second Street is obviously a concern”?', 'D', '4', '캐나다식 발음||Hello, Patricia. Its Connor. I just received an e-mail notification from the governments Residential Safety Agency. Theres a new regulation for residential properties in Dublin. It requires all rental units to have at leastone fire extinguisher t', 7, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (404,3, 'Why is the speaker unable to perform a task himself?', 'C', '4', '캐나다식 발음||Hello, Patricia. Its Connor. I just received an e-mail notification from the governments Residential Safety Agency. Theres a new regulation for residential properties in Dublin. It requires all rental units to have at leastone fire extinguisher t', 7, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (405,3, 'What did Green World recently do?', 'D', '4', '영국식 발음||Its great to see you all here at this meeting of the Urban Farming Association. As some of you may already know, the environmental organization Green World generously granted our group funding this month in the amount of $10,000. This money was gi', 8, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (406,3, 'What does the speaker say about Green Worlds mission?', 'D', '4', '영국식 발음||Its great to see you all here at this meeting of the Urban Farming Association. As some of you may already know, the environmental organization Green World generously granted our group funding this month in the amount of $10,000. This money was gi', 8, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (407,3, 'What will most likely happen next?', 'B', '4', '영국식 발음||Its great to see you all here at this meeting of the Urban Farming Association. As some of you may already know, the environmental organization Green World generously granted our group funding this month in the amount of $10,000. This money was gi', 8, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (408,3, 'Who most likely is the speaker?', 'B', '4', ' 호주식 발음||Todays tour will be slightly different than previous ones as we just opened the new West Wing. This adjacent structure was designed by Brenda Keen. She is famous for glass structures that allow in lots of natural light. This space has been constr', 9, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (409,3, 'What does the speaker say about Mr. Falke? ', 'C', '4', '호주식 발음||Todays tour will be slightly different than previous ones as we just opened the new West Wing. This adjacent structure was designed by Brenda Keen. She is famous for glass structures that allow in lots of natural light. This space has been constru', 9, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (410,3, 'What are the listeners asked to do?', 'D', '4', '호주식 발음||Todays tour will be slightly different than previous ones as we just opened the new West Wing. This adjacent structure was designed by Brenda Keen. She is famous for glass structures that allow in lots of natural light. This space has been constru', 9, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (411,3, 'Violinist Jonas Garcia will deliver the final performance of ------- long career at the Orville Art Hall this Thursday.', 'B', '5', '인칭 대명사의 격||명사(career) 앞에서 형용사처럼 명사를 꾸밀 수 있는 인칭대명사는 소유격이므로 소 유격 인칭대명사(B) his가 정답이다. 주격 인칭대명사(A), 목적격 인칭대명사(C), 재 귀대명사(D)는 명사를 꾸밀 수 없다.', 1, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (412,3, 'To make certain that trade secrets remain ------- the company employees must fiercely protect them.', 'B', '5', '전치사 선택  위치||‘기업 비밀이 회사 내에 남다라는 의미가 되어야 하므로 전치사 (B) within(~ 내 에)이 정답이다. (A) between(~ 사이에)은 보통 두 사람이나 사물 앞에 쓰이고, (C) among(~ 사이에)은 셋 이상의 사람이나 사물 앞에 쓰여 다음에 복수 명사를 취하 므로 답이 될 수 없다. (D) behind(~ 뒤에)는 ‘기업 비밀이 회사 뒤에 남다라는 어색 한 문맥을 만든다.', 1, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (413,3, '------- employees participate in the company-sponsored health insurance plan is up to them.', 'D', '5', '명사절 접속사||whether 빈칸이 포함된 절(___ employees participate in ~ plan)이 문장의 주어 역할을 하 고 있으므로 문장 내에서 주어로 쓰일 수 있는 명사절을 이끄는 명사절 접속사 (D) Whether(~인지 아닌지)가 정답이다. 수량 표현 또는 상관접속사 (A) Both(둘 다), 부 사 (B) Rather(오히려), 상관접속사 (C) Either(둘 중 하나)는 명사절을 이끌 수 없다.', 2, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (414,3, 'Hagen Corp. mailed out surveys to gauge peoples ------- with the product selections at their local grocery store.', 'A', '5', '[명사 자리] 동명사 vs. 명사||to 부정사(to gauge)의 목적어 역할을 할 수 있는 것은 명사이므로 명사 (A)와 동명 사 (C)가 정답의 후보이다. ‘제품 선택에 대한 사람들의 만족감을 측정하다라는 의 미가 되어야 하므로 명사 (A) satisfaction(만족감)이 정답이다. 동명사 (C)는 ‘제품 선 택에 대한 사람들의 만족시키기를 측정하다라는 어색한 문맥을 만든다. 동사 또는 분사 (B)는 명사 자리에 올 수 없고, to 부정사 (D)', 2, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (415,3, 'FlyThiftys cancellation policy is stricter than ------- of Abu Dhabi Air but people seem to prefer the budget airline.', 'C', '5', '명사–대명사 일치||전치사(than)의 목적어 자리에 올 수 있는 것은 명사이므로 모든 보기가 정답의 후 보이다. 빈칸이 앞에 나온 명사를 대신해 ‘Abu Dhabi 항공의 취소 정책이라는 의 미가 되어야 하므로 단수를 나타내는 지시대명사 (C) that이 정답이다. 지시대명사 (A) those, 부정대명사 (B) many(다수)와 (D) several(몇몇)은 복수를 나타내므로 답 이 될 수 없다.', 3, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (416,3, 'Cremson Dairys ice cream sales were ------- affected when the local news ran a story about contaminated milk products.', 'D', '5', '부사 어휘||‘뉴스에서 오염된 유제품에 관한 이야기를 내보냈을 때 아이스크림 매출액이 부정 적으로 영향을 받았다라는 문맥이므로 부사 (D) negatively(부정적으로)가 정답이다. (A) doubtfully는 ‘의심스럽게, (B) occasionally는 ‘이따금, (C) alternatively는 ‘대신 으로라는 의미이다.', 3, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (417,3, 'Details about the proposed budget cuts will be disclosed at the meeting which is scheduled for tomorrow ------- lunch.', 'D', '5', '전치사 선택  시점||‘회의가 내일 점심 식사 후로 예정되어 있다라는 의미가 되어야 하므로 시점을 나타 내는 전치사 (D) after(~ 후에)가 정답이다. (A) between은 ‘~ 사이에라는 의미로 위 치를, (B) along은 ‘~을 따라서라는 의미로 방향을, (C) below는 ‘~ 아래에라는 의 미로 위치를 나타낸다.', 4, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (418,3, 'Students plan to ------- a petition to the universitys administrative council regarding the proposed tuition fee increase.', 'C', '5', '동사 어휘||‘학생들이 대학교의 행정 위원회에 탄원서를 제출할 계획이다라는 문맥이므로 동사 (C) present(제출하다)가 정답이다. (A) authorize는 ‘위임하다, (B) hire는 ‘고용하다 라는 의미이다. (D) convince(납득시키다)도 해석상 그럴듯해 보이지만, 목적어로 납 득시키는 내용이 아닌 대상이 와야 하므로 답이 될 수 없다.', 4, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (419,3, 'The fifth annual meeting of the Perth Organic Fruit Growers Association took place at a farm ------- the outskirts of town.', 'B', '5', '전치사 선택  장소||‘연례 회의가 도시의 변두리에 있는 농장에서 개최되었다라는 의미가 되어야 하므로 장소를 나타내는 전치사 (B) on(~에)이 정답이다. (A) for는 ‘~을 향해라는 의미로 방향을 나타내거나 ‘~을 위해서라는 의미로 목적을 나타낸다. (C) from은 ‘~에서, ~로부터라는 의미로 방향을, (D) during은 ‘~ 동안이라는 의미로 기간을 나타낸다.', 5, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (420,3, 'The Green Pines Hotel banquet hall has been ------- for the executive dinner next week.', 'D', '5', '동사 어휘||‘연회장이 중역 만찬을 위해 예약되었다라는 문맥이므로 동사 reserve(예약하다)의 과거형 (D) reserved가 정답이다. (A)의 serve는 ‘접대하다, (B)의 communicate는 ‘의사소통하다, (C)의 inquire는 ‘묻다라는 의미이다.', 5, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (421,3, 'If you apply for Patterson Community Colleges courses ------- the deadline you will have to pay a fee.', 'B', '5', '[수식어 거품을 이끄는 것] 전치사 선택  시점||‘기한을 지나서 강좌를 신청하면 수수료를 지불해야 할 것이다라는 의미가 되어야 하므로 시점을 나타내는 전치사 (B) past(~을 지나서)가 정답이다. (A) forward는 ‘~ 쪽으로, ~을 향하여, (C) with는 ‘~과 함께, (D) toward는 ‘~쪽으로, ~을 향하여라 는 의미로 어색한 문맥을 만든다.', 6, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (422,3, 'The restaurant owner gave the diners complimentary beverages as ------- for making a mistake on their order.', 'C', '5', '명사 어휘||‘식당 주인이 손님들에게 실수한 것에 대한 보상으로 무료 음료를 주었다라는 문맥 이므로 명사 (C) compensation(보상)이 정답이다. (A) recommendation은 ‘추천, (B) grievance는 ‘불만, 고충, (D) appreciation은 ‘감사라는 의미이다.', 6, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (423,3, 'The real estate agent who listed the property ------- his client that it had been properly zoned for commercial use.', 'C', '5', '동사 어휘||‘부동산 중개업자가 고객에게 소유지가 상업적 용도로 적절히 구획되어 있다고 확신 시켰다라는 문맥이므로 동사 assure(확신시키다)의 과거형 (C) assured가 정답이다. (A)의 call은 ‘부르다, 이름 짓다라는 의미이다. (B)의 testify(증명하다, 증언하다)도 해 석상 그럴듯해 보이지만, 증명하는 내용을 목적어로 취하는 3형식 동사이므로 답이 될 수 없다. (D)의 manage는 ‘간신히 해내다, 관리하다라는 의미이다.', 7, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (424,3, 'Tax officials ------- carry out audits on random citizens to ensure that they are submitting their financial details accurately.', 'B', '5', '부사 자리||빈칸 뒤의 동사(carry)를 꾸미기 위해서는 부사가 와야 하므로 부사 (B) regularly(정기 적으로)가 정답이다. 형용사 (A), 동사 또는 분사 (C), 명사 (D)는 동사를 꾸밀 수 없다.', 7, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (425,3, 'For the duration of the ceremony all award winners will be seated in an exclusive area ------- the main stage.', 'B', '5', '[수식어 거품을 이끄는 것] 전치사 선택  시점||이 문장은 주어(all award winners)와 동사(will be seated)를 갖춘 완전한 절이므로, ___ the main stage는 수식어 거품으로 보아야 한다. 이 수식어 거품은 동사가 없는 거품구이므로, 거품구를 이끌 수 있는 전치사 (A), (B), (C)가 정답의 후보이다. ‘모든 수상자들은 주 무대 옆의 전용 구역에 앉을 것이다라는 의미이므로 위치를 나타내는 전치사 (B) next', 8, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (426,3, '------- of people are expected to be at the inauguration of the Streetville Farmers Market this Saturday.', 'C', '5', '수량 표현 빈칸||뒤 복수 명사(people)를 꾸밀 수 있는 수량 표현 (C)와 (D)가 정답의 후보이다. ‘많은 사람들이 시장 개업식에 올 것으로 예상된다라는 의미가 되어야 하므로 빈칸 뒤 of와 함께 쓰여 ‘많은이라는 의미의 수량 표현을 만드는 (C) A lot이 정답이다. (D) Several은 뒤에 of와 the가 모두 와야 한정된 명사의 부분을 나타낼 수 있다. (A) Little(적은)과 (B) Much(많은)는 둘 다 불가산 명사 앞에 쓰', 8, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (427,3, 'The Norrisville Chamber of Commerce has started a mentorship program that pairs young entrepreneurs with ------- business leaders.', 'C', '5', '[형용사 자리] 현재분사 vs. 과거분사||전치사(with)와 명사(business leaders) 사이에서 명사를 꾸미기 위해서는 형용사나 형용사 역할을 하는 분사가 와야 하므로 분사 (A)와 (C)가 정답의 후보이다. 꾸밈을 받는 명사(business leaders)와 분사가 ‘확실히 자리를 잡은 기업 경영자들이라는 의 미의 수동 관계이므로 과거분사 (C) established(확실히 자리를 잡은, 인정받는)가 정답 이다. 현재분사 (A) estab', 9, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (428,3, 'The public service announcement in which the risks of texting while driving are graphically ------- is being aired nationwide.', 'C', '5', '동사 어휘||‘운전하는 동안 문자 보내는 것의 위험성이 도표로 설명되다라는 문맥이므로 동사 illustrate(설명하다)의 p.p.형 (C) illustrated가 정답이다. (A)의 exercise는 ‘운동시키 다, (B)의 perform은 ‘수행하다, (D)의 imitate는 ‘모방하다라는 의미이다.', 9, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (429,3, '', 'B', '6', '명사자리||타동사(purse)의 목적어 자리에서 형용사(professional)의 꾸밈을 받을 수 있는 것은 명사이므로 명사 (B) interests(관심)가 정답이다. 동사 또는 분사 (A)와 (C), 부사 (D) 는 명사 자리에 올 수 없다. (A)를 동명사로 보더라도 동사 interest가 타동사인데 빈 칸 뒤에 목적어가 없으므로 답이 될 수 없다.', 1, 'https://kr.object.ncloudstorage.com/toeicdoit/part6-131-134.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (430,3, '', 'C', '6', '동사 어휘  주변 문맥 파악||‘Joan Peterson이 수석 고객 담당 직원으로서 나를 ___할 것이다라는 문맥이므 로 모든 보기가 정답의 후보이다. 빈칸이 있는 문장만으로 정답을 고를 수 없으므 로 주변 문맥이나 전체 문맥을 파악한다. 앞 문장에서 편지의 발신자가 사임할 예 정이라고 했고, 뒤 문장에서 Ms. Peterson이 그 일을 맡을 능력이 있다고 했으므로 Joan Peterson이 편지의 발신자 대신에 수석 고객 담당 직원이 될 것임을 알', 1, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (431,3, '', 'D', '6', '알맞은 문장 고르기||빈칸에 들어갈 알맞은 문장을 고르는 문제이므로 주변 문맥 또는 전체 문맥을 파악 한다. 앞부분에서 편지의 발신자가 사임할 예정이며 Joan Peterson가 후임자가 될 것이라고 했고, 앞 문장 ‘Ms. Peterson is highly experienced and fully capable of assuming this job.에서 Ms. Peterson이 경험이 풍부하고 그 일을 맡을 능력이 있다 고 했으므로 빈칸에는 후임자에게 ', 1, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (432,3, '', 'A', '6', 'if 없는 가정법||이 문장은 주어가 없는 명령문이고 동사(do ~ hesitate)를 갖춘 완전한 절이므로, ___ you ~ concerns는 수식어 거품으로 보아야 한다. ‘다른 질문이나 문제가 있다 면이라는 의미가 되어야 하므로 가정법의 if절에 사용되는 조동사 (A) Should가 정 답이다. 참고로 ‘Should you have ~는 가정법 ‘If you should have ~에서 If가 생 략되고 주어(you)와 조동사(should)가 도', 1, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (433,3, '', 'B', '6', '알맞은 문장 고르기||빈칸에 들어갈 알맞은 문장을 고르는 문제이므로 주변 문맥 또는 전체 문맥을 파악 한다. 뒤 문장 ‘Thankfully, Lawn Ranger is here to help you.에서 다행스럽게도 Lawn Ranger가 여러분을 돕기 위해 여기 있다고 했고 뒷부분에서 Lawn Ranger 에 어떤 조경 작업이든 처리할 수 있는 잔디 관리 전문가들이 있다고 했으므로 빈칸 에는 Lawn Ranger가 도울 수 있는 것, 즉 조경 작업에 ', 2, 'https://kr.object.ncloudstorage.com/toeicdoit/part6-135-138.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (434,3, '', 'D', '6', '수동태 동사 숙어||‘잔디 관리 전문가들이 어떤 조경 작업이든 처리하도록 갖춰져 있다라는 의미가 되어야 하므로 빈칸 앞의 be 동사(are)와 빈칸 뒤의 to 부정사(to tackle)와 함께 be equipped to(~을 하도록 갖춰져 있다) 구문을 만드는 동사 equip의 p.p.형 (D) equipped가 정답이다. 동사원형 (A)는 be 동사(are) 뒤에 쓰일 수 없다. to 부정사 (B), -ing형 (C)는 동사 equip(준비를 갖추게 ', 2, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (435,3, '', 'A', '6', '형용사 어휘  주변 문맥 파악|| ‘___한 서비스를 위해 안심하고 Lawn Ranger에 맡기다라는 문맥이므로 (A), (B), (C)가 정답의 후보이다. 빈칸이 있는 문장만으로 정답을 고를 수 없으므로 주변 문맥 이나 전체 문맥을 파악한다. 앞 문장에서 Lawn Ranger가 최고의 잔디 관리 서비스 제공업체로 6년 연속 뽑혔으며 40년 이상의 경험과 수천 명의 만족한 고객을 모셨 다고 했으므로, Lawn Ranger의 서비스가 믿을 만한 것임을 알', 2, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (436,3, '', 'D', '6', '명사 어휘  주변 문맥 파악|| ‘무료 ___을 위해 오늘 전화해주세요라는 문맥이므로 모든 보기가 정답의 후보이 다. 빈칸이 있는 문장만으로 정답을 고를 수 없으므로 주변 문맥이나 전체 문맥을 파 악한다. 뒤 문장에서 전문 정원사 중 한 명이 모든 문의 사항에 대해 도움을 줄 것 이라고 했으므로, 전화를 하면 직원에게 상담을 받을 수 있음을 알 수 있다. 따라서 (D) consultation(상담)이 정답이다. (A) brochure는 ‘소책자, (B)', 2, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (437,3, '', 'C', '6', 'to 부정사가 아닌 원형 부정사를 목적격 보어로 갖는 동사|| 준 사역동사 help의 목적격 보어로는 원형 부정사나 to 부정사가 와야 하므로 원형 부 정사 (C) renovate(개조하다)가 정답이다. 동명사 또는 분사 (A), 동사의 과거형 또는 분사 (B), 명사 (D)는 준 사역동사 help의 목적격 보어 자리에 올 수 없다.', 3, 'https://kr.object.ncloudstorage.com/toeicdoit/part6-139-142.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (438,3, '', 'D', '6', '명사 어휘|| ‘___별로 작업이 되기를 바란다라는 문맥이므로 (A), (B), (D)가 정답의 후보이다. 빈 칸이 있는 문장만으로 정답을 고를 수 없으므로 주변 문맥이나 전체 문맥을 파악한 다. 뒤 문장에서 회의실에서 시작해서 중역 사무실, 주 업무 구역, 회의실을 작업하자 고 했으므로, 작업을 단계별로 하고 싶어 함을 알 수 있다. 따라서 (D) stages(단계)가 정답이다. (A)의 level은 ‘수준, (B)의 grade는 ‘등급, (C)의 f', 3, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (439,3, '', 'C', '6', '알맞은 문장 고르기|| 빈칸에 들어갈 알맞은 문장을 고르는 문제이므로 주변 문맥 또는 전체 문맥을 파악한 다. 뒤 문장 ‘I hope to get your ideas on paint colors, lighting, and new furniture. 에서 페인트 색상, 조명, 새로운 가구에 대한 편지 수신자의 생각을 알고 싶다고 했으 므로 빈칸에는 회사 개조 작업에 관한 세부 사항을 논의하는 기회를 요청하는 내용 이 들어가야 함을 알 수 있다. 따라서 (', 3, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (440,3, '', 'C', '6', '[조동사 + 동사원형] 능동태와 수동태의 구별||조동사(should) 다음에는 동사원형이 와야 하므로 동사원형 (A), have + p.p. (B), be + p.p. (C)가 정답의 후보이다. complete(~을 완료하다)가 타동사인데 빈칸 다음에 목적어가 없고, ‘모든 작업이 3월 1일까지 완료되어야 한다라는 수동의 의미가 되어 야 하므로 수동태(be + p.p.) (C) be completed가 정답이다. (A)와 (B)는 능동태이므 로 답이 될', 3, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (441,3, '', 'B', '6', '동사 어휘||‘Hartford Gas and Electric 회사가 고객들에게 지점이 6월 24일 금요일 오후 1시부 터 닫을 것임을 __한다라는 문맥이므로 동사 notify(통지하다)의 3인칭 단수형 (B) notifies가 정답이다. (A)의 request는 ‘요청하다, (C)의 invite는 ‘초대하다, (D)의 encourage는 ‘격려하다라는 의미이다.', 4, 'https://kr.object.ncloudstorage.com/toeicdoit/part6-143-146.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (442,3, '', 'A', '6', '알맞은 문장 고르기||빈칸에 들어갈 알맞은 문장을 고르는 문제이므로 주변 문맥 또는 전체 문맥을 파악 한다. 앞 문장 ‘The Hartford Gas and Electric Company hereby notifies customers that its branch office on 121 Allen Street will be closed from 1 P.M. on Friday, June 24, for a scheduled event.에서 Hartford ', 4, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (443,3, '', 'A', '6', '[동사 자리] 현재 시제||문장에 동사가 없으므로 동사 (A), (C), (D)가 정답의 후보이다. ‘정상 영업 시간은 다 음 주 월요일인 6월 27일에 재개될 것이다라는 의미가 되어야 하므로, 가까운 미래 에 예정된 일을 표현할 수 있는 현재 시제 (A) resume이 정답이다. 과거 시제 (C)와 현재 완료 시제 (D)는 미래를 나타낼 수 없고, 동명사 또는 분사 (B) resuming은 동 사 자리에 올 수 없다.', 4, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (444,3, '', 'C', '6', '접속부사  주변 문맥 파악||빈칸이 콤마와 함께 문장 맨 앞에 온 접속부사 자리이므로, 앞 문장과 빈칸이 있는 문장의 의미 관계를 파악하여 정답을 선택한다. 앞 문장은 결제를 하거나 거래를 완 료해야 하는 고객들은 469번지 Burgess로에 있는 지점에 오면 된다고 했고, 빈칸이 있는 문장에서는 제3 결제 업체에서는 결제가 계속 이루어질 수 있다고 했으므로 앞 문장에서 언급된 내용에 추가적인 내용을 더할 때 사용되는 (C) Additionally(추가', 4, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (445,3, 'A', 'B', '6', '내용 이해||목적은  최신  정보를 제공하기 위함이다 objection(반대)을 쓰면 반대는 최신 정보를 제공하기 위함이다 라는 어색한 의미가 된다.', 5, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part6-1.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (446,3, 'B', 'C', '6', '동사 자리||문장에 동사가 없으므로 동사 (C) suggest(제안하다)가 정답이다. 명사 (A), 준동사 (B)와 형용사 (D)는 동사 자리에 올 수 없다.', 5, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part6-1.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (447,3, 'C', 'B', '6', '내용 이해||인터넷이 연결된 텔레비전에 광고하는 것을 반드시 ---- 해야 한다 라는 문맥이므로 모든 보기가 정답의 후보 이다. 지문 앞부분에서 글쓴이가 현재의 방송 광고 동향에 대한 최신 정보를 제공하기 위해 워크숍을 준비하는 것을 생각하고 있었다고 한 후 ||전통적인 텔레비전을 많이 보지 않을 수도 있는 시청자들에게 호소하는 방법에 대한 더 깊은 이해가 필요하다고 했으므로 새로운 분야인 인터넷이 연결된 텔레비전에 광고하는 방법에 대해 탐구할 것임을 ', 5, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part6-1.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (448,3, 'D', 'B', '6', '문맥상 알맞은 문장 고르기|| 의미이므로  명사 (B) objective(목적)가  정답이다. (C) 앞 문장에서 텔레비전을 많이 보지 않을 수도 있는 시청자들에게 호소하는 방법에 대한 더 깊은 이해가 필요하다고 했으므로 ||빈칸에는 고객들이 혁신적인 방법으로 광고하는 것을 희망하고 있기 때문에 이것이 중요하다는 내용이 들어가야 함을 알 수 있다.', 5, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part6-1.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (449,3, 'A', 'B', '6', '동사 자리||동사 is 앞에 주어자리가 비어 있으므로 빈칸에는 주어가 필요하다. to 부정사구(to keep abreast of advances)가 as가 이끄는 부사절의 진짜주어이므로 빈칸에는 가짜주어가 와야 한다. ', 6, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part6-2.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (450,3, 'B', 'C', '6', '내용 이해||이 문장은 주어(the association) 동사(is inviting) 목적어(specialists)를 갖춘 완전한 절이므로 ---- various fields는 수식어 거품으로 보아야 한다. 이 수식어 거품은 동사가 없는 거품구이므로 거품구를 이끌 수 있는 전치사 (C) from이 정답이다.', 6, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part6-2.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (451,3, 'C', 'D', '6', '내용 이해||의사들과 연구자들이 전문지식을 ----하도록 하다라는 문맥이므로 (B) evaluate(평가하다) (D) share(공유하 다)가 정답의 후보이다. 빈칸이 있는 문장만으로 정답을 고를 수 없으므로 주변 문맥이나 전체 문맥을 파악해야 한다. 따라서 동사 (D) share가 정답이다.', 6, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part6-2.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (452,3, 'D', 'A', '6', '알맞은 문장 고르기||앞 부분에서 전국의료협회는 다양한 의료 관련 정보를 포함하는 웹사이트를 설계하고 있다고 했고|| 이것은 웹사이트를 종합적이고 가치 있는 의학 자원으로 만드는 데 도움이 될 것이라고 했으므로 빈칸에는 그 정보들이 환자의 삶을 개선시키거나 살릴 수 있다는 내용이 들어가야 함을 알 수 있다. 정답 (A) ', 6, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part6-2.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (453,3, 'A', 'D', '6', '내용 이해||이 문장은 주어(We)  동사(appreciate)  목적어(your interest)를 갖춘 완전한 절이므로 an all-in-one package ---- home protection은 수식어 거품이다. 따라서 과거분사 (B)와 현재분사 (D)가 정답의 후보이다. 수식 받는 명사와 분사가 일체형 패키지가 ~을 제공하다라는 의미의 능동 관계', 7, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part6-3.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (454,3, 'B', 'B', '6', '문맥 파악|| 보안 시스템은 원격으로 ----될 수 있다는 문맥이므로 네 개의 보기 모두 정답의 후보이다. 빈칸이 있는 문장만으로 정답을 고를 수 없으므로 주변 문맥이나 전체 문맥을 파악한다.|| 뒤 문장에서 이 앱 즉 모바일 기기 애플리 케이션을 통해 시스템 구성 요소를 관리할 수 있도록 해주며 제대로 작동하고 있음을 보장한다고 했으므로 보안 시스템은 원 격으로 작동될 수 있음을 알 수 있다. ||따라서 동사 (B) operated(작동하다)가 정답이', 7, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part6-3.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (455,3, 'C', 'B', '6', '동사 형태||사역동사 have(having)의 목적격 보어로는 원형 부정사가 와야 하므로 (B) visit이 정답이다. 목적어(a representative)와 목적격 보어(visit)가 직원이 방문되다라는 수동의 의미로 해석되면 문맥에 맞지 않으므로 보어 자리에 p.p.형인 (A) visited는 올 수 없다.', 7, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part6-3.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (456,3, 'D', 'C', '6', '알맞은 문장 고르기||앞 부분에서 직원이 가정에 방문하기를 원한다면 전화나 이메일로 안전 요구 사항을 말해달라고 했고 뒤 문장에서 예약은 그 후 아무 때나 정해질 수 있다고 했으므로 ||빈칸에는 편지의 수신자에게 다음 날까지 설치 견적서를 제공할 것이라는 내용이 들어가야 함을 알 수 있다. 정답 (C)', 7, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part6-3.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (457,3, 'A', 'C', '6', '문맥 파악||빈칸이 있는 문장만으로 정답을 고를 수 없으므로 주변 문맥이나 전체 문맥을 파악한다. 지문 뒷부분에서 특정 조건을 만족한 사원에게 한 달 급여에 상당하는 액수가 제공될 것이라고 했으므로 ||새로운 장려금 프로그램을 시행할 것임을 알 수 있다. 따라서 명사 (C) incentive가 정답이다.', 8, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part6-4.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (458,3, 'B', 'C', '6', '내용 이해|| 이 문장은 주어(This), 동사(is), 보어(a monetary reward)를 갖춘 완전한 절이므로 수식어 거품이 될 수 있는 to 부정사 (A), (C)와 현재분사 (D)가 정답의 후보이다. ||수식을 받는 명사와 give가 금전적인 보상이 주어지다라는 수동의 의미로 해석되므로 to 부정사의 수동형 (C) to be given이 정답이다.', 8, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part6-4.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (459,3, 'C', 'B', '6', '동사 자리||타동사(will ensure)의 목적어 자리에는 명사나 동명사가 와야 하므로 명사 (B)와 동명사 (C)가 정답의 후보 이다.||빈칸 뒤에 목적어가 없으므로 명사 (B) satisfaction이 정답이다. 참고로 employee satisfaction은 직원 만족도라는 의미의 복합 명사이다.', 8, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part6-4.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (460,3, 'D', 'C', '6', '문맥상 알맞은 문장 고르기||앞 부분에서 새로운 프로그램을 시행할 것이라고 한 후 앞 문장에서 새로운 프로그램에 대해 직원들과 논의하고 질문이 있으면 알려달라고 했으므로 ||빈칸에는 이 프로그램에 대한 전폭적인 지지를 기대하겠다는 내용이 적절하다.', 8, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part6-4.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (461,3, 'A', 'D', '6', '문맥상 알맞은 문장 고르기||앞 문장에서 새로운 방콕 사무실을 방문하고 어제 본사로 돌아왔다고 한 후 뒤 문장에서 명백히 그것들의 목적은 현지 직원들과 파견된 관리자들 사이의 의사 소통을 돕기 위함이라고 했으므로 (D)가 가장 적절하다.', 9, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part6-5.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (462,3, 'B', 'D', '6', '접속 부사||빈칸이 콤마와 함께 문장의 맨 앞에 온 접속부사 자리이므로, 앞 문장과 빈칸이 있는 문장의 의미 관계를 파악 하여 접속부사인 네 개의 보기 중 하나를 정답으로 골라야 한다. 앞 문장과 대조되는 내용의 문장에서 사용되는 (D) Nevertheless(그럼에도 불구하고)가 정답이다.', 9, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part6-5.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (463,3, 'C', 'B', '6', '동사 자리||동사 suggest(to suggest)는 동명사를 목적어로 취하므로 (B) adapting이 정답이다.', 9, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part6-5.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (464,3, 'D', 'B', '6', '동사 자리||빈칸 뒤에 목적어(a report)가 온 것으로 보아 빈칸에는 have동사와 함께 완료형 동사를 만드는 p.p.형 (B) 또는 (D)가 와야 한다. 보고서를 첨부했다는 능동의 의미가 맞으므로 (B) attached가 정답이다.', 9, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part6-5.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (465,3, 'For what type of company does Mr. Owens most likely work?', 'C', '7', '내용 이해||Tim Owens는 온라인 판매 회사에서 일하는 것으로 보인다. 따라서 정답은 (C) Online merchandising이다. (A) Web site design는 웹사이트 디자인, (B) Inventory consulting는 재고 컨설팅, (D) Clothes manufacturing는 의류 제조를 의미한다. ', 1, 'https://kr.object.ncloudstorage.com/toeicdoit/part7-164-167.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (466,3, 'What is indicated about the shirt?', 'B', '7', '내용 이해||Sara Wells는 셔츠를 취소해 달라고 요청했다. 따라서 셔츠는 주문에서 제거될 것이다. 정답은 (B) It will be removed from an order이다. (A) It is available in a different color는 다른 색상으로 이용 가능하다, (C) It may be bought at a physical store는 실제 매장에서 구매할 수 있다, (D) It should arrive just a few d', 1, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (467,3, 'When did Ms. Wells expect her order to arrive?', 'A', '7', '내용 이해||Sara Wells는 이번 주에 가방을 받기를 원했다. 따라서 정답은 (A) Within the week이다. (B) Next week는 다음 주, (C) In two weeks는 2주 후, (D) In three weeks는 3주 후를 의미한다. ', 1, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (468,3, 'At 2:29 P.M. what does Ms. Wells mean when she writes “I guess Ill just go to a department store”?', 'B', '7', '내용 이해||Sara Wells가 I guess Ill just go to a department store라고 쓴 것은 대체 상품에 관심이 없고, 대신 백화점에서 구매하겠다는 뜻이다. 따라서 정답은 (B) She has decided to cancel an item이다. (A) She prefers to do her shopping in stores는 매장에서 쇼핑하는 것을 선호한다, (C) She is hoping to save on a delive', 1, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (469,3, 'What is the article mainly about?', 'D', '7', '내용 이해||이 기사 주제는 미디어 회사의 국제 확장에 관한 것이다. 따라서 정답은 (D) A media companys ongoing expansion이다. (A) An upcoming film production는 다가오는 영화 제작, (B) A newly opened entertainment venue는 새로 개장한 엔터테인먼트 장소, (C) An industrys prominent personalities는 업계의 저명한 인물들을 의미한다. ', 2, 'https://kr.object.ncloudstorage.com/toeicdoit/part7-168-171.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (470,3, 'What is mentioned about Didisat?', 'C', '7', '내용 이해||Didisat은 뭄바이에 본사를 둔 회사의 자회사이다. 따라서 정답은 (C) It is a subsidiary of a company in Mumbai이다. (A) It will be available exclusively through Skywide는 Skywide를 통해서만 이용 가능하다, (B) Its audience will mostly be residents of Los Angeles는 주로 로스앤젤레스 주민들이 시청할 것이다, (', 2, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (471,3, 'What does Ms. Nair suggest about Didinet?', 'B', '7', '내용 이해||Ms. Nair는 Didinet이 다양한 프로그램 콘텐츠를 제작했다고 언급한다. 따라서 정답은 (B) It has produced a variety of programming content이다. (A) It will be aired in several languages는 여러 언어로 방송될 것이다, (C) It started out as a television news channel는 텔레비전 뉴스 채널로 시작했다, (D) It has pl', 2, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (472,3, 'In which of the positions marked [1] [2] [3] and [4] does the following sentence best belong? “In addition to the standard entertainment programs Didisats lineup will include news and talk shows.”', 'C', '7', '내용 이해||“In addition to the standard entertainment programs, Didisats lineup will include news and talk shows.”라는 문장은 Ms. Nair가 프로그래밍 하이라이트를 설명하는 부분에 적합하다. 따라서 정답은 (C) [3]이다. ', 2, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (473,3, 'Where did Ms. Silva and Ms. ONeill meet?', 'B', '7', '내용 이해||Gina Silva와 Gloria ONeill은 파리에서 열린 패션 박람회에서 만났다. 따라서 정답은 (B) At clothing exhibition이다. (A) At a store opening는 매장 개업식에서, (C) At a holiday sale는 휴일 세일에서, (D) At a design workshop는 디자인 워크숍에서를 의미한다. ', 3, 'https://kr.object.ncloudstorage.com/toeicdoit/part7-172-175.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (474,3, 'How can Ms. ONeill receive a reduced price?', 'B', '7', '내용 이해||Gloria ONeill은 $3,000 이상의 대량 주문 시 20% 할인을 받을 수 있다. 따라서 정답은 (B) By purchasing a large number of items이다. (A) By placing an order before November 22는 11월 22일 전에 주문함으로써, (C) By using an enclosed coupon는 동봉된 쿠폰을 사용함으로써, (D) By buying products through a', 3, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (475,3, 'What does Ms. Silva recommend?', 'C', '7', '내용 이해||Gina Silva는 아이템을 휴일 세일 전에 받기 위해 가능한 빨리 주문할 것을 추천한다. 따라서 정답은 (C) Placing an order soon이다. (A) Having items sent by courier는 택배로 아이템을 보내는 것, (B) Attending a fashion event는 패션 이벤트에 참석하는 것, (D) Meeting in person는 직접 만나는 것을 의미한다. ', 3, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (476,3, 'In which of the positions marked [1] [2] [3] and [4] does the following sentence best belong?“I hope these items will give you a better idea of the quality of the products that we offer our customers.”', 'B', '7', '내용 이해||“I hope these items will give you a better idea of the quality of the products that we offer our customers.”라는 문장은 샘플에 대해 언급하고 있는 부분에 적합하다. 따라서 정답은 (B) [2]이다.', 3, '', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (477,3, 'What is the purpose of the article?', 'B', '7', '내용 이해||샌 퍼낸도 지역의 신생 회사를 소개하는 내용이므로 (B)가 정답이다. 단서의 start-up이 정답에서 new ~ business로 표현되었다. 기사 제목에서 new arrival은 직역하면 새로 도착한 사람을 뜻하며 신제품이나 새로운 회사 등을 나타내는 말이다.', 4, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part7-1.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (478,3, 'What is NOT mentioned as one of Swiftmores services?', 'A', '7', '내용 이해||기계 수리와 관련된 내용은 나오지 않으므로 (A)가 정답이다.', 4, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part7-1.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (479,3, 'According to the article what is true about some of the companys customers?', 'C', '7', '내용 이해|| 개인화된 서비스에 만족하고 있다고 했으므로 (C)가 정답이다. 단서의 are satisfied with the personalized service가 정답에서 are content with its customized service 로 표현되었다.||customize는 고객의 요구에 맞추어서 상품 등을 바꾼다는 뜻이다. (B) 유럽이 아니라 북미 지역이므로 오답이다.', 4, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part7-1.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (480,3, 'Who is a business analyst?', 'D', '7', '내용 이해||(A), (B) 두 명은 회사의 설립자이며 (C)는 마케팅 부장이다. 정답은 (D)', 4, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part7-1.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (481,3, 'What is NOT indicated as a purpose of a public fund?', 'D', '7', '내용 이해|| 대출금과 관련된 내용은 전혀 언급되지 않았으므로 (D)가 정답이다.', 5, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part7-2.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (482,3, 'What does John Marsh mention about ginseng?', 'A', '7', '내용 이해|| 먼저 고유명사인 John Marsh가 있는 부분을 찾아야 한다. 셀 수 없이 많은 건강상의 이점이 있다고 했으므로 (A)가 정답이다. ||단서의 has countless health benefits가 정답에서 good for ones health로 표현되었다.', 5, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part7-2.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (483,3, 'What organization does John Marsh represent?', 'C', '7', '내용 이해|| 중서부 인삼 재배자 협회의 국장 (director of the Midwest Ginseng Growers Association )이라고 했으므로 (C)가 정답이다.', 5, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part7-2.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (484,3, 'What is the meaning of the word “initiative” in paragraph 5 line 1?', 'C', '7', '내용 이헤|| 이 문장에서 initiative는 어떤 목적을 이루거나 어떤 문제를 해결하려는 계획이나 활동을 뜻한다', 5, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part7-2.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (485,3, 'Why did Ms. Schmidt send the letter? ', 'C', '7', '내용 이해||대부분의 편지 지문은 인사말로 시작한 후 두 번째 문장에서 구체적으로 목적을 언급한다.||I am pleased to (~하게 되어 기쁘다)와 같은 표현을 눈여겨보자. 공식적으로 의뢰인이 되었음을 알려 드린다고 했으므로 (C)가 정답이다.', 6, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part7-3.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (486,3, 'What can be inferred about Mr. Rogan?', 'A', '7', '내용 이해||전체 내용을 다 파악하고 있어야 하므로 난이도가 높은 문제이다. ||단서에서 in response to your question 이라고 하고 공사 대출금에 대해 이야기했으므로 (A)가 정답임을 알 수 있다..', 6, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part7-3.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (487,3, 'What does Ms. Schmidt recommend? ', 'D', '7', '내용 이해||단서의 recommend 라는 단어가 질문에도 그대로 쓰였다. 공사 대출금과 건설 계약자들을 현지에서 해결하라고 했으므로 (D)가 정답이다.', 6, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part7-3.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (488,3, 'What is NOT indicated about Mr. Rogan? ', 'A', '7', '내용 이해||로건씨는 부동산을 찾고 있지만 그 부동산을 무엇에 활용할 것인지는 편지에 나와 있지 않다. 따라서 (A)가 정답이다. |}(C) 표준 위임장 양식이 동봉되어 있다고 했으므로 이 편지와 같이 받았음을 알 수 있기에 오답이다.', 6, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part7-3.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (489,3, 'What is the main purpose of the memo? ', 'C', '7', '내용 이해||전시회와 관련된 인력 배치를 설명하고 있으므로 (C)가 정답이다. ||단서의 how each of our exhibition stands is to be staffed가 정답에서 staffing plans로 표현되었다. (D) 직함이 바뀐 것은 아니므로 오답이다.', 7, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part7-4.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (490,3, 'Why will the company use more than one stand this year? ', 'D', '7', '내용 이해||구독을 발생시키는 데 더 많은 기회를 주기 때문이라고 했으므로 (D)가 정답이다. ||단서의 grants us more opportunities to generate subscriptions가 정답에서 help increase subscriptions로 표현되었다.', 7, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part7-4.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (491,3, 'When will the business development manager work at the stand? ', 'B', '7', '내용 이해||표에서 필요한 부분만 빨리 찾으면 된다. 1시와 5시 사이에 일할 것이므로 (B)가 정답이다.', 7, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part7-4.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (492,3, 'Which stand will deal with large subscription orders? ', 'B', '7', '내용 이해||대량 구독에 대한 문의를 담당하는 앨릭스와 샐리가 본관 입구에 있는 부스에 있으므로 (B)가 정답이다.', 7, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part7-4.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (493,3, 'Why is the park being built?', 'C', '7', '내용 이해||공원이 존 C. 메이슨을 기념한다고 했으므로 (C)가 정답이다. 단서의 commemorate가 정답에서 honor로 표 현되었다.', 8, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part7-5.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (494,3, 'What is NOT mentioned as a feature of the park?', 'D', '7', '내용 이해||존 C. 메이슨은 현재 죽은 상태이며 아내와 자식들이 생존해 있다고 했으므로 (D)가 정답이다.||여기서 survive는 ~보다 더 오래 살다라는 뜻이며 Be survived by는 사망한 사람 의 유가족을 나타낼 때 쓰는 어구이다. ', 8, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part7-5.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (495,3, 'The word serves in paragraph 2 line 8 is closest in meaning to ', 'A', '7', '내용 이해||공원이 어떤 역할을 해 주면 좋겠다는 뜻이므로 (A)가 정답이다. 즉 serve as 와 act as 는 기능이나 역할을 나타내는 어구이다.', 8, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part7-5.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (496,3, 'What is true about the opening ceremony on August 10? ', 'C', '7', '내용 이해||존 C. 메이슨이 아내와 아들들의 개회사가 있다고 했으므로 (C)가 정답이다. ||존 C. 메이슨의 유가족이 아내와 자식들이라는 내용은 앞에 나온다.', 8, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part7-5.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (497,3, 'Who is Mr. Drake?', 'C', '7', '내용 이해|| 멜브룩 꽃 원예 협회에 지속적인 후원을 하며 회비를 낸다고 했으므로 (C)가 정답이다. ||단서의 the Melbrooke Flower and Horticultural Society가 정답에서 a community group으로 표현되었다.', 9, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part7-6.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (498,3, 'What did Melbrooke Community College students do this year?', 'C', '7', '내용 이해||멜브룩 전문 대학 학생들이 새로운 딱정벌레를 발견했다고 했으므로 (C)가 정답이다. ||단서의 a new subspecies of beetle이 정답에서 a new type of insect로 표현되었다.', 9, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part7-6.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (499,3, 'Where can patrons learn more about conference tickets?', 'A', '7', '내용 이해||표에 대한 세부 사항들이 소식지 12월 호에 나올 것이고, 11월에 보낸 편지에서 언급했으므로 (A)가 정답이다.', 9, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part7-6.png', NOW(), NOW());
INSERT INTO toeic_model (id, toeic_category_id, question, answer, part, description, level,  image, created_at, updated_at)
VALUES (500,3, 'According to the letter what will be different about the next meeting? ', 'D', '7', '내용 이해||다른 행사 때문에 장소가 바뀌었다고 했으므로 (D)가 정답이다.', 9, 'https://kr.object.ncloudstorage.com/toeicdoit/%EB%A0%88%EB%B2%A8%EB%B3%84/part7-6.png', NOW(), NOW());




INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (1,1 ,'(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (2,2 ,'(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (3,3 ,'(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (4,4,'(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (5,5 ,'(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (6,6 ,'(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (7,7,'(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (8,8,'(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (9,9,'(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (10,10,'(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (11,11 ,'(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (12,12 ,'(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (13,13 ,'(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (14,14 ,'(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (15,15 ,'(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (16,16 ,'(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (17,17 ,'(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (18,18 ,'(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (19,19 ,'(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (20,20,'(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (21,21 ,'(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (22,22 ,'(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (23,23 ,'(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (24,24 ,'(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (25,25 ,'(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (26,26 ,'(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (27,27 ,'(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (28,28,'(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (29,29 ,'(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (30,30 ,'(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (31,31 ,'(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (32,32 ,'(A) She bought the wrong garment.', '(B) She misplaced a pair of pants.', '(C) She cannot find a receipt.', '(D) She is late for an engagement.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (33,33 ,'(A) To close an account', '(B) To make a deposit', '(C) To meet a financial planner', '(D) To apply for a loan', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (34,34 ,'(A) Return a product', '(B) Try on some clothing', '(C) Give a ride to a shopping mall', '(D) Contact an acquaintance', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (35,35 ,'(A) A training session', '(B) An upcoming gathering', '(C) Writing samples', '(D) Office supplies', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (36,36 ,'(A) Why she will be gone', '(B) Where some paper is stored', '(C) If she wants other items', '(D) How a discussion went', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (37,37 ,'(A) Getting orders from colleagues', '(B) Recording a list', '(C) Transferring departments', '(D) Turning in an invoice', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (38,38 ,'(A) A business will downsize.', '(B) An employee will retire.', '(C) A project will begin.', '(D) A branch will open.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (39,39 ,'(A) An employee evaluation was negative.', '(B) A party will be cancelled.', '(C) Some news was unexpected.', '(D) A worker has been promoted.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (40,40 ,'(A) Deliver a speech', '(B) Create a job posting', '(C) Talk to a supervisor', '(D) Organize a party', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (41,41 ,'(A) A retail salesperson', '(B) A company technician', '(C) A business client', '(D) A product designer', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (42,42 ,'(A) A shipment is guaranteed to arrive on time.', '(B) A service is being offered for free.', '(C) A product is being sold at a discount.', '(D) A technician is available on the requested date.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (43,43 ,'(A) It cannot be refunded.', '(B) It is subject to change.', '(C) It does not apply to all items.', '(D) It was just increased.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (44,44 ,'(A) Watch a musical performance', '(B) Host a housewarming party', '(C) Attend a company dinner', '(D) Meet at a movie theater', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (45,45 ,'(A) He will be at a show.', '(B) He will be with his parents.', '(C) He has to clean up after an event.', '(D) He has to cook a meal.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (46,46 ,'(A) Visited his family', '(B) Preordered some tickets', '(C) Went to a birthday party', '(D) Told the woman his plans', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (47,47 ,'(A) Calculating some expenses', '(B) Planning a banquet', '(C) Contacting charities', '(D) Preparing some invitations', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (48,48 ,'(A) To admit to a mistake', '(B) To make a complaint', '(C) To ask for an approval', '(D) To agree to a request', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (49,49 ,'(A) Speak with a supervisor', '(B) Replace an ink cartridge', '(C) Bvy more paper', '(D) Write out addresses', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (50,50 ,'(A) At a bicycle shop', '(B) At a sporting goods store', '(C) At an amusement park', '(D) At a fitness center', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (51,51 ,'(A) Hire her a personal trainer', '(B) Take her on a tour', '(C) Send her a link', '(D) Give her some lessons', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (52,52 ,'(A) Participating in a class', '(B) Renting a storage locker', '(C) Reviewing a pamphlet', '(D) Repairing some equipment', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (53,53 ,'(A) To ask for a refund', '(B) To cancel a delivery request', '(C) To inquire about a shipment', '(D) To make a payment', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (54,54 ,'(A) Her goods were damaged.', '(B) Her item has not arrived yet.', '(C) She forgot to submit a form.', '(D) She has not received a rebate.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (55,55 ,'(A) Calling back later', '(B) Placing an order again', '(C) Leaving a phone numberHackers', '(D) Upgrading a service', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (56,56 ,'(A) Worked on a promotional flyer', '(B) Organized some boxes', '(C) Set up a display', '(D) Contacted a gallery', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (57,57 ,'(A) Moving some artwork', '(B) Preparing a shipment', '(C) Locating some paintings', '(D) Cleaning a storage room', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (58,58 ,'(A) Taking a short break', '(B) Borrowing some equipment', '(C) Consulting the head curator', '(D) Giving a task to an assistant', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (59,59 ,'(A) At an electronics manufacturer', '(B) At a convention center', '(C) At a medical facility', '(D) At a photography studio', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (60,60 ,'(A) The topic of an event', '(B) The date of a conference', '(C) The cost of admission', '(D) The functions of an application', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (61,61 ,'(A) A communication device will be demonstrated.', '(B) A new machine will be introduced.', '(C) A computer expert will give a talk.', '(D) A hospital policy will be discussed.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (62,62 ,'(A) A promotional document is inaccurate.', '(B) A software program is not selling well.', '(C) A marketing event has been rescheduled.', '(D) An accounting team member is unavailable.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (63,63 ,'(A) Host a trade show', '(B) Launch a product', '(C) Hire a new manager', '(D) Redesign a brochure', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (64,64 ,'(A) Site A', '(B) Site B', '(C) Site C', '(D) Site D', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (65,65 ,'(A) At a government office', '(B) At a law firm', '(C) At a real estate agency', '(D) At a transportation company', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (66,66 ,'(A) Economy', '(B) Standard', '(C) Express', '(D) Priority', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (67,67 ,'(A) On Tuesday', '(B) On Wednesday', '(C) On Friday', '(D) On Saturday', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (68,68 ,'(A) To buy an apartment', '(B) To visit a branch office', '(C) To meet with a client', '(D) To inspect a property', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (69,69 ,'(A) $430.00', '(B) $75.00', '(C) $27.00', '(D) $29.00', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (70,70 ,'(A) Visiting a financial institution', '(B) Delaying a payment', '(C) Canceling a credit card', '(D) Contacting a coworker', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (71,71 ,'(A) An electronics outlet', '(B) A printing shop', '(C) A graphic design company', '(D) A marketing firm', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (72,72 ,'(A) A discount will be offered.', '(B) A shop will undergo renovation.', '(C) A company will relocate.', '(D) A store’s hours will change.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (73,73 ,'(A) Call back later', '(B) Visit a Web site', '(C) E-mail the business', '(D) Set up an appointment', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (74,74 ,'(A) Computer monitors', '(B) Personal tablets', '(C) Office printers', '(D) Mobile phones', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (75,75 ,'(A) Mail out billing statements', '(B) Save receipts for reimbursement', '(C) Provide account information', '(D) Limit usage of a device', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (76,76 ,'(A) Submit an initial payment', '(B) Distribute plan information', '(C) Order new devices', '(D) Contact a service provider', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (77,77 ,'(A) To connect with graduates', '(B) To learn about some products', '(C) To meet potential clients', '(D) To acquire new skills', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (78,78 ,'(A) To stress that an applicant is suitable', '(B) To suggest that a deadline is approaching', '(C) To express frustration with a delay', '(D) To indicate support for a plan', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (79,79 ,'(A) She has volunteered in the past.', '(B) She is a student at the college.', '(C) She is experienced with interviewing.', '(D) She knows a lot about the organization.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (80,80 ,'(A) An educational institution', '(B) A medical facility', '(C) A public library', '(D) A commercial complex', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (81,81 ,'(A) To improve an existing building', '(B) To attract new investors', '(C) To address health care needs', '(D) To develop housing for residents', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (82,82 ,'(A) City officials cannot pass a bill.', '(B) Some equipment is outdated.', '(C) Additional inspections must be conducted.', '(D) Some people disagree about the project’s cost.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (83,83 ,'(A) It provides discounts to members.', '(B) It operates in multiple countries.', '(C) It was founded a century ago.', '(D) It was featured in an article.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (84,84 ,'(A) Marketing consultations', '(B) Financial management', '(C) Development strategies', '(D) Corporate acquisitions', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (85,85 ,'(A) Low interest rates', '(B) High-quality service', '(C) Affordably priced products', '(D) Monthly investment updates', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (86,86 ,'(A) To summarize an agenda', '(B) To thank investors', '(C) To praise an employee', '(D) To extend assignment deadlines', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (87,87 ,'(A) Introduce an executive', '(B) Demonstrate a device', '(C) Pass out materials', '(D) Give a presentation', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (88,88 ,'(A) To show concern', '(B) To offer a solution', '(C) To announce a change', '(D) To encourage participation', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (89,89 ,'(A) A building blueprint', '(B) A rental agreement', '(C) A government notice', '(D) A safety manual', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (90,90 ,'(A) A tenant filed a complaint about a building.', '(B) The regulation does not apply to his units.', '(C) A fire caused significant damage.', '(D) The required equipment is not installed.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (91,91 ,'(A) He is at an appointment.', '(B) He is busy with another project.', '(C) He is out of town.', '(D) He is at a different job site.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (92,92 ,'(A) Built a park', '(B) Began a campaign', '(C) Sold some plants', '(D) Donated some money', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (93,93 ,'(A) It has received some criticism.', '(B) It has changed over time.', '(C) It is posted on an online forum.', '(D) It focuses on environmental education.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (94,94 ,'(A) Volunteers will break up into groups.', '(B) A representative will give a speech.', '(C) A community festival will begin.', '(D) Some questions will be answered.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (95,95 ,'(A) To request confirmation of an order', '(B) To provide notice of a task’s completion', '(C) To confirm payment of a bill', '(D) To explain the cause of a malfunction', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (96,96 ,'(A) XS250 Hard Drive', '(B) GT75 Video Card', '(C) Blast Sound Card', '(D) Ray Cooling Fan', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (97,97 ,'(A) Pick up an item', '(B) Deliver a package', '(C) Contact a manufacturer', '(D) Make a deposit', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (98,98 ,'(A) Bologna', '(B) Milan', '(C) Lugano', '(D) Zurich', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (99,99 ,'(A) By using a vending machine', '(B) By going to a specific car', '(C) By shopping at the station', '(D) By speaking to a manager', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (100,100 ,'(A) Store their carry-on bags', '(B) Order meals in advance', '(C) Fill out customs forms', '(D) Try to stay in their seats', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (101,101 ,'(A) he', '(B) his', '(C) him', '(D) himself', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (102,102 ,'(A) between', '(B) within', '(C) among', '(D) behind', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (103,103 ,'(A) Both', '(B) Rather', '(C) Either', '(D) Whether', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (104,104 ,'(A) satisfaction', '(B) satisfied', '(C) satisfying', '(D) to satisfy', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (105,105 ,'(A) those', '(B) many', '(C) that', '(D) several', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (106,106 ,'(A) doubtfully', '(B) occasionally', '(C) alternatively', '(D) negatively', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (107,107 ,'(A) between', '(B) along', '(C) below', '(D) after', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (108,108 ,'(A) authorize', '(B) hire', '(C) present', '(D) convince', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (109,109 ,'(A) for', '(B) on', '(C) from', '(D) during', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (110,110 ,'(A) served', '(B) communicated', '(C) inquired', '(D) reserved', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (111,111 ,'(A) forward', '(B) past', '(C) with', '(D) toward', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (112,112 ,'(A) recommendation', '(B) grievance', '(C) compensation', '(D) appreciation', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (113,113 ,'(A) called', '(B) testified', '(C) assured', '(D) managed', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (114,114 ,'(A) regular', '(B) regularly', '(C) regulated', '(D) regularity', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (115,115 ,'(A) amid', '(B) next to', '(C) besides', '(D) apart', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (116,116 ,'(A) Little', '(B) Much', '(C) A lot', '(D) Several', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (117,117 ,'(A) establishing', '(B) establish', '(C) established', '(D) establishment', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (118,118,'(A) exercised', '(B) performed', '(C) illustrated', '(D) imitated', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (119,119 ,'(A) lease', '(B) to lease', '(C) leasable', '(D) leasing', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (120,120 ,'(A) will be solicited', '(B) are soliciting', '(C) had solicited', '(D) been solicited', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (121,121 ,'(A) wealthy', '(B) wealthier', '(C) wealth', '(D) wealthily', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (122,122 ,'(A) designed', '(B) proofread', '(C) impressed', '(D) published', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (123,123 ,'(A) inspecting', '(B) inspected', '(C) inspection', '(D) inspector', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (124,124 ,'(A) confirming', '(B) refurbishing', '(C) persisting', '(D) declining', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (125,125 ,'(A) accumulate', '(B) outsource', '(C) downsize', '(D) initiate', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (126,126 ,'(A) doubled', '(B) will double', '(C) had doubled', '(D) doubling', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (127,127 ,'(A) assistants', '(B) supervisors', '(C) acquaintances', '(D) consultants', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (128,128 ,'(A) itemized', '(B) accepted', '(C) settled', '(D) chosen', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (129,129 ,'(A) would have reached', '(B) should reach', '(C) reached', '(D) will reach', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (130,130 ,'(A) component', '(B) maintenance', '(C) advice', '(D) warranty', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (131,131 ,'(A) interesting', '(B) interests', '(C) interested', '(D) interestingly', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (132,132 ,'(A) evaluating', '(B) promoting', '(C) replacing', '(D) recommending', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (133,133 ,'(A) I hope you will consider hiring her for the position.', '(B) Thereafter, someone else will be taking responsibility.', '(C) Your supplies are not expected to arrive till tomorrow.', '(D) Thus, you can expect the same level of service from her.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (134,134 ,'(A) Should', '(B) Could', '(C) Would', '(D) Will', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (135,135 ,'(A) It is important to maintain the beauty of your home.', '(B) Taking care of a garden is a lot of hard work.', '(C) We have added new services to our business.', '(D) Our company will be beginning operations next month.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (136,136 ,'(A) equip', '(B) to equip', '(C) equipping', '(D) equipped', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (137,137 ,'(A) reliable', '(B) selective', '(C) remote', '(D) arbitrary', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (138,138 ,'(A) brochure', '(B) training', '(C) subscription', '(D) consultation', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (139,139 ,'(A) renovating', '(B) renovated', '(C) renovate', '(D) renovation', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (140,140 ,'(A) levels', '(B) grades', '(C) floors', '(D) stages', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (141,141 ,'(A) We thought your design was perfect for our office space.', '(B) Can we give you our feedback early next week?', '(C) Could we schedule a meeting to discuss the details?', '(D) The color of the walls is just fine and should be left alone.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (142,142 ,'(A) complete', '(B) have completed', '(C) be completed', '(D) completed', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (143,143 ,'(A) requests', '(B) notifies', '(C) invites', '(D) encourages', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (144,144 ,'(A) Our annual awards function for branch employees will be held on this date.', '(B) Please let us know whether you tried to visit the office at that time.', '(C) You will be informed of our new location after we have made arrangements.', '(D) It may take a full week before we can finish all of the needed repairs.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (145,145 ,'(A) resume', '(B) resuming', '(C) resumed', '(D) have resumed', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (146,146 ,'(A) Similarly', '(B) Conversely', '(C) Additionally', '(D) Instead', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (147,147 ,'(A) A fashion show', '(B) A grand opening', '(C) A rental service', '(D) A clothing auction', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (148,148 ,'(A) It has been in business a long time.', '(B) It plans to introduce items for men.', '(C) It is open throughout the weekend.', '(D) It is hosting a special celebration.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (149,149 ,'(A) Staff members are being reassigned.', '(B) Some improvements will be taking place.', '(C) A new office policy will be taking effect.', '(D) A client has made some special requests.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (150,150,'(A) Efficiency reports', '(B) Detailed schedules', '(C) Brief work stoppages', '(D) Departmental meetings', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (151,151 ,'(A) He has had his work published before.', '(B) He is near a meeting location.', '(C) He is interviewing for a job.', '(D) He lost a security card.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (152,152 ,'(A) She will not be able to keep an appointment.', '(B) She has not decided on where to meet Mr. Weaver.', '(C) She will need to accompany Mr. Weaver into the building.', '(D) She has some new ideas about a piece of writing.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (153,153 ,'(A) To respond to a store survey', '(B) To request a magazine subscription', '(C) To update the details of an account', '(D) To provide comments about a product', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (154,154 ,'(A) She lives in the city of Boston.', '(B) She wants to pay by credit card.', '(C) She will get an extra copy of a magazine.', '(D) She will receive a publication for two years.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (155,155 ,'(A) To inquire about a job vacancy', '(B) To follow up on an application', '(C) To recommend a candidate', '(D) To provide investment information', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (156,156 ,'(A) A departmental supervisor', '(B) A potential investor', '(C) A market researcher', '(D) A corporate accountant', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (157,157 ,'(A) It has several offices.', '(B) It uses a recruitment agency.', '(C) It posted job advertisements.', '(D) It moved its headquarters.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (158,158 ,'(A) To inform tenants of renovations', '(B) To provide instructions for delivery staff', '(C) To encourage use of a new facility', '(D) To announce changes to rules', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (159,159 ,'(A) Fill out a form', '(B) Present an identity card', '(C) Pick up a parking pass', '(D) Retrieve a delivery', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (160,160 ,'(A) They will be asked to wait in the lobby.', '(B) They must park in a sectioned-off area.', '(C) They may be exempted from having to register.', '(D) They will be directed to a different entrance.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (161,161 ,'(A) The address of a customer', '(B) The number of items purchased', '(C) The accepted payment methods', '(D) The date of delivery', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (162,162 ,'(A) It is not open on weekends.', '(B) It is within the city limits.', '(C) It is building a new office.', '(D) It is a previous client.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (163,163 ,'(A) Send an e-mail', '(B) Fill out an online form', '(C) Call a number', '(D) Visit the store', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (164,164 ,'(A) Web site design', '(B) Inventory consulting', '(C) Online merchandising', '(D) Clothes manufacturing', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (165,165 ,'(A) It is available in a different color.', '(B) It will be removed from an order.', '(C) It may be bought at a physical store.', '(D) It should arrive just a few days late.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (166,166 ,'(A) Within the week', '(B) Next week', '(C) In two weeks', '(D) In three weeks', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (167,167 ,'(A) She prefers to do her shopping in stores.', '(B) She has decided to cancel an item.', '(C) She is hoping to save on a delivery charge.', '(D) She wants to participate in a promotional event.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (168,168 ,'(A) An upcoming film production', '(B) A newly opened entertainment venue', '(C) An industry’s prominent personalities', '(D) A media company’s ongoing expansion', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (169,169 ,'(A) It will be available exclusively through Skywide.', '(B) Its audience will mostly be residents of Los Angeles.', '(C) It is a subsidiary of a company in Mumbai.', '(D) It aims to launch the careers of Indian actors.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (170,170 ,'(A) It will be aired in several languages.', '(B) It has produced a variety of programming content.', '(C) It started out as a television news channel.', '(D) It has plans to enter the European market soon.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (171,171 ,'(A) [1]', '(B) [2]', '(C) [3]', '(D) [4]', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (172,172 ,'(A) At a store opening', '(B) At clothing exhibition', '(C) At a holiday sale', '(D) At a design workshop', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (173,173 ,'(A) By placing an order before November 22', '(B) By purchasing a large number of items', '(C) By using an enclosed coupon', '(D) By buying products through a Web site', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (174,174 ,'(A) Having items sent by courier', '(B) Attending a fashion event', '(C) Placing an order soon', '(D) Meeting in person', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (175,175 ,'(A) [1]', '(B) [2]', '(C) [3]', '(D) [4]', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (176,176 ,'(A) It charges members monthly fees.', '(B) It may not approve every membership application.', '(C) It accepts bank transfer payments.', '(D) It has branches throughout the country.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (177,177 ,'(A) Park in a reserved space', '(B) Participate in special events', '(C) Take advantage of a discount', '(D) Place personal items in a locker', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (178,178,'(A) $1', '600', '(B) $1800', '(C) $2000', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (179,179 ,'(A) He will be away for a month.', '(B) He has been busy recently.', '(C) He wants to take a golf class.', '(D) He has visited the club many times.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (180,180 ,'(A) A processing fee', '(B) A membership card', '(C) An original receipt', '(D) A parking pass', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (181,181 ,'(A) To request feedback from a guest', '(B) To invite an executive to a conference', '(C) To arrange travel for a customer', '(D) To describe a business proposition', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (182,182 ,'(A) Its site can be read in multiple languages.', '(B) It has over a million listed properties.', '(C) It frequently comes up in online search results.', '(D) It operates out of many locations worldwide.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (183,183 ,'(A) located', '(B) agreed', '(C) paid', '(D) relieved', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (184,184 ,'(A) It was recently renovated.', '(B) It gets few foreign visitors.', '(C) It is busiest in the month of May.', '(D) It offers budget accommodations.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (185,185 ,'(A) Its booking fees are higher.', '(B) It requires payment less frequently.', '(C) Its services are more limited.', '(D) It charges more commission.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (186,186 ,'(A) ordinary', '(B) reserved', '(C) casual', '(D) small', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (187,187 ,'(A) They will take place in the same building.', '(B) They will be held during the evening.', '(C) They will feature successful businesspeople.', '(D) They will include a question and answer period.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (188,188 ,'(A) February 22', '(B) March 11', '(C) March 28', '(D) April 9', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (189,189 ,'(A) To raise funds for a retail outlet', '(B) To finance her schooling', '(C) To satisfy a business course requirement', '(D) To sell items made by other designers', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (190,190 ,'(A) She just released a product line for men.', '(B) She can attend other series lectures for free.', '(C) She is on the board of directors of an alumni group.', '(D) She is a work colleague of Ms. Ling.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (191,191 ,'(A) Her residence is located in New York.', '(B) She is skilled at traditional painting methods.', '(C) Her work has been shown in many countries.', '(D) She will attend the opening of an art show.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (192,192 ,'(A) A portrait artist', '(B) A government official', '(C) A gallery curator', '(D) A personal assistant', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (193,193 ,'(A) Posed for a portrait', '(B) Visited an art exhibit', '(C) Attended a university event', '(D) Presented an award to an artist', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (194,194 ,'(A) She will receive a fee to speak at the event.', '(B) She will be sent information by Wendy Andrews.', '(C) She will have to pay for some travel bookings.', '(D) She will be able to photograph Senator Jackson for an article.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (195,195 ,'(A) Work colleagues of the senator', '(B) Members of the local press', '(C) A group of art students', '(D) A photographer working on an exhibit', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (196,196 ,'(A) It started out as a family-run enterprise.', '(B) It makes furniture for residences and workplaces.', '(C) Its production and retail space are at the same location.', '(D) Its main display facility will be located in the city center.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (197,197 ,'(A) To provide some requested contact information', '(B) To ask for help in promoting a business', '(C) To report a mistake about opening hours', '(D) To explain that a store closes on Tuesday', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (198,198 ,'(A) To promote a new line of wooden furnishings', '(B) To publicize an online order service', '(C) To announce a grand opening for a retail outlet', '(D) To give details on entering a design competition', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (199,199 ,'(A) Meet with local craftspeople', '(B) Sign up to receive invitations to other events', '(C) Participate in a contest for a prize', '(D) Obtain discount vouchers for future orders', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (200,200 ,'(A) He contacted a publication’s sales department about regular advertisements.', '(B) He arranged an appointment to be interviewed by Ms. Cho.', '(C) He has been nominated for a design award for an upcoming event.', '(D) He plans to open a second store soon after the first one.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (201,201,'(A)','(B)','(C)','(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (202,202,'(A)','(B)','(C)','(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (203,203,'(A)','(B)','(C)','', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (204,204,'(A)','(B)','(C)','', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (205,205,'(A)','(B)','(C)','', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (206,206,'(A)','(B)','(C)','', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (207,207,'(A)','(B)','(C)','', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (208,208,'(A)','(B)','(C)','', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (209,209,'(A)','(B)','(C)','', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (210,210,'(A)','(B)','(C)','', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (211,211,'(A) permitted','(B) established','(C) managed','(D) preserved', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (212,212,'(A) urgency','(B) urgent','(C) urgencies','(D) urgently ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (213,213,'(A) latest','(B) later','(C) late','(D) lately', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (214,214,'(A) neither','(B) both','(C) either','(D) also', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (215,215,'(A) theirs','(B) them','(C) their','(D) themselves', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (216,216,'(A) She volunteered to do more work.','(B) She is relatively new to the company.','(C) She has experience managing people.','(D) She planned a meeting in advance.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (217,217,'(A) He is frustrated that a colleague is running late for an appointment.','(B) He is concerned that two weeks is not long enough to gather materials.','(C) He believes that the duration of the internship program is typical.','(D) He feels that an advancement opportunity is overdue for a coworker.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (218,218,'(A) On a company bulletin board','(B) In a trade journal ','(C) In an electronic goods catalog','(D) In a business management textbook', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (219,219,'(A) How to start their own small fiber optics business','(B) What kinds of uses fiber optics will have in the future ','(C) Ways to increase productivity in the fiber optic industry','(D) Which companies provide good investment opportunities', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (220,220,'(A) [1]','(B) [2]','(C) [3]','(D) [4] ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (221, 221, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (222, 222, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (223, 223, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (224, 224, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (225, 225, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (226, 226, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (227, 227, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (228, 228, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (229, 229, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (230, 230, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (231, 231, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (232, 232, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (233, 233, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (234, 234, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (235, 235, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (236, 236, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (237, 237, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (238, 238, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (239, 239, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (240, 240, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (241, 241, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (242, 242, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (243, 243, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (244, 244, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (245, 245, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (246, 246, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (247, 247, '(A) At a warehouse', '(B) At a manufacturing plant', '(C) At a retail store', '(D) At an office', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (248, 248, '(A) They requested specific materials.', '(B) They made changes to a clothing line.', '(C) They are still waiting for a delivery.', '(D) They are unhappy with an estimate.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (249, 249, '(A) Research some amounts', '(B) Meet with a financial consultant', '(C) Replace some equipment', '(D) Provide some samples', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (250, 250, '(A) A new strategy has not yielded any results.', '(B) A social media channel is not being updated.', '(C) An advertising campaign has drawn criticism.', '(D) A job listing has not received any application.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (251, 251, '(A) Promoting several employees', '(B) Creating an online contest', '(C) Hiring an additional worker', '(D) Talking to a publisher', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (252, 252, '(A) To express support', '(B) To propose a solution', '(C) To indicate doubt', '(D) To accept a task', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (253, 253, '(A) A photocopier', '(B) A pair of shoes', '(C) A headphone', '(D) A monitor', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (254, 254, '(A) A product may be too expensive.', '(B) A delivery may be delayed.', '(C) A warranty may be short.', '(D) An item may be out of stock.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (255, 255, '(A) Try on some items', '(B) Visit another store', '(C) Make a payment', '(D) Check a Web site', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (256, 256, '(A) A hotel', '(B) An interior design firm', '(C) A bank', '(D) A real estate agency', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (257, 257, '(A) He has to attend a training session.', '(B) She is willing to hold a party.', '(C) He doesnt have an employee card yet.', '(D) She wants to work with another colleague.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (258, 258, '(A) Arrange a training workshop', '(B) Call a client', '(C) Set up a meeting', '(D) Reschedule his appointment', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (259, 259, '(A) Some clothing', '(B) A piece of furniture', '(C) Some groceries', '(D) A kitchen appliance', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (260, 260, '(A) Her phone number', '(B) A date of purchase', '(C) Her current address', '(D) An order number', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (261, 261, '(A) Contact the transporter', '(B) Process a refund', '(C) Mail a discount coupon', '(D) Prepare a shipment', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (262, 262, '(A) An apartment building', '(B) A shopping center', '(C) An office building', '(D) A concert hall', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (263, 263, '(A) At location 1', '(B) At location 2', '(C) At location 3', '(D) At location 4', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (264, 264, '(A) Order safety equipment for the workers', '(B) Get approval from a government office', '(C) Schedule a meeting with investors', '(D) Attend a press conference with her coworker', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (265, 265, '(A) To arrange an appointment ', '(B) To confirm a reservation', '(C) To request a refund', '(D) To inquire about a delivery', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (266, 266, '(A) He published an autobiography.', '(B) He gave a prescription.', '(C) He attended a conference.', '(D) He gave a lecture.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (267, 267, '(A) He must work every afternoon. ', '(B) He is supposed to attend a class.', '(C) He is scheduled to train some employees.', '(D) He has to depart on a business trip.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (268, 268, '(A) A painter ', '(B) An art dealer  ', '(C) A gallery owner ', '(D) A tour guide', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (269, 269, '(A) He has a temporary exhibit.', '(B) He will answer questions after a tour. ', '(C) He is a famous architect. ', '(D) He has released a biography.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (270, 270, '(A) Check a schedule', '(B) Display a pass', '(C) Exchange a ticket', '(D) Bring a document ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (271, 271, '(A) Mempo Inc. ', '(B) Lacdo Mobile ', '(C) Nivez', '(D) Imagecom  ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (272, 272, '(A) By opening a new flagship store ', '(B) By offering a discount ', '(C) By launching a new product  ', '(D) By releasing some advertisements', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (273, 273, '(A) A competing phone model will be assessed. ', '(B) A marketing strategy will be introduced.', '(C) A director will announce a fundraiser date.', '(D) A safety procedure will be implemented.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (274, 274, '(A) Nature photography', '(B) Foreign language', '(C) Watercolor painting', '(D) Camping skills', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (275, 275, '(A) It will end an hour early.', '(B) It will be conducted online.', '(C) It will be led by a substitute teacher.', '(D) It will be held outdoors.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (276, 276, '(A) Set up some equipment', '(B) Take attendance', '(C) Distribute some handouts', '(D) Divide the group into pairs', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (277, 277, '(A) A play', '(B) A fashion show', '(C) A music festival', '(D) A movie preview', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (278, 278, '(A) She is pleased with a result.', '(B) She is surprised by the number of group.', '(C) A schedule must be followed.', '(D) A deadline might be extended.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (279, 279, '(A) Some costumes', '(B) Some product samples', '(C) Some promotional flyers', '(D) Some tickets', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (280, 280, '(A) It has purchased new equipment.', '(B) It has changed its business hours.', '(C) It has hired additional employees.', '(D) It has moved to a new office.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (281, 281, '(A) 101', '(B) 102', '(C) 103', '(D) 104', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (282, 282, '(A) Finding a different vendor', '(B) Requesting a discount', '(C) Looking for a business consultant', '(D) Placing an order online', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (283, 283, '(A) be submitting', '(C) to submit ', '(B) be submitted ', '(D) have submitted ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (284, 284, '(A) has worked ', '(C) work ', '(B) worked ', '(D) working      ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (285, 285, '(A) is ', '(C) to be ', '(B) was ', '(D) be ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (286, 286, '(A) postmark ', '(B) postmarked ', '(C) postmarking ', '(D) be postmarked', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (287, 287, '(A) provides ', '(C) be provided ', '(B) providing ', '(D) to provide ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (288, 288, '(A) damaged ', '(C) damage ', '(B) damageable ', '(D) to damage ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (289, 289, '(A) object  ', '(B) mention', '(C) talk ', '(D) discuss ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (290, 290, '(A) celebration ', '(C) celebrated ', '(B) celebrate ', '(D) celebrates   ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (291, 291, '(A) be ', '(C) being ', '(B) are ', '(D) will be    ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (292, 292, '(A) upgrade ', '(C) be upgraded  ', '(B) upgrading ', '(D) are upgraded  ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (293, 293, '(A) satisfy ', '(C) be satisfied', '(B) satisfying ', '(D) to satisfy', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (294, 294, '(A) As ', '(C) However ', '(B) While ', '(D) Because of ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (295, 295, '(A) trim ', '(B) trimming ', '(C) trimmed ', '(D) was trimmed ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (296, 296, '(A) request ', '(C) requested ', '(B) requesting ', '(D) been requested ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (297, 297, '(A) attempt ', '(C) omission ', '(B) estimate ', '(D) objective ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (298, 298, '(A) eligible', '(B) possible ', '(C) decisive ', '(D) significant     ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (299, 299, '(A) usually ', '(C) probably ', '(B) previously ', '(D) lately ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (300, 300, '(A) started ', '(C) remained ', '(B) limited ', '(D) asserted ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (301, 301, '(A) output ', '(C) effort ', '(B) instance ', '(D) account ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (302, 302, '(A) Instead ', '(C) In contrast', '(B) For example ', '(D) As a result ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (303, 303, '(A) objected', '(B) objective', '(C) objection ', '(D) objectionable', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (304, 304, '(A) suggestion ', '(C) suggest ', '(B) suggesting ', '(D) suggestive', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (305, 305, '(A) dispute ', '(B) limit', '(C) explore', '(D) terminate ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (306, 306, '(A) The commercials we are working on should be released in a week.', '(B) This is crucial as our clients hope to advertise in innovative ways. ', '(C) Having two sessions as you suggested seems unnecessary. ', '(D) The team should tell us this week if they can attend.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (307, 307, '(A) there', '(B) it ', '(C) this', '(D) that ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (308, 308, '(A) although ', '(B) who ', '(C) from ', '(D) where ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (309, 309, '(A) reconsider ', '(B) evaluate ', '(C) control ', '(D) share ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (310, 310, '(A) The information could improve or save a patients life. ', '(B) Concerns about patient privacy have arisen.', '(C) Emerging technologies for industry professionals are sometimes redundant.', '(D) It will take years of decades to find a cure. ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (311, 311, '(A) To confirm his flight reservation ', '(B) To inform him of a change in membership  status', '(C) To verify bank account details ', '(D) To announce a rescheduled appointment ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (312, 312, '(A) A card ', '(B) A bill ', '(C) A ticket ', '(D) A booklet ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (313, 313, '(A) Sign up for an online account ', '(B) Fill out an application form ', '(C) Arrive early for his check-in ', '(D) Review an information file ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (314, 314, '(A) To reconfirm a vacation schedule ', '(B) To make an appointment for surgery ', '(C) To request a leave of absence ', '(D) To request sick leave ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (315, 315, '(A) She has to take care of her children. ', '(B) She needs physical therapy. ', '(C) She is scheduled to go abroad. ', '(D) She needs an operation. ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (316, 316, '(A) It should be sent to Human Resources. ', '(B) It should be forwarded to Marinas Department Head.', '(C) It should be kept by Marina Stacey.', '(D) It should be considered confidential. ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (317, 317, '(A) To compare the performance of university graduates ', '(B) To introduce a new local business ', '(C) To teach readers about software installation ', '(D) To analyze recent trends in online markets ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (318, 318, '(A) Repairing broken video machines ', '(B) Supplying digital content', '(C) Installing software for customers ', '(D) Recommending new products ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (319, 319, '(A) They usually rent video games. ', '(B) They mostly live in European countries. ', '(C) They are content with its customized service. ', '(D) They are mainly factory workers. ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (320, 320, '(A) Jason Inoue ', '(B) Tom Brickman ', '(C) Hester Williams ', '(D) Travis Palmer ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (321, 321, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (322, 322, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (323, 323, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (324, 324, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (325, 325, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (326, 326, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (327, 327, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (328, 328, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (329, 329, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (330, 330, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (331, 331, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (332, 332, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (333, 333, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (334, 334, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (335, 335, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (336, 336, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (337, 337, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (338, 338, '(A)', '(B)', '(C)', '(D)', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (339, 339, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (340, 340, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (341, 341, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (342, 342, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (343, 343, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (344, 344, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (345, 345, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (346, 346, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (347, 347, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (348, 348, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (349, 349, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (350, 350, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (351, 351, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (352, 352, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (353, 353, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (354, 354, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (355, 355, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (356, 356, '(A)', '(B)', '(C)', '', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (357, 357, '(A) She bought the wrong garment.', '(B) She misplaced a pair of pants.', '(C) She cannot find a receipt.', '(D) She is late for an engagement.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (358, 358, '(A) To close an account', '(B) To make a deposit', '(C) To meet a financial planner', '(D) To apply for a loan', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (359, 359, '(A) Return a product', '(B) Try on some clothing', '(C) Give a ride to a shopping mall', '(D) Contact an acquaintance', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (360, 360, '(A) A training session', '(B) An upcoming gathering', '(C) Writing samples', '(D) Office supplies', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (361, 361, '(A) Why she will be gone', '(B) Where some paper is stored', '(C) If she wants other items', '(D) How a discussion went', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (362, 362, '(A) Getting orders from colleagues', '(B) Recording a list', '(C) Transferring departments', '(D) Turning in an invoice', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (363, 363, '(A) A business will downsize.', '(B) An employee will retire.', '(C) A project will begin.', '(D) A branch will open.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (364, 364, '(A) An employee evaluation was negative.', '(B) A party will be cancelled.', '(C) Some news was unexpected.', '(D) A worker has been promoted.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (365, 365, '(A) Deliver a speech', '(B) Create a job posting', '(C) Talk to a supervisor', '(D) Organize a party', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (366, 366, '(A) A retail salesperson', '(B) A company technician', '(C) A business client', '(D) A product designer', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (367, 367, '(A) A shipment is guaranteed to arrive on time.', '(B) A service is being offered for free.', '(C) A product is being sold at a discount.', '(D) A technician is available on the requested date.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (368, 368, '(A) It cannot be refunded.', '(B) It is subject to change.', '(C) It does not apply to all items.', '(D) It was just increased.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (369, 369, '(A) Watch a musical performance', '(B) Host a housewarming party', '(C) Attend a company dinner', '(D) Meet at a movie theater', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (370, 370, '(A) He will be at a show.', '(B) He will be with his parents.', '(C) He has to clean up after an event.', '(D) He has to cook a meal.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (371, 371, '(A) Visited his family', '(B) Preordered some tickets', '(C) Went to a birthday party', '(D) Told the woman his plans', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (372, 372, '(A) Calculating some expenses', '(B) Planning a banquet', '(C) Contacting charities', '(D) Preparing some invitations', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (373, 373, '(A) To admit to a mistake', '(B) To make a complaint', '(C) To ask for an approval', '(D) To agree to a request', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (374, 374, '(A) Speak with a supervisor', '(B) Replace an ink cartridge', '(C) Bvy more paper', '(D) Write out addresses', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (375, 375, '(A) At a bicycle shop', '(B) At a sporting goods store', '(C) At an amusement park', '(D) At a fitness center', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (376, 376, '(A) Hire her a personal trainer', '(B) Take her on a tour', '(C) Send her a link', '(D) Give her some lessons', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (377, 377, '(A) Participating in a class', '(B) Renting a storage locker', '(C) Reviewing a pamphlet', '(D) Repairing some equipment', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (378, 378, '(A) To ask for a refund', '(B) To cancel a delivery request', '(C) To inquire about a shipment', '(D) To make a payment', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (379, 379, '(A) Her goods were damaged.', '(B) Her item has not arrived yet.', '(C) She forgot to submit a form.', '(D) She has not received a rebate.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (380, 380, '(A) Calling back later', '(B) Placing an order again', '(C) Leaving a phone numberHackers', '(D) Upgrading a service', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (381, 381, '(A) Worked on a promotional flyer', '(B) Organized some boxes', '(C) Set up a display', '(D) Contacted a gallery', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (382, 382, '(A) Moving some artwork', '(B) Preparing a shipment', '(C) Locating some paintings', '(D) Cleaning a storage room', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (383, 383, '(A) Taking a short break', '(B) Borrowing some equipment', '(C) Consulting the head curator', '(D) Giving a task to an assistant', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (384, 384, '(A) An electronics outlet', '(B) A printing shop', '(C) A graphic design company', '(D) A marketing firm', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (385, 385, '(A) A discount will be offered.', '(B) A shop will undergo renovation.', '(C) A company will relocate.', '(D) A stores hours will change.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (386, 386, '(A) Call back later', '(B) Visit a Web site', '(C) E-mail the business', '(D) Set up an appointment', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (387, 387, '(A) Computer monitors', '(B) Personal tablets', '(C) Office printers', '(D) Mobile phones', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (388, 388, '(A) Mail out billing statements', '(B) Save receipts for reimbursement', '(C) Provide account information', '(D) Limit usage of a device', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (389, 389, '(A) Submit an initial payment', '(B) Distribute plan information', '(C) Order new devices', '(D) Contact a service provider', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (390, 390, '(A) To connect with graduates', '(B) To learn about some products', '(C) To meet potential clients', '(D) To acquire new skills', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (391, 391, '(A) To stress that an applicant is suitable', '(B) To suggest that a deadline is approaching', '(C) To express frustration with a delay', '(D) To indicate support for a plan', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (392, 392, '(A) She has volunteered in the past.', '(B) She is a student at the college.', '(C) She is experienced with interviewing.', '(D) She knows a lot about the organization.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (393, 393, '(A) An educational institution', '(B) A medical facility', '(C) A public library', '(D) A commercial complex', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (394, 394, '(A) To improve an existing building', '(B) To attract new investors', '(C) To address health care needs', '(D) To develop housing for residents', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (395, 395, '(A) City officials cannot pass a bill.', '(B) Some equipment is outdated.', '(C) Additional inspections must be conducted.', '(D) Some people disagree about the projects cost.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (396, 396, '(A) It provides discounts to members.', '(B) It operates in multiple countries.', '(C) It was founded a century ago.', '(D) It was featured in an article.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (397, 397, '(A) Marketing consultations', '(B) Financial management', '(C) Development strategies', '(D) Corporate acquisitions', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (398, 398, '(A) Low interest rates', '(B) High-quality service', '(C) Affordably priced products', '(D) Monthly investment updates', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (399, 399, '(A) To summarize an agenda', '(B) To thank investors', '(C) To praise an employee', '(D) To extend assignment deadlines', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (400, 400, '(A) Introduce an executive', '(B) Demonstrate a device', '(C) Pass out materials', '(D) Give a presentation', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (401, 401, '(A) To show concern', '(B) To offer a solution', '(C) To announce a change', '(D) To encourage participation', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (402, 402, '(A) A building blueprint', '(B) A rental agreement', '(C) A government notice', '(D) A safety manual', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (403, 403, '(A) A tenant filed a complaint about a building.', '(B) The regulation does not apply to his units.', '(C) A fire caused significant damage.', '(D) The required equipment is not installed.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (404, 404, '(A) He is at an appointment.', '(B) He is busy with another project.', '(C) He is out of town.', '(D) He is at a different job site.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (405, 405, '(A) Built a park', '(B) Began a campaign', '(C) Sold some plants', '(D) Donated some money', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (406, 406, '(A) It has received some criticism.', '(B) It has changed over time.', '(C) It is posted on an online forum.', '(D) It focuses on environmental education.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (407, 407, '(A) Volunteers will break up into groups.', '(B) A representative will give a speech.', '(C) A community festival will begin.', '(D) Some questions will be answered.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (408, 408, '(A) A painter ', '(B) An art dealer  ', '(C) A gallery owner ', '(D) A tour guide', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (409, 409, '(A) He has a temporary exhibit.', '(B) He will answer questions after a tour. ', '(C) He is a famous architect. ', '(D) He has released a biography.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (410, 410, '(A) Check a schedule', '(B) Display a pass', '(C) Exchange a ticket', '(D) Bring a document', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (411, 411, '(A) he', '(B) his', '(C) him', '(D) himself', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (412, 412, '(A) between', '(B) within', '(C) among', '(D) behind', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (413, 413, '(A) Both', '(B) Rather', '(C) Either', '(D) Whether', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (414, 414, '(A) satisfaction', '(B) satisfied', '(C) satisfying', '(D) to satisfy', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (415, 415, '(A) those', '(B) many', '(C) that', '(D) several', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (416, 416, '(A) doubtfully', '(B) occasionally', '(C) alternatively', '(D) negatively', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (417, 417, '(A) between', '(B) along', '(C) below', '(D) after', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (418, 418, '(A) authorize', '(B) hire', '(C) present', '(D) convince', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (419, 419, '(A) for', '(B) on', '(C) from', '(D) during', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (420, 420, '(A) served', '(B) communicated', '(C) inquired', '(D) reserved', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (421, 421, '(A) forward', '(B) past', '(C) with', '(D) toward', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (422, 422, '(A) recommendation', '(B) grievance', '(C) compensation', '(D) appreciation', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (423, 423, '(A) called', '(B) testified', '(C) assured', '(D) managed', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (424, 424, '(A) regular', '(B) regularly', '(C) regulated', '(D) regularity', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (425, 425, '(A) amid', '(B) next to', '(C) besides', '(D) apart', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (426, 426, '(A) Little', '(B) Much', '(C) A lot', '(D) Several', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (427, 427, '(A) establishing', '(B) establish', '(C) established', '(D) establishment', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (428, 428, '(A) exercised', '(B) performed', '(C) illustrated', '(D) imitated', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (429, 429, '(A) evaluating', '(B) promoting', '(C) replacing', '(D) recommending', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (430, 430, '(A) I hope you will consider hiring her for the position.', '(B) Thereafter, someone else will be taking responsibility.', '(C) Your supplies are not expected to arrive till tomorrow.', '(D) Thus, you can expect the same level of service from her.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (431, 431, '(A) Should', '(B) Could', '(C) Would', '(D) Will', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (432, 432, '(A) It is important to maintain the beauty of your home.', '(B) Taking care of a garden is a lot of hard work.', '(C) We have added new services to our business.', '(D) Our company will be beginning operations next month.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (433, 433, '(A) equip', '(B) to equip', '(C) equipping', '(D) equipped', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (434, 434, '(A) reliable', '(B) selective', '(C) remote', '(D) arbitrary', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (435, 435, '(A) brochure', '(B) training', '(C) subscription', '(D) consultation', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (436, 436, '(A) renovating', '(B) renovated', '(C) renovate', '(D) renovation', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (437, 437, '(A) levels', '(B) grades', '(C) floors', '(D) stages', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (438, 438, '(A) We thought your design was perfect for our office space.', '(B) Can we give you our feedback early next week?', '(C) Could we schedule a meeting to discuss the details?', '(D) The color of the walls is just fine and should be left alone.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (439, 439, '(A) complete', '(B) have completed', '(C) be completed', '(D) completed', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (440, 440, '(A) requests', '(B) notifies', '(C) invites', '(D) encourages', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (441, 441, '(A) Our annual awards function for branch employees will be held on this date.', '(B) Please let us know whether you tried to visit the office at that time.', '(C) You will be informed of our new location after we have made arrangements.', '(D) It may take a full week before we can finish all of the needed repairs.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (442, 442, '(A) resume', '(B) resuming', '(C) resumed', '(D) have resumed', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (443, 443, '(A) Similarly', '(B) Conversely', '(C) Additionally', '(D) Instead', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (444, 444, '(A) objected', '(B) objective', '(C) objection', '(D) objectionable', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (445, 445, '(A) suggestion', '(B) suggesting', '(C) suggest', '(D) suggestive', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (446, 446, '(A) dispute', '(B) limit', '(C) explore', '(D) terminate', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (447, 447, '(A) The commercials we are working on should be released in a week. ', '(B) This is crucial as our clients hope to advertise in innovative ways. ', '(C) Having two sessions as you suggested seems unnecessary. ', '(D) The team should tell us this week if they can attend.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (448, 448, '(A) there', '(B) it ', '(C) this', '(D) that', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (449, 449, '(A) although', '(B) who', '(C) from', '(D) where', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (450, 450, '(A) reconsider', '(B) evaluate', '(C) control', '(D) share', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (451, 451, '(A) The information could improve or save a patients life.', '(B) Concerns about patient privacy have arisen.', '(C) Emerging technologies for industry professionals are sometimes redundant.', '(D) It will take years of decades to find a cure.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (452, 452, '(A) has provided', '(B) will provide', '(C) provided', '(D) providing', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (453, 453, '(A) turned on ', '(B) operated', '(C) updated ', '(D) closed down ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (454, 454, '(A) visited ', '(B) visit ', '(C) will visit ', '(D) is visiting ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (455, 455, '(A) Homeowners will never need to worry about their heating systems ever again.', '(B) The security system for your home was configured according to your needs.', '(C) We will provide you with an installation estimate by the next day. ', '(D) The package has recently been updated to include motion detectors. ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (456, 456, '(A) training ', '(B) computer ', '(C) incentive ', '(D) investment ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (457, 457, '(A) to give ', '(B) gave ', '(C) to be given ', '(D) giving', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (458, 458, '(A) satisfactorily ', '(B) satisfaction ', '(C) satisfying ', '(D) satisfactory', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (459, 459, '(A) We are pleased to announce the employee with the best annual record.', '(B) Commissions will be limited to those working at the Singapore branch only. ', '(C) We are counting on your full support of the program.', '(D) Keeping employees motivated has become increasingly challenging.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (460, 460, '(A) Fiscal austerity is about to be imposed soon in the branch.', '(B) Employees have established good relations with customers there. ', '(C) Its location has become easier to access than before.', '(D) The branch has been running Thai and English courses. ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (461, 461, '(A) Otherwise ', '(B) Consequently ', '(C) Furthermore ', '(D) Nevertheless ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (462, 462, '(A) adapt', '(B) adapting ', '(C) to adapt ', '(D) adapted ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (463, 463, '(A) attachment ', '(B) attached ', '(C) attach', '(D) been attached', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (464, 464, '(A) Web site design', '(B) Inventory consulting', '(C) Online merchandising', '(D) Clothes manufacturing', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (465, 465, '(A) It is available in a different color.', '(B) It will be removed from an order.', '(C) It may be bought at a physical store.', '(D) It should arrive just a few days late.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (466, 466, '(A) Within the week', '(B) Next week', '(C) In two weeks', '(D) In three weeks', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (467, 467, '(A) She prefers to do her shopping in stores.', '(B) She has decided to cancel an item.', '(C) She is hoping to save on a delivery charge.', '(D) She wants to participate in a promotional event.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (468, 468, '(A) An upcoming film production', '(B) A newly opened entertainment venue', '(C) An industrys prominent personalities', '(D) A media companys ongoing expansion', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (469, 469, '(A) It will be available exclusively through Skywide.', '(B) Its audience will mostly be residents of Los Angeles.', '(C) It is a subsidiary of a company in Mumbai.', '(D) It aims to launch the careers of Indian actors.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (470, 470, '(A) It will be aired in several languages.', '(B) It has produced a variety of programming content.', '(C) It started out as a television news channel.', '(D) It has plans to enter the European market soon.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (471, 471, '(A) [1]', '(B) [2]', '(C) [3]', '(D) [4]', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (472, 472, '(A) At a store opening', '(B) At clothing exhibition', '(C) At a holiday sale', '(D) At a design workshop', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (473, 473, '(A) By placing an order before November 22', '(B) By purchasing a large number of items', '(C) By using an enclosed coupon', '(D) By buying products through a Web site', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (474, 474, '(A) Having items sent by courier', '(B) Attending a fashion event', '(C) Placing an order soon', '(D) Meeting in person', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (475, 475, '(A) [1]', '(B) [2]', '(C) [3]', '(D) [4]', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (476, 476, '(A) It charges members monthly fees.', '(B) It may not approve every membership application.', '(C) It accepts bank transfer payments.', '(D) It has branches throughout the country.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (477, 477, '(A) To compare the performance of university graduates ', '(B) To introduce a new local business', '(C) To teach readers about software installation ', '(D) To analyze recent trends in online markets ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (478, 478, '(A) Repairing broken video machines ', '(B) Supplying digital content', '(C) Installing software for customers ', '(D) Recommending new products', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (479, 479, '(A) They usually rent video games.', '(B) They mostly live in European countries. ', '(C) They are content with its customized service. ', '(D) They are mainly factory workers.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (480, 480, '(A) Jason Inoue ', '(B) Tom Brickman ', '(C) Hester Williams ', '(D) Travis Palmer ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (481, 481, '(A) Conducting research into environmentally friendly chemical substances', '(B) Developing marketing techniques to encourage exports ', '(C) Making new products to appeal to regional markets.  ', '(D) Providing low-interest loans for families to acquire farmland.  ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (482, 482, '(A) It is good for ones health.', '(B) It is less popular than it used to be.', '(C) It is sensitive to weather conditions.', '(D) It is a lucrative product.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (483, 483, '(A) The Department of Agriculture ', '(B) The federal government ', '(C) The Midwest Ginseng Growers Association', '(D) A group of pesticide sellers', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (484, 484, '(A) morale ', '(B) plan ', '(C) expertise  ', '(D) belief ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (485, 485, '(A) To solicit a financial contribution', '(B) To respond to a customers complaint ', '(C) To confirm a client relationship ', '(D) To request details of a project  ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (486, 486, '(A) He inquired about financing options. ', '(B) He wants to expedite a process. ', '(C) He was surprised about the high fees.', '(D) He discovered the firm through a colleague.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (487, 487, '(A) Handling all paperwork by e-mail ', '(B) Changing the building location ', '(C) Delaying the opening of a construction site', '(D) Employing local building companies ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (488, 488, '(A) He wants to relocate his company.', '(B) He should contact Andrew Jones. ', '(C) He received a form by mail. ', '(D) He will arrive in San Francisco by plane', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (489, 489, '(A) To provide an updated schedule for staff training ', '(B) To ask for volunteers for an exhibition', '(C) To explain staffing plans for a business event', '(D) To inform workers of their new job titles ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (490, 490, '(A) To take advantage of a special promotion', '(B) To match the efforts of its competition  ', '(C) To raise advertising revenue  ', '(D) To help increase subscriptions Focus Subscriptions', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (491, 491, '(A) During the morning shift  ', '(B) In the afternoons only ', '(C) After the food hall closes ', '(D) Before the advertising presentations ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (492, 492, '(A) The one in the center aisle  ', '(B) The one at the main entrance ', '(C) The one at the food court ', '(D) The one in the west aisle ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (493, 493, '(A) To commemorate the founding of Sturgeon City', '(B) To celebrate the 10th anniversary of the Bright Light Orphanage', '(C) To honor the life of a local philanthropist', '(D) To hold an annual music festival ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (494, 494, '(A) He enjoyed playing baseball.  ', '(B) He helped the disabled and the elderly.  ', '(C) He founded and environmental organization. ', '(D) He is survived by his wife and children.  ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (495, 495, '(A) acts ', '(B) orders', '(C) demands ', '(D) extends ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (496, 496, '(A) John C. Mason will give a welcoming speech.', '(B) There will be food and beverages available for purchase. ', '(C) Family members of John C. Mason will be in attendance. ', '(D) It is sponsored by the Bright Light Orphanage.', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (497, 497, '(A) An organizer of a fundraising event ', '(B) A professor at Melbrooke Community College  ', '(C) A member of a community group ', '(D) A city official in the town of Melbrooke ', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (498, 498, '(A) Published work in a prominent science journal. ', '(B) Sponsored a series of biology exhibitions ', '(C) Discovered a new type of insect. ', '(D) Ran a campaign to promote conservation', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (499, 499, '(A) In next months newsletter ', '(B) At the annual science fair ', '(C) During a lecture at the college ', '(D) At the opening of a new exhibit', NOW(), NOW());
INSERT INTO option_model (id, toeic_id, choice1, choice2, choice3, choice4, created_at, updated_at)
VALUES (500, 500, '(A) The start time ', '(B) The chairperson ', '(C) The discussion topics ', '(D) The location  ', NOW(), NOW());