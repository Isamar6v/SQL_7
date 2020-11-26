CREATE DATABASE IF NOT EXISTS bedu_test_2;
#DROP DATABASE IF EXISTS bedu_test_2;

USE bedu_test_2;

CREATE TABLE users (
	id INT PRIMARY KEY,
	genero CHAR(1),
	edad INT,
	ocupacion INT,
	cp VARCHAR(20)
);

DROP TABLE IF EXISTS users;

##

CREATE TABLE IF NOT EXISTS movies (
	id INT PRIMARY KEY,
	titulo VARCHAR(40),
	generos VARCHAR(100)
);


CREATE TABLE IF NOT EXISTS ratings (
	id INT PRIMARY KEY,
	id_movie INT,
	rating INT,
	fecha INT
);

##alternativa
CREATE TABLE IF NOT EXISTS ratings2 (
	id INT PRIMARY KEY AUTO_INCREMENT,
	userid INT,
	rating INT,
	movieid INT,
	time_stamp BIGINT,
	FOREIGN KEY (userid) REFERENCES users(id),
	FOREIGN KEY (movieid) REFERENCES movies(id)
);


