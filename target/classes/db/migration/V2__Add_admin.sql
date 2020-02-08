insert into usr (id, username, password, activity)
    values (1, 'admin', 'strongpass', true);

insert into user_role (user_id, roles)
    values (1, 'USER'), (1, 'ADMIN');