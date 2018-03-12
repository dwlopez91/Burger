CREATE DATABASE IF NOT EXISTS burgers_db; 
USE burgers_db; 

CREATE TABLE burgers (
    id INT NOT NULL AUTO_INCREMENT,
    burger_name VARCHAR(200) NOT NULL,
    devoured BOOL DEFAULT FALSE, 
    PRIMARY KEY (id)
);

INSERT INTO burgers (burger_name, devoured) VALUES("Cheese Burger", FALSE);
INSERT INTO burgers (burger_name, devoured) VALUES("Jucy Lucy Burger", FALSE);
INSERT INTO burgers (burger_name, devoured) VALUES("Veggie Burger", FALSE);
