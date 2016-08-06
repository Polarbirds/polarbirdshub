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
VALUES ('java', 'ølakjsdfølkajsdøflkjasdf');
INSERT INTO category ('name', 'description')
VALUES ('apache-camel', 'ølakjsdfølkajsdøflkjasdf');

INSERT INTO writer ('name', 'email')
VALUES ('Harald Floor Wilhelmsen', 'haraldfw@gmail.com');

INSERT INTO article('id', 'postDate', 'title', 'body', 'category', 'writerEmail')
VALUES (0, '2001-01-01 01:01:01', 'This is a title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam cursus quam neque, sit amet volutpat ligula placerat hendrerit. Nam viverra semper eros, a luctus neque hendrerit ut. Etiam fermentum turpis nec sollicitudin feugiat. Ut commodo magna at dolor accumsan consectetur. Integer cursus blandit pellentesque. Donec sit amet ex eu nisl scelerisque euismod viverra in augue. In quis dictum orci, at tempor ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque efficitur, arcu non pulvinar fermentum, purus est lobortis leo, ut dictum justo ante nec mauris. Nulla est est, fringilla et lacus non, pretium fermentum est. Quisque odio sem, cursus vel lectus non, convallis placerat eros.', 'java', 'haraldfw@gmail.com');

INSERT INTO article('id', 'postDate', 'title', 'body', 'category', 'writerEmail')
VALUES (1, '2001-01-01 01:01:01', 'This is a title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam cursus quam neque, sit amet volutpat ligula placerat hendrerit. Nam viverra semper eros, a luctus neque hendrerit ut. Etiam fermentum turpis nec sollicitudin feugiat. Ut commodo magna at dolor accumsan consectetur. Integer cursus blandit pellentesque. Donec sit amet ex eu nisl scelerisque euismod viverra in augue. In quis dictum orci, at tempor ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque efficitur, arcu non pulvinar fermentum, purus est lobortis leo, ut dictum justo ante nec mauris. Nulla est est, fringilla et lacus non, pretium fermentum est. Quisque odio sem, cursus vel lectus non, convallis placerat eros.', 'java', 'haraldfw@gmail.com');

INSERT INTO article('id', 'postDate', 'title', 'body', 'category', 'writerEmail')
VALUES (2, '2001-01-01 01:01:01', 'This is a title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam cursus quam neque, sit amet volutpat ligula placerat hendrerit. Nam viverra semper eros, a luctus neque hendrerit ut. Etiam fermentum turpis nec sollicitudin feugiat. Ut commodo magna at dolor accumsan consectetur. Integer cursus blandit pellentesque. Donec sit amet ex eu nisl scelerisque euismod viverra in augue. In quis dictum orci, at tempor ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque efficitur, arcu non pulvinar fermentum, purus est lobortis leo, ut dictum justo ante nec mauris. Nulla est est, fringilla et lacus non, pretium fermentum est. Quisque odio sem, cursus vel lectus non, convallis placerat eros.', 'java', 'haraldfw@gmail.com');

INSERT INTO article('id', 'postDate', 'title', 'body', 'category', 'writerEmail')
VALUES (3, '2001-01-01 01:01:01', 'This is a title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam cursus quam neque, sit amet volutpat ligula placerat hendrerit. Nam viverra semper eros, a luctus neque hendrerit ut. Etiam fermentum turpis nec sollicitudin feugiat. Ut commodo magna at dolor accumsan consectetur. Integer cursus blandit pellentesque. Donec sit amet ex eu nisl scelerisque euismod viverra in augue. In quis dictum orci, at tempor ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque efficitur, arcu non pulvinar fermentum, purus est lobortis leo, ut dictum justo ante nec mauris. Nulla est est, fringilla et lacus non, pretium fermentum est. Quisque odio sem, cursus vel lectus non, convallis placerat eros.', 'java', 'haraldfw@gmail.com');

INSERT INTO article('id', 'postDate', 'title', 'body', 'category', 'writerEmail')
VALUES (4, '2001-01-01 01:01:01', 'This is a title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam cursus quam neque, sit amet volutpat ligula placerat hendrerit. Nam viverra semper eros, a luctus neque hendrerit ut. Etiam fermentum turpis nec sollicitudin feugiat. Ut commodo magna at dolor accumsan consectetur. Integer cursus blandit pellentesque. Donec sit amet ex eu nisl scelerisque euismod viverra in augue. In quis dictum orci, at tempor ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque efficitur, arcu non pulvinar fermentum, purus est lobortis leo, ut dictum justo ante nec mauris. Nulla est est, fringilla et lacus non, pretium fermentum est. Quisque odio sem, cursus vel lectus non, convallis placerat eros.', 'java', 'haraldfw@gmail.com');

INSERT INTO article('id', 'postDate', 'title', 'body', 'category', 'writerEmail')
VALUES (5, '2001-01-01 01:01:01', 'This is a title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam cursus quam neque, sit amet volutpat ligula placerat hendrerit. Nam viverra semper eros, a luctus neque hendrerit ut. Etiam fermentum turpis nec sollicitudin feugiat. Ut commodo magna at dolor accumsan consectetur. Integer cursus blandit pellentesque. Donec sit amet ex eu nisl scelerisque euismod viverra in augue. In quis dictum orci, at tempor ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque efficitur, arcu non pulvinar fermentum, purus est lobortis leo, ut dictum justo ante nec mauris. Nulla est est, fringilla et lacus non, pretium fermentum est. Quisque odio sem, cursus vel lectus non, convallis placerat eros.', 'java', 'haraldfw@gmail.com');

INSERT INTO article('id', 'postDate', 'title', 'body', 'category', 'writerEmail')
VALUES (6, '2001-01-01 01:01:01', 'This is a title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam cursus quam neque, sit amet volutpat ligula placerat hendrerit. Nam viverra semper eros, a luctus neque hendrerit ut. Etiam fermentum turpis nec sollicitudin feugiat. Ut commodo magna at dolor accumsan consectetur. Integer cursus blandit pellentesque. Donec sit amet ex eu nisl scelerisque euismod viverra in augue. In quis dictum orci, at tempor ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque efficitur, arcu non pulvinar fermentum, purus est lobortis leo, ut dictum justo ante nec mauris. Nulla est est, fringilla et lacus non, pretium fermentum est. Quisque odio sem, cursus vel lectus non, convallis placerat eros.', 'java', 'haraldfw@gmail.com');

