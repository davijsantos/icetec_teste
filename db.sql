CREATE DATABASE IF NOT EXISTS 'icetec_teste' DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE users (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE programmers (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  age int,
  linkedin varchar(255),
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE technologies (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE technologies_programmers(
  id int NOT NULL AUTO_INCREMENT,
  programmer_id int NOT NULL,
  technology_id int NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (programmer_id) REFERENCES programmers(id),
  FOREIGN KEY (technology_id) REFERENCES technologies(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;