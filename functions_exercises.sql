USE employees;

SELECT CONCAT(first_name, ' ' , last_name) AS 'FULL NAME'
FROM employees
WHERE last_name LIKE '%E'
   OR 'e%'
ORDER BY emp_no DESC;

SELECT *
FROM empployees
WHERE (DAY(birth_date) = 25 AND MONTH(birth_date) = 12)
AND YEAR() AND YEAR();

SELECT *
FROM empployees
WHERE (DAY(birth_date) = 25 AND MONTH(birth_date) = 12)
AND YEAR(hire_date) AND YEAR(hire_date) ;