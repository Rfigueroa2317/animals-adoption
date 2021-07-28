SHOW DATABASES;

CREATE DATABASE adoptionCenter;

USE adoptionCenter;

GRANT ALL ON adoptionCenter. * TO 'root'@'localhost';

CREATE TABLE animals (
    animal_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(50),
    type VARCHAR(100) NOT NULL,
    age INT,
    size TEXT,
    is_adoptable TINYINT(1),
    is_cute TINYINT(1),
    PRIMARY KEY (animal_id)
);
DESCRIBE animals;