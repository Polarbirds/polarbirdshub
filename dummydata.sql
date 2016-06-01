-- empty
INSERT INTO lb_game ('name') VALUES ('NT');
INSERT INTO lb_game ('name') VALUES ('NT2');
INSERT INTO lb_game ('name') VALUES ('NT3');
INSERT INTO lb_game ('name') VALUES ('NT4');

INSERT INTO leaderboard ('name', 'sort_order', 'datatype', 'gamename')
VALUES ('kills', '+', 'number', 'NT');

INSERT INTO score ('value', 'username', 'time_submitted', 'typename', 'gamename')
VALUES (123, 'haraldfw', '2016-05-25 12:12:12', 'kills', 'NT');
INSERT INTO score ('value', 'username', 'time_submitted', 'typename', 'gamename')
VALUES (1234, 'haraldfw', '2016-05-25 16:11:03', 'kills', 'NT');
INSERT INTO score ('value', 'username', 'time_submitted', 'typename', 'gamename')
VALUES (56243, 'haraldfw', '2016-05-25 11:02:56', 'kills', 'NT');
INSERT INTO score ('value', 'username', 'time_submitted', 'typename', 'gamename')
VALUES (5243, 'haraldfw', '2016-05-25 02:03:12', 'kills', 'NT');