-- hs_game(id, name)
-- hs_type(
-- highscore(type, game_, username_, value)


DROP TABLE IF EXISTS highscore;
DROP TABLE IF EXISTS hs_type;
DROP TABLE IF EXISTS hs_game;

CREATE TABLE hs_game (
  name TEXT NOT NULL,
  id   INTEGER PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE hs_type (
  id         INTEGER PRIMARY KEY AUTOINCREMENT,
  sort_order INTEGER NOT NULL,
  datatype   TEXT    NOT NULL,
  gameId     TEXT    NOT NULL,
  FOREIGN KEY (gameId) REFERENCES hs_game (id)
);

CREATE TABLE highscore (
  value          DOUBLE  NOT NULL,
  username       TEXT    NOT NULL,
  time_submitted DATE    NOT NULL,
  type_id        INTEGER NOT NULL,
  FOREIGN KEY (type_id) REFERENCES hs_type (id),
  PRIMARY KEY (username, time_submitted)
);

