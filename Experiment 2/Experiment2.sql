CREATE TABLE employeee (
    emp_id NUMERIC PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary NUMERIC,
    joining_date DATE
);

INSERT INTO employeee (emp_id, emp_name, department, salary, joining_date) VALUES
(1,'Arjun','HR',28000,'2022-04-12'),
(2,'Meena','HR',40000,'2019-12-05'),
(3,'Vikram','IT',50000,'2018-06-20'),
(4,'Sneha','IT',32000,'2023-01-10'),
(5,'Rohit','Finance',22000,'2021-09-15'),
(6,'Kavita','Finance',60000,'2017-03-08'),
(7,'Manoj','Sales',30000,'2020-11-25'),
(8,'Priya','Sales',45000,'2019-05-14');

SELECT * FROM employeee;

SELECT
    department,
    AVG(salary) AS avg_salary
FROM employeee
WHERE salary > 20000
GROUP BY department
HAVING AVG(salary) > 30000
ORDER BY avg_salary DESC;
