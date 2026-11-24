DROP DATABASE IF EXISTS interview_commands_practice;
CREATE DATABASE interview_commands_practice;
USE interview_commands_practice;

SET autocommit = 1;

-- 2. Create table with proper constraints
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(60) NOT NULL,
    department VARCHAR(30) NOT NULL,
    city VARCHAR(40),
    salary DECIMAL(10, 2) CHECK (salary > 0),
    employment_status ENUM('Active', 'Inactive') DEFAULT 'Active',
    phone VARCHAR(15) UNIQUE
) ENGINE = InnoDB;

-- 3. Insert sample records
INSERT INTO employees
    (employee_id, employee_name, department, city, salary, employment_status, phone)
VALUES
    (1, 'Rahul Sharma', 'IT', 'Delhi', 45000.00, 'Active', '9000000001'),
    (2, 'Priya Verma', 'HR', 'Mumbai', 42000.00, 'Active', '9000000002'),
    (3, 'Amit Patel', 'Sales', 'Ahmedabad', 38000.00, 'Inactive', '9000000003'),
    (4, 'Anjali Singh', 'IT', 'Kolkata', 50000.00, 'Active', '9000000004'),
    (5, 'Vijay Kumar', 'Finance', 'Bangalore', 55000.00, 'Active', '9000000005'),
    (6, 'Sanjay Reddy', 'Sales', 'Hyderabad', 36000.00, 'Active', '9000000006'),
    (7, 'Megha Iyer', 'IT', 'Chennai', 48000.00, 'Active', '9000000007'),
    (8, 'Neha Gupta', 'HR', 'Delhi', 32000.00, 'Inactive', '9000000008'),
    (9, 'Arjun Mehta', 'Finance', 'Pune', 52000.00, 'Active', '9000000009'),
    (10, 'Pooja Shah', 'Sales', 'Mumbai', 40000.00, 'Active', '9000000010');
    
    commit;
    select * from employees;
    
    
    insert into employees
    (employee_id,employee_name,department,city,salary,employment_status,phone)
    values
    (11,'karan malhotra','it','noida',41000.00,'active','9000000011');
    
    
    
    insert into employees
	(employee_id,employee_name,department,city,salary,employment_status,phone)
    values
    (12,'simran kaur','hr','delhi',35000.00,'inactive','9000000013');
    
    
    
    update employees
    set city ='gurgaon',
    salary = 46000.00
    where employee_id =11;
    
    
    update employees
    set salary = salary *1.10
    where employee_id in (1,4,7);
    
    
    delete from employees
    where employee_id in (3,8,13);
   
   
    alter table employees
    add column email varchar(100) null;
    
    
    alter table employees
    modify column phone varchar(20) null;
    
    
    alter table employees
    remove column city to work_city;
    
    
    alter table employees
    drop column email;
    
    
    rename table employees to staff;
    
    -- drop the staff table
    drop table staff
    
-- frop the database 
drop database 
interview_commands_practice;