USE employees;

SELECT first_name, last_name
FROM employees
ORDER BY first_name DESC, last_name ASC;

SELECT first_name, last_name
FROM employees
ORDER BY first_name ASC;

SELECT first_name, last_name
FROM employees
ORDER BY first_name ASC;


SELECT *
FROM employees
WHERE first_name
          IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;
;

SELECT *
FROM employees
WHERE first_name
          IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;
;




SELECT DISTINCT last_name
FROM employees
WHERE last_name
          LIKE 'E%';

SELECT *
FROM employees
WHERE last_name
          LIKE '%q%';

