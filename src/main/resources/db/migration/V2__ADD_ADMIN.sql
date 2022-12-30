insert into zeppaton.usr (id, username, password, active)
values (1, 'admin', '$2a$08$1SYXgdm7ni.7ZTp1QTyvRuFW52Wei9/x4rMuZMxlNxbByQCEqRItK', true);

insert into zeppaton.user_role (user_id, roles)
values (1, 'USER'), (1, 'ADMIN');
