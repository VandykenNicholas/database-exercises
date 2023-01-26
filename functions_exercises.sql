USE employees;
#
-- SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name ASC;
-- # SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya'OR first_name ='Maya';
-- # SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya'OR first_name ='Maya') AND gender = 'M' ORDER BY last_name ASC;
-- SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name ASC, last_name ASC;
-- SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name ASC, first_name ASC;

-- #
-- SELECT * FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no ASC;
-- SELECT * FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no DESC ;
-- SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name DESC, first_name DESC;
-- #
SELECT * FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE '%e';
SELECT * FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

SELECT CONCAT(first_name , ' ',  last_name) AS 'Full Name' FROM employees;

SELECT * FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25;

SELECT * FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25 AND year(hire_date) > 1989 AND year(hire_date) < 2000;

SELECT * FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25 AND year(hire_date) > 1989 AND year(hire_date) < 2000;

SELECT DATEDIFF(NOW(), hire_date) AS 'Days worked', CONCAT(first_name , ' ',  last_name) AS 'Full Name' FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25 AND year(hire_date) > 1989 AND year(hire_date) < 2000 ORDER BY DATEDIFF(NOW(), hire_date) DESC ;

#
# SELECT * FROM employees WHERE last_name LIKE '%q%';
# SELECT * FROM employees WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%';
