CREATE DATABASE universe;

CREATE TABLE galaxy(galaxy_id SERIAL PRIMARY KEY);

CREATE TABLE star(star_id SERIAL PRIMARY KEY);

CREATE TABLE planet(planet_id SERIAL PRIMARY KEY);

CREATE TABLE moon(moon_id SERIAL PRIMARY KEY);

CREATE TABLE extra(extra_id SERIAL PRIMARY KEY);

ALTER TABLE galaxy 
ADD COLUMN name VARCHAR(20) NOT NULL UNIQUE,
ADD COLUMN int1 INT NOT NULL,
ADD COLUMN int2 INT,
ADD COLUMN numeric1 NUMERIC,
ADD COLUMN text1 TEXT,
ADD COLUMN boolean1 BOOLEAN,
ADD COLUMN boolean2 BOOLEAN;

ALTER TABLE star
ADD COLUMN name VARCHAR(20) NOT NULL UNIQUE,
ADD COLUMN int1 INT NOT NULL,
ADD COLUMN int2 INT,
ADD COLUMN numeric1 NUMERIC,
ADD COLUMN text1 TEXT,
ADD COLUMN boolean1 BOOLEAN,
ADD COLUMN boolean2 BOOLEAN;

ALTER TABLE planet 
ADD COLUMN name VARCHAR(20) NOT NULL UNIQUE,
ADD COLUMN int1 INT NOT NULL,
ADD COLUMN int2 INT,
ADD COLUMN numeric1 NUMERIC,
ADD COLUMN text1 TEXT,
ADD COLUMN boolean1 BOOLEAN,
ADD COLUMN boolean2 BOOLEAN;

ALTER TABLE moon 
ADD COLUMN name VARCHAR(20) NOT NULL UNIQUE,
ADD COLUMN int1 INT NOT NULL,
ADD COLUMN int2 INT,
ADD COLUMN numeric1 NUMERIC,
ADD COLUMN text1 TEXT,
ADD COLUMN boolean1 BOOLEAN,
ADD COLUMN boolean2 BOOLEAN;

ALTER TABLE extra 
ADD COLUMN name VARCHAR(20) NOT NULL UNIQUE,
ADD COLUMN int1 INT NOT NULL,
ADD COLUMN int2 INT,
ADD COLUMN numeric1 NUMERIC,
ADD COLUMN text1 TEXT,
ADD COLUMN boolean1 BOOLEAN,
ADD COLUMN boolean2 BOOLEAN;

ALTER TABLE star ADD COLUMN galaxy_id INT NOT NULL CONSTRAINT fk_galaxy REFERENCES galaxy(galaxy_id);
ALTER TABLE planet ADD COLUMN star_id INT NOT NULL CONSTRAINT fk_star REFERENCES star(star_id);
ALTER TABLE moon ADD COLUMN planet_id INT NOT NULL CONSTRAINT fk_planet REFERENCES planet(planet_id);


INSERT INTO galaxy(name, int1) VALUES
('galaxy1', 1),
('galaxy2', 2),
('galaxy3', 3),
('galaxy4', 4),
('galaxy5', 5),
('galaxy6', 6);

INSERT INTO star(name, int1, galaxy_id) VALUES
('star1', 1,1),
('star2', 2,1),
('star3', 3,2),
('star4', 4,2),
('star5', 5,3),
('star6', 6,3);

INSERT INTO planet(name, int1, star_id) VALUES
('planet1', 1,1),
('planet2', 2,1),
('planet3', 3,2),
('planet4', 4,2),
('planet5', 5,3),
('planet6', 6,3),
('planet7', 7,4),
('planet8', 8,4),
('planet9', 9,5),
('planet10', 10,5),
('planet11', 11,6),
('planet12', 12,6);

INSERT INTO moon(name, int1, planet_id) VALUES
('moon1', 1,1),
('moon2', 2,1),
('moon3', 3,2),
('moon4', 4,2),
('moon5', 5,3),
('moon6', 6,3),
('moon7', 7,4),
('moon8', 8,4),
('moon9', 9,5),
('moon10', 10,5),
('moon11', 11,6),
('moon12', 12,6),
('moon13', 13,7),
('moon14', 14,7),
('moon15', 15,8),
('moon16', 16,8),
('moon17', 17,9),
('moon18', 18,9),
('moon19', 19,10),
('moon20', 20,10);

INSERT INTO extra(name, int1) VALUES
('extra1', 1),
('extra2', 2),
('extra3', 3);