CREATE DATABASE sm;

CREATE TABLE department (
	id INT PRIMARY KEY auto_increment,
	name VARCHAR(20) NOT NULL,
	address VARCHAR(100)
);

CREATE TABLE staff (
	id INT PRIMARY KEY auto_increment,
	account VARCHAR(20) NOT NULL,
	password VARCHAR(20) NOT NULL,
	status VARCHAR(10) NOT NULL,
	did INT,
	name VARCHAR(20),
	sex CHAR(2),
	id_number CHAR(18),
	work_time DATETIME,
	leave_time DATETIME,
	born_date DATE,
	info VARCHAR(200)
);

CREATE TABLE log (
	opr_time DATETIME NOT NULL,
	type VARCHAR(10) NOT NULL,
	operator VARCHAR(20) NOT NULL,
	moudle VARCHAR(20) NOT NULL,
	opration VARCHAR(20) NOT NULL,
	result VARCHAR(100) NOT NULL
);

ALTER TABLE staff ADD CONSTRAINT fk_staff_dep FOREIGN KEY(did) REFERENCES department(id);