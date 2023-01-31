# # CREATE DATABASE join_test_db;
#
# USE join_test_db;
# #
# # INSERT INTO users (name, email, role_id) VALUES
# #                                              ('billy', 'billy@example.com', 2),
# #                                              ('jene', 'jene@example.com', 2),
# #                                              ('nick', 'nick@example.com', 2),
# #                                              ('tripp', 'tripp@example.com', null);
#
#
# SELECT u.name as 'name', r.name as 'role'
# from users u
# JOIN roles r
#     on u.role_id = r.id;
#
# SELECT u.name as 'name', r.name as 'role'
# from users u
#          LEFT JOIN roles r
#               on u.role_id = r.id;
#
# SELECT u.name as 'name', r.name as 'role'
# from users u
#         RIGHT JOIN  roles r
#                    on u.role_id = r.id;
#
# SELECT r.name, COUNT(r.name) as 'Count'
# from users u
#          RIGHT JOIN  roles r
#                      on u.role_id = r.id
# GROUP BY r.name;

USE employees;

SELECT d.dept_name as Department_Name, CONCAT(e.first_name, ' ', e.last_name) as 'Department_manager'
FROM employees e
JOIN dept_manager dm on e.emp_no = dm.emp_no
join departments d on dm.dept_no = d.dept_no
WHERE YEAR(dm.to_date) = 9999
ORDER BY d.dept_name;

SELECT d.dept_name as Department_Name, CONCAT(e.first_name, ' ', e.last_name) as 'Department_manager'
FROM employees e
         JOIN dept_manager dm on e.emp_no = dm.emp_no
         join departments d on dm.dept_no = d.dept_no
WHERE YEAR(dm.to_date) = 9999  AND e.gender = 'F'
ORDER BY d.dept_name;


SELECT t.title, COUNT(t.title) AS Total
FROM employees AS e
         JOIN titles AS t ON e.emp_no = t.emp_no
         JOIN dept_emp AS de ON e.emp_no =de.emp_no
         JOIN departments AS d ON d.dept_no = de.dept_no
WHERE t.to_date = '9999-01-01' AND de.to_date = '9999-01-01' AND d.dept_name = 'Customer Service'
GROUP BY t.title;



SELECT d.dept_name as Department_Name, CONCAT(e.first_name, ' ', e.last_name) as Department_manager, s.salary Salary
FROM employees e
         JOIN dept_manager dm on e.emp_no = dm.emp_no
         join departments d on dm.dept_no = d.dept_no
        Join salaries s on e.emp_no = s.emp_no
WHERE YEAR(dm.to_date) = 9999 AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;




SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS Employee,d.dept_name AS Department, CONCAT(em.first_name, ' ', em.last_name) AS Manager
FROM employees
         JOIN dept_emp  de
              ON employees.emp_no = de.emp_no
         JOIN departments d
              ON de.dept_no = d.dept_no
         JOIN dept_manager  dm
              ON d.dept_no = dm.dept_no
         JOIN employees  em
              ON dm.emp_no = em.emp_no
WHERE de.to_date = '9999-01-01'
  AND dm.to_date = '9999-01-01'
ORDER BY d.dept_name,
         employees.emp_no;






