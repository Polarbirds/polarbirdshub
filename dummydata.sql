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

INSERT INTO category ('name', 'description')
VALUES ('Java','Beskrivelse');
INSERT INTO category ('name', 'description')
VALUES ('Python','Beskrivelse');
INSERT INTO writer ('name', 'email')
VALUES ('Gard', 'gard@mail.lol');
INSERT INTO writer ('name', 'email')
VALUES ('Harald', 'harald@mail.lol');
INSERT INTO article ('id', 'postDate', 'title', 'body', 'writerEmail', 'category')
VALUES (1,'2001-01-01 01:01:01', 'testartikkel 1', 'testinnhold', 'gard@mail.lol', 'Java');
INSERT INTO article ('id', 'postDate', 'title', 'body', 'writerEmail', 'category')
VALUES (2,'2002-01-01 01:01:01', 'testartikkel 2', 'testinnhold', 'harald@mail.lol','Python');
INSERT INTO article ('id', 'postDate', 'title', 'body', 'writerEmail', 'category')
VALUES (1,'2003-01-01 01:01:01', 'testartikkel 3', 'testinnhold', 'gard@mail.lol', 'Java');
INSERT INTO article ('id', 'postDate', 'title', 'body', 'writerEmail', 'category')
VALUES (2,'2004-01-01 01:01:01', 'testartikkel 4', 'testinnhold', 'harald@mail.lol','Python');
INSERT INTO article ('id', 'postDate', 'title', 'body', 'writerEmail', 'category')
VALUES (1,'2005-01-01 01:01:01', 'testartikkel 5', 'testinnhold', 'gard@mail.lol', 'Java');
INSERT INTO article ('id', 'postDate', 'title', 'body', 'writerEmail', 'category')
VALUES (2,'2006-01-01 01:01:01', 'testartikkel 6', 'testinnhold', 'harald@mail.lol','Python');