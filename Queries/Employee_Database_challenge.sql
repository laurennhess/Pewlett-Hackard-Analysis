SELECT emp_no, first_name, last_name 
FROM employees;

SELECT title, from_date, to_date
FROM titles;

-- Retirement Titles
SELECT DISTINCT ON (e.emp_no, ti.title)
	e.emp_no, e.first_name, e.last_name,
	ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY (e.emp_no);

-- Distinct Retirement Titles
SELECT DISTINCT ON (rt.emp_no)
	rt.emp_no, rt.first_name, rt.last_name,
	rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE (rt.to_date = '9999-01-01' )
ORDER BY rt.emp_no ASC, rt.to_date DESC;

-- # of Employees by job title who are about to retire
SELECT COUNT (u.title),
	u.title
INTO retiring_titles
FROM unique_titles AS u
GROUP BY u.title
ORDER BY u.count DESC;

-- Mentorship Eligibility
SELECT emp_no, first_name, last_name, birth_date
FROM employees;

SELECT from_date, to_date 
FROM dept_emp;

SELECT title FROM titles;

SELECT DISTINCT ON (e.emp_no)
	e.emp_no, e.first_name, e.last_name, e.birth_date,
	de.from_date, de.to_date, 
	ti.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no, ti.title DESC;