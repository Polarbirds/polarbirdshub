DROP TABLE IF EXISTS score;
DROP TABLE IF EXISTS leaderboard;
DROP TABLE IF EXISTS lb_game;

CREATE TABLE lb_game (
  name TEXT NOT NULL,
  id   INTEGER PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE leaderboard (
  id         INTEGER PRIMARY KEY AUTOINCREMENT,
  sort_order INTEGER NOT NULL,
  datatype   TEXT    NOT NULL,
  gameId     TEXT    NOT NULL,
  FOREIGN KEY (gameId) REFERENCES lb_game (id)
);

CREATE TABLE score (
  value          DOUBLE  NOT NULL,
  username       TEXT    NOT NULL,
  time_submitted DATE    NOT NULL,
  type_id        INTEGER NOT NULL,
  FOREIGN KEY (type_id) REFERENCES leaderboard (id),
  PRIMARY KEY (username, time_submitted)
);

