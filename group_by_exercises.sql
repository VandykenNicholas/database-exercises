USE employees;

SELECT DISTINCT title from titles;

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%e' AND last_name Like 'e%' GROUP BY last_name, first_name;

SELECT DISTINCT first_name, last_name FROM employees WHERE last_name LIKE '%e' AND last_name Like 'e%';

SELECT COUNT(last_name), last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name;

SELECT COUNT(gender), gender FROM employees WHERE (first_name = 'Irena' OR first_name ='Vidya' OR first_name = 'Maya') GROUP BY gender
