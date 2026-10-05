CREATE TABLE IF NOT EXISTS esl_help (
    id INT AUTO_INCREMENT PRIMARY KEY,
    player_id INT NOT NULL,
    help_type VARCHAR(50) NOT NULL,
    request_time DATETIME NOT NULL,
    resolved BOOLEAN DEFAULT FALSE
);

INSERT INTO esl_help (player_id, help_type, request_time) VALUES (1, 'tutorial', NOW());
INSERT INTO esl_help (player_id, help_type, request_time) VALUES (2, 'support', NOW());