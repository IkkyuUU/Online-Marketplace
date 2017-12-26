DROP DATABASE IF EXISTS joole;
CREATE DATABASE joole;
USE joole;

DROP TABLE IF EXISTS user;
CREATE TABLE user (userID int NOT NULL AUTO_INCREMENT, userName varchar(255), password varchar(255), address varchar(255), email varchar(255), PRIMARY KEY (userID));
INSERT INTO user (userName, password, address, email) VALUES ('Alvin', '1234abcdABCD.', '123 1st Ave, New York, New York 10001', 'alvin@example.com');

