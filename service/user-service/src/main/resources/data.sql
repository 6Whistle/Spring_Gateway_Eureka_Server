insert into user_model (id, email, password, name, registration) values (1, 'admin@test.com', '1234', '관리자', 'LOCAL');
insert into calendar_model (user_id, is_all_day) values (1, true);
insert into role_model (role, user_id) values (1, 1);