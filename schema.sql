DROP TABLE IF EXISTS score;
DROP TABLE IF EXISTS leaderboard;
DROP TABLE IF EXISTS lb_game;

CREATE TABLE lb_game (
  name TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE leaderboard (
  name       TEXT    NOT NULL,
  sort_order INTEGER NOT NULL,
  datatype   TEXT    NOT NULL,
  gamename   TEXT    NOT NULL,
  FOREIGN KEY (gamename) REFERENCES lb_game (name),
  PRIMARY KEY (name, gamename)
);

CREATE TABLE score (
  value          DOUBLE   NOT NULL,
  username       TEXT     NOT NULL,
  time_submitted DATETIME NOT NULL,
  typename       INTEGER  NOT NULL,
  gamename       TEXT     NOT NULL,
  FOREIGN KEY (typename) REFERENCES leaderboard (name),
  FOREIGN KEY (gamename) REFERENCES leaderboard (gamename),
  PRIMARY KEY (username, time_submitted)
);


DROP TABLE IF EXISTS article;
DROP TABLE IF EXISTS writer;
DROP TABLE IF EXISTS category;

CREATE TABLE writer (
  name  TEXT NOT NULL,
  email TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE category (
  name        TEXT NOT NULL PRIMARY KEY,
  description TEXT NOT NULL
);

CREATE TABLE article (
  id          INT      NOT NULL,
  poastDate   DATETIME NOT NULL,
  title       TEXT     NOT NULL,
  body        TEXT     NOT NULL,
  writerEmail TEXT     NOT NULL,
  category    TEXT     NOT NULL,
  FOREIGN KEY (category) REFERENCES category (name),
  FOREIGN KEY (writerEmail) REFERENCES writer (email)
);