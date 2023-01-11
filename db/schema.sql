CREATE SCHEMA premier_league;

CREATE TABLE premier_league.teams (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    coach VARCHAR(255) NOT NULL,
    stadium VARCHAR(255) NOT NULL
);

CREATE TABLE premier_league.players (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    position VARCHAR(255) NOT NULL,
    team_id INT NOT NULL,
    FOREIGN KEY (team_id) REFERENCES teams(id)
);

CREATE TABLE premier_league.matches (
    id INT PRIMARY KEY,
    team_home INT NOT NULL,
    team_away INT NOT NULL,
    home_score INT NOT NULL,
    away_score INT NOT NULL,
    match_date DATE NOT NULL,
    FOREIGN KEY (team_home) REFERENCES teams(id),
    FOREIGN KEY (team_away) REFERENCES teams(id)
);

CREATE TABLE premier_league.goal_scorers (
    match_id INT NOT NULL,
    player_id INT NOT NULL,
    team_id INT NOT NULL,
    goal_time TIMESTAMP NOT NULL,
    PRIMARY KEY (match_id, player_id),
    FOREIGN KEY (match_id) REFERENCES matches(id),
    FOREIGN KEY (player_id) REFERENCES players(id),
    FOREIGN KEY (team_id) REFERENCES teams(id)
);

-- mysql specific commands - commented out by human - peterai
-- CREATE USER 'admin'@'localhost' IDENTIFIED BY 'password';
-- GRANT ALL PRIVILEGES ON premier_league.* TO 'admin'@'localhost';

-- CREATE USER 'web'@'localhost' IDENTIFIED BY 'password';
-- GRANT SELECT ON premier_league.* TO 'web'@'localhost';

-- postgres specific commands
CREATE USER admin WITH PASSWORD 'password';
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA premier_league TO admin;

CREATE USER web WITH PASSWORD 'password';
GRANT SELECT ON ALL TABLES IN SCHEMA premier_league TO web;
