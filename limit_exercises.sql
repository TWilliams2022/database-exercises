USE employees;

SELECT last_name
FROM employee
ORDER BY last_name DESC
LIMIT 10;

SELECT *
FROM salaries s
ORDER BY s.salary DESC
LIMIT 5 OFFSET 50;

