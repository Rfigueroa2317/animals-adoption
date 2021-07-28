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

INSERT INTO animals(name, type, age, size, is_adoptable, is_cute) VALUES
('Fritz', 'dog', 16, 'medium', 0, 1),
('Shiner', 'dog', 10, 'big', 0, 1),
('Instance', 'fish', 1, 'tiny', 0, 0),
('Rosie', 'cat', 4, 'fat', 0, 1),
('Bear', 'gerbil', 2, 'small', 1,1),
('mocha', 'cat', 3, 'small', 1,1),
('espresso', 'dog', 5, 'medium', 1, 0),
('champ', 'ferret', 3, 'big', 1, 0),
('pinky', 'dog', 5, 'small', 0,1),
('chazzy', 'dog', 10, 'small', 1, 0),
('rutger', 'dog', 8, 'big', 0,1);

SELECT * FROM adoptionCenter.animals;

# WHERE Clause
SELECT name, type FROM animals WHERE type = 'dog';

# WHERE - BETWEEN
SELECT name, age FROM animals WHERE age > 5 OR age < 10;
SELECT name, age FROM animals WHERE age BETWEEN 5 and 10;
SELECT name, type FROM animals WHERE type BETWEEN 'dog' AND 'parrot';

# WHERE - LIKE: will conpare character by character, allows us to output
SELECT name FROM animals WHERE name LIKE '%y'; #animals ending with y
SELECT name FROM animals WHERE type LIKE '%r%'; # animals whose type of
# animal
# has an r in it

# Where - DISTINCT : allows us to avoid duplicates
SELECT DISTINCT name FROM animals WHERE type = 'dog'; #this will pull
# all distinct names as long as the animal is dog
SELECT DISTINCT name, type FROM animals WHERE type = 'dog';
SELECT DISTINCT type FROM animals;

# WHERE - IN
SELECT * FROM animals;
SELECT age FROM animals WHERE age IN (8, 3, 10, 4);
SELECT name, type, age FROM animals WHERE type IN ('cat','dog','gerbil');


# CHAINING WHERE $$ COMPARISON OPERATORS
SELECT name FROM animals WHERE age > 6 AND type = 'dog';
SELECT name, type FROM animals WHERE is_adoptable = 1 AND age < 5 AND type = 'cat';
