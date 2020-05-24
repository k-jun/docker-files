

INSERT INTO users (id, display_name, updated_at, created_at) VALUES
 (NULL, '', 0, 0),
 (NULL, '', 0, 0),
 (NULL, '', 0, 0),
 (NULL, '', 0, 0),
 (NULL, '', 0, 0),
 (NULL, '', 0, 0),
 (NULL, '', 0, 0),
 (NULL, '', 0, 0),
 (NULL, '', 0, 0),
 (NULL, '', 0, 0);

INSERT INTO users (display_name, updated_at, created_at) SELECT display_name, updated_at, created_at FROM users; -- 20
INSERT INTO users (display_name, updated_at, created_at) SELECT display_name, updated_at, created_at FROM users; -- 40
INSERT INTO users (display_name, updated_at, created_at) SELECT display_name, updated_at, created_at FROM users; -- 80
INSERT INTO users (display_name, updated_at, created_at) SELECT display_name, updated_at, created_at FROM users; -- 160
INSERT INTO users (display_name, updated_at, created_at) SELECT display_name, updated_at, created_at FROM users; -- 320
INSERT INTO users (display_name, updated_at, created_at) SELECT display_name, updated_at, created_at FROM users; -- 640
INSERT INTO users (display_name, updated_at, created_at) SELECT display_name, updated_at, created_at FROM users; -- 1280
INSERT INTO users (display_name, updated_at, created_at) SELECT display_name, updated_at, created_at FROM users; -- 2560
INSERT INTO users (display_name, updated_at, created_at) SELECT display_name, updated_at, created_at FROM users; -- 5120
INSERT INTO users (display_name, updated_at, created_at) SELECT display_name, updated_at, created_at FROM users; -- 10240
INSERT INTO users (display_name, updated_at, created_at) SELECT display_name, updated_at, created_at FROM users; -- 20480
INSERT INTO users (display_name, updated_at, created_at) SELECT display_name, updated_at, created_at FROM users; -- 40960
INSERT INTO users (display_name, updated_at, created_at) SELECT display_name, updated_at, created_at FROM users; -- 81920
INSERT INTO users (display_name, updated_at, created_at) SELECT display_name, updated_at, created_at FROM users; -- 160000~

UPDATE users SET
display_name = SUBSTRING(MD5(RAND()), 1, 50),
updated_at = CEIL(RAND() * 2678400 + 1561939200),
created_at = CEIL(RAND() * 2678400 + 1561939200);

INSERT INTO user_login_names (login_name, password_hash, salt, user_id, updated_at, created_at) SELECT CONCAT(SUBSTRING(MD5(RAND()), 1, 50), id) , SUBSTRING(MD5(RAND()), 1, 10), SUBSTRING(MD5(RAND()), 1, 10), id, CEIL(RAND() * 2678400 + 1561939200), CEIL(RAND() * 2678400 + 1561939200)  FROM users;


INSERT INTO channels (name, owner, updated_at, created_at) SELECT SUBSTRING(MD5(RAND()), 1, 10), id, CEIL(RAND() * 2678400 + 1561939200), CEIL(RAND() * 2678400 + 1561939200)  FROM users WHERE id < 1000;

INSERT INTO channels (name, owner, updated_at, created_at) SELECT SUBSTRING(MD5(RAND()), 1, 10), owner, CEIL(RAND() * 2678400 + 1561939200), CEIL(RAND() * 2678400 + 1561939200)  FROM channels;
INSERT INTO channels (name, owner, updated_at, created_at) SELECT SUBSTRING(MD5(RAND()), 1, 10), owner, CEIL(RAND() * 2678400 + 1561939200), CEIL(RAND() * 2678400 + 1561939200)  FROM channels;

INSERT INTO messages (channel_id, user_id, type, body, updated_at, created_at) SELECT CEIL(RAND() * 2500), id, SUBSTRING(MD5(RAND()), 1, 1), SUBSTRING(MD5(RAND()), 1, 50), CEIL(RAND() * 2678400 + 1561939200), CEIL(RAND() * 2678400 + 1561939200)  FROM users;
INSERT INTO messages (channel_id, user_id, type, body, updated_at, created_at) SELECT CEIL(RAND() * 2500), id, SUBSTRING(MD5(RAND()), 1, 1), SUBSTRING(MD5(RAND()), 1, 50), CEIL(RAND() * 2678400 + 1561939200), CEIL(RAND() * 2678400 + 1561939200)  FROM users;
INSERT INTO messages (channel_id, user_id, type, body, updated_at, created_at) SELECT CEIL(RAND() * 2500), id, SUBSTRING(MD5(RAND()), 1, 1), SUBSTRING(MD5(RAND()), 1, 50), CEIL(RAND() * 2678400 + 1561939200), CEIL(RAND() * 2678400 + 1561939200)  FROM users;
INSERT INTO messages (channel_id, user_id, type, body, updated_at, created_at) SELECT CEIL(RAND() * 2500), id, SUBSTRING(MD5(RAND()), 1, 1), SUBSTRING(MD5(RAND()), 1, 50), CEIL(RAND() * 2678400 + 1561939200), CEIL(RAND() * 2678400 + 1561939200)  FROM users;
INSERT INTO messages (channel_id, user_id, type, body, updated_at, created_at) SELECT CEIL(RAND() * 2500), id, SUBSTRING(MD5(RAND()), 1, 1), SUBSTRING(MD5(RAND()), 1, 50), CEIL(RAND() * 2678400 + 1561939200), CEIL(RAND() * 2678400 + 1561939200)  FROM users;



