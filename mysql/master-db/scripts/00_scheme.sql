--
--
-- CREATE TABLE IF NOT EXISTS users (
--     id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
--     display_name VARCHAR(128) NOT NULL,
--     created_at INTEGER NOT NULL,
--     updated_at INTEGER NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- CREATE TABLE IF NOT EXISTS user_login_names (
--     login_name VARCHAR(128) PRIMARY KEY,
--     password_hash VARCHAR(128) NOT NULL,
--     salt VARCHAR(128) NOT NULL,
--     user_id INTEGER UNSIGNED NOT NULL,
--     created_at INTEGER NOT NULL,
--     updated_at INTEGER NOT NULL,
--     UNIQUE on_user_id (user_id)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- CREATE TABLE IF NOT EXISTS images (
--     id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
--     data LONGTEXT NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- CREATE TABLE IF NOT EXISTS channels (
--     id INTEGER UNSIGNED PRIMARY KEY  AUTO_INCREMENT,
--     name VARCHAR(128) NOT NULL,
--     owner INTEGER NOT NULL,
--     created_at INTEGER NOT NULL,
--     updated_at INTEGER NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- CREATE TABLE IF NOT EXISTS messages (
--     id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
--     channel_id INTEGER NOT NULL,
--     user_id INTEGER NOT NULL,
--     type VARCHAR(128) NOT NULL,
--     body TEXT NOT NULL,
--     created_at INTEGER NOT NULL,
--     updated_at INTEGER NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE parent (
    id INT NOT NULL,
    PRIMARY KEY (id)
) ENGINE=INNODB;

CREATE TABLE child (
    id INT,
    parent_id INT,
    INDEX par_ind (parent_id),
    FOREIGN KEY (parent_id) REFERENCES parent(id) ON DELETE CASCADE
) ENGINE=INNODB;

