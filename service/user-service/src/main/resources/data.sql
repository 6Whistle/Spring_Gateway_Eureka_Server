show tables;

insert into user_model (id, email, password, name, registration) values (1, 'admin@test.com', '1234', '관리자', 'LOCAL');
insert into role_model (id, role, user_id) values (1, 1, 1);