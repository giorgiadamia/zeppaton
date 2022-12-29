insert into zeppaton.usr (id, username, password, active)
values (1, 'admin', 'admin', true);

insert into zeppaton.user_role (user_id, roles)
values (1, 'USER'), (1, 'ADMIN');