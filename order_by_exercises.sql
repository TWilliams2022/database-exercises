USE employees;

SELECT first_name
FROM employees
WHERE first_name
 IN ('Irena', 'Vidya', 'Maya');

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

SELECT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya')
   OR 'Maya';

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya','Maya')
  AND gender = 'male';

SELECT *
FROM employees
WHERE last_name LIKE '%E'
   OR 'e%'
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
ORDER BY emp_no DESC;


SELECT first_name, last_name
FROM employees
ORDER BY first_name DESC, last_name ASC;

SELECT first_name, last_name
FROM employees
ORDER BY first_name ASC;

SELECT first_name, last_name
FROM employees
ORDER BY last_name DESC, first_name ASC;
