CREATE TABLE departments (
    dept_no     VARCHAR(4) NOT NULL    primary key,
    dept_name   VARCHAR(40) NOT NULL
);

CREATE TABLE titles (
    title_id    VARCHAR(5) NOT NULL     primary key,
    title       VARCHAR(40) NOT NULL
);

CREATE TABLE employee (
    emp_no INT NOT NULL     primary key,
    emp_title_id VARCHAR(5) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    foreign key (emp_title_id) references titles (title_id)
);

CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
    primary key (emp_no, dept_no),
    foreign key (emp_no) references employee (emp_no),
    foreign key (dept_no) references departments (dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    primary key (dept_no, emp_no),
    foreign key (dept_no) references departments (dept_no),
    foreign key (emp_no) references employee (emp_no)
);

CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    primary key (emp_no, salary),
    foreign key (emp_no) references employee (emp_no)
);