-- ===================================== --
CREATE TABLE locations (
    location_id NUMBER PRIMARY KEY,
    city VARCHAR2(50)
);

-- ===================================== --
CREATE TABLE department (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(50) NOT NULL,
    manager_id NUMBER,
    location_id NUMBER,
    CONSTRAINT fk_dept_location FOREIGN KEY (location_id) REFERENCES locations(location_id)
);

-- ====================================== --
CREATE TABLE employee (
    employee_id NUMBER PRIMARY KEY,
    last_name VARCHAR2(50) NOT NULL,
    email VARCHAR2(100),
    salary NUMBER(10, 2),
    commission_pct NUMBER(4, 2),
    hire_date DATE NOT NULL,
    department_id NUMBER,
    CONSTRAINT fk_emp_dept FOREIGN KEY (department_id) REFERENCES department(department_id)
);

-- ======================================= --
EXEC DBMS_STATS.GATHER_TABLE_STATS(USER, 'LOCATIONS');
EXEC DBMS_STATS.GATHER_TABLE_STATS(USER, 'DEPARTMENT');
EXEC DBMS_STATS.GATHER_TABLE_STATS(USER, 'EMPLOYEE');

-- Insert Data 
INSERT INTO locations VALUES (10, 'Jakarta');
INSERT INTO locations VALUES (20, 'Bandung');

INSERT INTO department VALUES (10, 'Administration', 100, 10);
INSERT INTO department VALUES (20, 'Marketing', 101, 20);
INSERT INTO department VALUES (80, 'Sales', 102, 10);

INSERT INTO employee (employee_id, last_name, email, salary, commission_pct, hire_date, department_id)
VALUES (1, 'King', 'king@mail.com', 5000, 0.1, SYSDATE, 80);
INSERT INTO employee (employee_id, last_name, email, salary, commission_pct, hire_date, department_id)
VALUES (2, 'Kochhar', 'kochhar@mail.com', 4500, NULL, SYSDATE, 80);
INSERT INTO employee (employee_id, last_name, email, salary, commission_pct, hire_date, department_id)
VALUES (3, 'De Haan', 'dehaan@mail.com', 4800, 0.2, SYSDATE, 10);
COMMIT;

-- ========================================= --

CREATE OR REPLACE VIEW empvu80 AS
SELECT employee_id AS id_number, last_name AS name, salary, department_id
FROM employee
WHERE department_id = 80;

-- ========================================= --

DESC empvu80;
-- ========================================= --

CREATE INDEX emp_dept_id_idx ON employee(department_id);