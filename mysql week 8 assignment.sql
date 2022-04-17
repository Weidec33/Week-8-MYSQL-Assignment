use employees;
-- Finding numnber of employees with each title born after 1965-01-01
 Select e.emp_no, e.first_name, e.last_name, e.birth_date, t.title from employees e
INNER JOIN titles t
 ON t.emp_no = e.emp_no
Where e.birth_date > '1965-01-01';
-- Finding the average salary per title 
Select s.salary as "Salary" , t.title as "Title"  from titles t
Inner Join salaries s
 ON t.emp_no = s.emp_no
 group by t.title;
-- Finding money spend on salary for marketing dept between 1990-1992
select sum(s.salary) as "Salary", d.dept_no as "Marketing dept", d.from_date, d.to_date from salaries s
 INNER JOIN dept_emp d
 ON d.emp_no = s.emp_no
 where d.dept_no = 'd001' And d.from_date > '1990-01-01' and d.to_date < '1992-12-31';
