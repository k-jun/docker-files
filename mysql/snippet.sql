
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

INSERT INTO parent (id) VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10);

SET @row_number = 10; 
INSERT INTO parent (id) SELECT (@row_number:=@row_number + 1) AS num FROM parent CROSS JOIN parent as t2 ON t2.id BETWEEN 1 and 9;
INSERT INTO parent (id) SELECT (@row_number:=@row_number + 1) AS num FROM parent CROSS JOIN parent as t2 ON t2.id BETWEEN 1 and 9;

SET @row_number = 0; 
INSERT INTO child (id, parent_id) SELECT (@row_number:=@row_number + 1), CEIL(RAND() * 1000) FROM parent;
INSERT INTO child (id, parent_id) SELECT (@row_number:=@row_number + 1), CEIL(RAND() * 1000) FROM parent;
INSERT INTO child (id, parent_id) SELECT (@row_number:=@row_number + 1), CEIL(RAND() * 1000) FROM parent;
