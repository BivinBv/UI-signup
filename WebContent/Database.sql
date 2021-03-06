CREATE DATABASE userdlts;
USE userdlts;

CREATE TABLE user(
id INT NOT NULL AUTO_INCREMENT,
firstname VARCHAR(40) NOT NULL,
lastname VARCHAR(40),
mobilenumber VARCHAR(14) NOT NULL,
email VARCHAR(45) NOT NULL,
PRIMARY KEY(id));

CREATE TABLE logincredentials(
id INT NOT NULL AUTO_INCREMENT,
userid INT NOT NULL,
username VARCHAR(45) NOT NULL,
password VARCHAR(50) NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(userid) REFERENCES user(id)
);

