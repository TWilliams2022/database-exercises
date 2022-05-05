USE employees;

-- However, GROUP BY returns only the unique occurrences of the column specified.
--
-- SELECT DISTINCT first_name
-- FROM employees;
--
-- should get the same results as:
--
-- SELECT first_name
-- FROM employees
-- GROUP BY first_name;
--
-- We can also use multiple columns:
--
-- SELECT last_name, first_name
-- FROM employees
-- GROUP BY last_name, first_name;

-- *****Any column(s) that appear in the SELECT should also be in the GROUP BY clause.

SELECT DISTINCT titles
FROM employees


SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
GROUP BY last_name, first_name

SELECT first_name
FROM employees
WHERE first_name LIKE '%E%'
GROUP BY first_name

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name


SELECT COUNT(*), last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name

SELECT first_name, COUNT(first_name)
FROM employees
WHERE first_name
ORDER BY first_name

SELECT COUNT(*), gender
FROM employees
WHERE (first_name = 'Irena'
 OR first_name = 'Vidya'
 OR first_name = 'Maya')
GROUP BY gender;

