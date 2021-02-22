CREATE DATABASE nba_scan;
USE nba_scan;

CREATE TABLE players (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  team VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE stats (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  opponent VARCHAR(255) NOT NULL,
  birth_date DATE NOT NULL,
  game_date DATE NOT NULL,
  pointsPG INT,
  players_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (players_id) REFERENCES players(id)
);

CREATE TABLE astro_data (
  id INT NOT NULL AUTO_INCREMENT,
  sun_position VARCHAR(255) NOT NULL,
  moon_position VARCHAR(255) NOT NULL,
  mercury_position VARCHAR(255) NOT NULL,
  mars_position VARCHAR(255) NOT NULL,
  jupiter_position VARCHAR(255) NOT NULL,
  stats_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (stats_id) REFERENCES stats(id)
)
