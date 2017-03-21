CREATE SCHEMA `anotacoes`;

CREATE TABLE courses
(
    course_id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name TEXT NOT NULL
);
CREATE TABLE users
(
    user_id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    course_id INT(11) NOT NULL,
    name TEXT NOT NULL,
    login TEXT NOT NULL,
    password TEXT NOT NULL,
    email TEXT NOT NULL
);
ALTER TABLE users ADD FOREIGN KEY (course_id) REFERENCES courses (course_id);
CREATE INDEX course_id ON users (course_id);