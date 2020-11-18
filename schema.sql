DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


CREATE TABLE "departments" (
	dept_no VARCHAR(50) NOT NULL,
	dept_name VARCHAR(50) NOT NULL,
	PRIMARY KEY(dept_no)
);


CREATE TABLE "dept_emp" (
	emp_no INT NOT NULL,
	dept_no VARCHAR(50) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES "Department"(dept_no)
	FOREIGN KEY (emp_no) REFERENCES "Employees"(emp_no)
);

CREATE TABLE "dept_manager" (
	dept_no VARCHAR(50) NOT NULL,
	emp_no INT NOT NULL
	FOREIGN KEY (dept_no) REFERENCES "Department"(dept_no),
	FOREIGN KEY (emp_no) REFERENCES "Employees"(emp_no)
);

CREATE TABLE "employees" (
	emp_no INT NOT NULL,
	emp_title VARCHAR(50) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(50) NOT NULL,
	hire_date DATE NOT NULL
);


CREATE TABLE "salaries" (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES "Employees"(emp_no)
);


CREATE TABLE "titles" (
	title_id INT NOT NULL,
	title VARCHAR(50) NOT NULL,
	PRIMARY KEY(title_id)
);

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;