-- SQL Test File for Theme Visibility Testing
-- Database: employee_management
-- TESTWORD: Use Cmd+F to find this TESTWORD throughout the file
-- EXAMPLE: This EXAMPLE word appears multiple times for testing

-- Create database - SAMPLE database creation
CREATE DATABASE IF NOT EXISTS employee_management;  -- TESTWORD database
USE employee_management;  -- DUPLICATE use statement

-- Drop existing tables - REPEATED drop operations
DROP TABLE IF EXISTS project_assignments;  -- TESTWORD drop
DROP TABLE IF EXISTS projects;  -- EXAMPLE drop
DROP TABLE IF EXISTS employees;  -- SAMPLE drop
DROP TABLE IF EXISTS departments;  -- DUPLICATE drop

-- Create departments table - TESTWORD table creation
CREATE TABLE departments (  -- EXAMPLE departments table
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(100) NOT NULL,
    manager_name VARCHAR(100),
    budget DECIMAL(12, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    role VARCHAR(100),
    salary DECIMAL(10, 2),
    years_experience INT,
    dept_id INT,
    status ENUM('active', 'inactive', 'on_leave') DEFAULT 'active',
    hire_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id) ON DELETE SET NULL,
    INDEX idx_dept (dept_id),
    INDEX idx_email (email)
);

-- Create projects table
CREATE TABLE projects (
    project_id INT PRIMARY KEY AUTO_INCREMENT,
    project_name VARCHAR(200) NOT NULL,
    description TEXT,
    start_date DATE,
    end_date DATE,
    status ENUM('planning', 'active', 'completed', 'cancelled') DEFAULT 'planning',
    priority ENUM('low', 'medium', 'high', 'critical') DEFAULT 'medium',
    budget DECIMAL(12, 2)
);

-- Create project assignments table
CREATE TABLE project_assignments (
    assignment_id INT PRIMARY KEY AUTO_INCREMENT,
    project_id INT NOT NULL,
    emp_id INT NOT NULL,
    role VARCHAR(100),
    allocation_percent INT DEFAULT 100,
    assigned_date DATE,
    FOREIGN KEY (project_id) REFERENCES projects(project_id) ON DELETE CASCADE,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id) ON DELETE CASCADE,
    UNIQUE KEY unique_assignment (project_id, emp_id)
);

-- Insert sample departments
INSERT INTO departments (dept_name, manager_name, budget) VALUES
('Engineering', 'Bob Johnson', 5000000.00),
('Data Team', 'Helen Martinez', 2000000.00),
('Product', 'Kevin Brown', 1500000.00),
('Design', 'Oscar Green', 800000.00),
('Sales', 'Steve Wilson', 3000000.00);

-- Insert sample employees
INSERT INTO employees (first_name, last_name, email, phone, role, salary, years_experience, dept_id, hire_date) VALUES
('Alice', 'Smith', 'alice.smith@techcorp.com', '+1-555-0101', 'Senior Developer', 145000.00, 8, 1, '2016-03-15'),
('Bob', 'Johnson', 'bob.johnson@techcorp.com', '+1-555-0102', 'Engineering Manager', 185000.00, 12, 1, '2012-01-10'),
('David', 'Chen', 'david.chen@techcorp.com', '+1-555-0103', 'DevOps Engineer', 125000.00, 6, 1, '2018-06-20'),
('Grace', 'Lee', 'grace.lee@techcorp.com', '+1-555-0201', 'Data Scientist', 140000.00, 7, 2, '2017-09-01'),
('Helen', 'Martinez', 'helen.martinez@techcorp.com', '+1-555-0202', 'Data Team Lead', 160000.00, 10, 2, '2014-04-15');

-- Insert sample projects
INSERT INTO projects (project_name, description, start_date, end_date, status, priority, budget) VALUES
('Cloud Migration', 'Migrate legacy systems to AWS', '2024-01-01', '2024-12-31', 'active', 'high', 1200000.00),
('ML Pipeline', 'Build automated ML pipeline', '2024-06-01', '2025-03-31', 'planning', 'medium', 800000.00),
('Mobile App Redesign', 'Redesign mobile application UI/UX', '2024-03-01', '2024-09-30', 'active', 'high', 500000.00);

-- Insert project assignments
INSERT INTO project_assignments (project_id, emp_id, role, allocation_percent, assigned_date) VALUES
(1, 3, 'Lead Engineer', 100, '2024-01-01'),
(1, 1, 'Senior Developer', 80, '2024-01-15'),
(2, 4, 'Lead Data Scientist', 100, '2024-06-01'),
(3, 1, 'Developer', 20, '2024-03-01');

-- Query examples with different SQL features

-- Simple SELECT
SELECT * FROM employees WHERE status = 'active';

-- JOIN query
SELECT
    e.first_name,
    e.last_name,
    e.role,
    d.dept_name,
    e.salary
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id
WHERE e.salary > 100000
ORDER BY e.salary DESC;

-- Aggregate functions
SELECT
    d.dept_name,
    COUNT(e.emp_id) AS employee_count,
    AVG(e.salary) AS avg_salary,
    MAX(e.salary) AS max_salary,
    SUM(e.salary) AS total_salary
FROM departments d
LEFT JOIN employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name
HAVING employee_count > 0
ORDER BY total_salary DESC;

-- Subquery
SELECT
    first_name,
    last_name,
    salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees)
ORDER BY salary DESC;

-- Common Table Expression (CTE)
WITH high_earners AS (
    SELECT
        emp_id,
        first_name,
        last_name,
        salary,
        dept_id
    FROM employees
    WHERE salary > 150000
)
SELECT
    he.first_name,
    he.last_name,
    he.salary,
    d.dept_name
FROM high_earners he
JOIN departments d ON he.dept_id = d.dept_id;

-- CASE statement
SELECT
    first_name,
    last_name,
    salary,
    CASE
        WHEN salary >= 150000 THEN 'High'
        WHEN salary >= 100000 THEN 'Medium'
        ELSE 'Standard'
    END AS salary_bracket
FROM employees
ORDER BY salary DESC;

-- Window function
SELECT
    first_name,
    last_name,
    salary,
    dept_id,
    AVG(salary) OVER (PARTITION BY dept_id) AS dept_avg_salary,
    RANK() OVER (PARTITION BY dept_id ORDER BY salary DESC) AS dept_rank
FROM employees;

-- Update example
UPDATE employees
SET salary = salary * 1.05
WHERE years_experience >= 10 AND status = 'active';

-- Delete example
DELETE FROM project_assignments
WHERE assigned_date < DATE_SUB(CURDATE(), INTERVAL 2 YEAR);

-- Transaction example
START TRANSACTION;

UPDATE departments
SET budget = budget - 50000
WHERE dept_id = 1;

INSERT INTO projects (project_name, description, start_date, status, priority, budget)
VALUES ('New Initiative', 'Special project for Q4', CURDATE(), 'planning', 'high', 50000);

COMMIT;

-- Index creation
CREATE INDEX idx_employee_name ON employees(last_name, first_name);
CREATE INDEX idx_project_dates ON projects(start_date, end_date);

-- View creation
CREATE VIEW active_project_overview AS
SELECT
    p.project_name,
    p.status,
    p.priority,
    COUNT(pa.emp_id) AS team_size,
    GROUP_CONCAT(CONCAT(e.first_name, ' ', e.last_name) SEPARATOR ', ') AS team_members
FROM projects p
LEFT JOIN project_assignments pa ON p.project_id = pa.project_id
LEFT JOIN employees e ON pa.emp_id = e.emp_id
WHERE p.status = 'active'
GROUP BY p.project_id, p.project_name, p.status, p.priority;

-- Comments - SAMPLE comment section
-- TODO: Add performance monitoring tables - TESTWORD marker
-- FIXME: Optimize the employee search query - EXAMPLE marker
-- NOTE: Consider partitioning projects table by year - DUPLICATE REPEATED markers
-- TESTWORD EXAMPLE SAMPLE DUPLICATE REPEATED - all test words together
