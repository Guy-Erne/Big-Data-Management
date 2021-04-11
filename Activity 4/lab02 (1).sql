-- num 1
SELECT DISTINCT title FROM `titles`;
-- num 2
SELECT COUNT(*) as count, title FROM `titles` WHERE 1 GROUP BY title;
-- num 3
SELECT AVG(salary) as average_salary, titles.title FROM `salaries` INNER JOIN titles ON salaries.emp_no = titles.emp_no group by titles.title order by AVG(salary) desc;
-- num 4
SELECT departments.dept_no, departments.dept_name, employees.first_name, employees.last_name FROM `departments` INNER JOIN dept_manager ON departments.dept_no = dept_manager.dept_no INNER JOIN employees ON employees.emp_no = dept_manager.emp_no ORDER BY employees.last_name ASC;
-- num 5
SELECT departments.dept_no, departments.dept_name, employees.first_name, employees.last_name FROM `departments` INNER JOIN dept_manager ON departments.dept_no = dept_manager.dept_no INNER JOIN employees ON employees.emp_no = dept_manager.emp_no WHERE dept_manager.to_date = '9999-01-01' ORDER BY employees.last_name ASC;
-- num 6
SELECT titles.title, AVG(salaries.salary) as average_salary FROM `titles` INNER JOIN salaries on titles.emp_no = salaries.emp_no WHERE salaries.to_date='9999-01-01' GROUP BY titles.title;
-- num 7
SELECT * FROM `salaries` INNER JOIN titles ON titles.emp_no = salaries.emp_no WHERE salaries.to_date='9999-01-01' AND titles.title='Assistant Engineer' AND salaries.salary > (SELECT AVG(salaries.salary) FROM salaries where salaries.to_date='9999-01-01')
-- num 8
SELECT COUNT(dept_emp.emp_no), departments.dept_name FROM departments inner join dept_emp on departments.dept_no = dept_emp.dept_no group by dept_emp.dept_no HAVING count(dept_emp.emp_no) > 40000
-- num 9
SELECT AVG(salaries.salary), employees.gender FROM `employees` INNER JOIN salaries on salaries.emp_no = employees.emp_no GROUP BY employees.gender
-- num 10
SELECT employees.first_name, employees.last_name, salaries.salary, titles.title FROM `employees` INNER JOIN salaries on salaries.emp_no = employees.emp_no INNER JOIN titles ON titles.emp_no = employees.emp_no WHERE salaries.salary>=38000 and salaries.salary<=39000
