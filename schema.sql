DROP DATABASE IF EXISTS management_db;
CREATE DATABASE management_db;

USE mangement_db;

CREATE TABLE department (
  id INT NOT NULL PRIMARY KEY ,
  department_name VARCHAR(30) NOT NULL,
);

CREATE TABLE Job (
  id INT NOT NULL PRIMARY KEY,
  Job_name VARCHAR(30) NOT NULL,
  salary INT NOT NULL,
  FOREIGN KEY (department)
  REFERENCES department(id)
);

CREATE TABLE employee (
  id INT NOT NULL,
  First_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  Job_id INT
  Manager_id INT
);