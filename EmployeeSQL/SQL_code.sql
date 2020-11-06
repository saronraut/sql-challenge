CREATE TABLE "departments" (
    "dept_no" varchar(30)   NOT NULL,
    "dept_name" varchar(30)   NOT NULL,
	Primary Key ("dept_no")
);

CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar(30)   NOT NULL,
	Foreign Key ("dept_no") References departments ("dept_no")
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar(30)   NOT NULL,
    "emp_no" int   NOT NULL,
    Foreign	Key ("dept_no") References departments ("dept_no"),
	Primary Key ("emp_no")
);

CREATE TABLE "titles" (
    "title_id" varchar(30)   NOT NULL,
    "title" varchar(30)   NOT NULL,
	primary key ("title_id")  
);
CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title_id" varchar(30)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar(30)   NOT NULL,
    "last_name" varchar(30)   NOT NULL,
    "sex" varchar(30)   NOT NULL,
    "hire_date" date   NOT NULL,
    PRIMARY KEY ("emp_no"),
	Foreign key ("emp_title_id") references titles ("title_id")
);

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    Foreign Key ("emp_no") references employees ("emp_no")
	
);

-- verify all data were imported
Select count(*) From departments
Select count(*) From dept_emp
select count(*) From employees
Select count(*) From salaries
Select count(*) From titles

-- listing the following details of each employee: employee number, last name, first name, sex, and salary
select employees.emp_no, last_name, first_name,sex, salary
from employees
inner join salaries on employees.emp_no = salaries.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
-- since the column is saved as date, had to use the between operator to look for hire date starting from Jan-Dec for 1986.
select first_name, last_name, hire_date from employees
where hire_date between '1986-01-01' and '1986-12-31';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name
-- using multiple inner join connect the table employee with dept_manager using the emp_no and then connect the table dept_manager to department with dept_no
select dept_manager.dept_no, dept_name, dept_manager.emp_no, last_name, first_name from employees
inner join dept_manager on employees.emp_no = dept_manager.emp_no
inner join departments on departments.dept_no = dept_manager.dept_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name
-- noticed that there are same emp_no with multiple dept_name
Select employees.emp_no, last_name,first_name,dept_name from employees
inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
-- using like operator to look for last name starting with "B"
Select first_name,last_name,sex from employees
where first_name='Hercules' and last_name like '%B%' 

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select dept_name,employees.emp_no, last_name,first_name from employees
inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no
where dept_name='Sales'

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name
-- using the OR operator to look for dept_names that are either sales and developlemnt
Select dept_name,employees.emp_no, last_name,first_name from employees
inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join departments on dept_emp.dept_no = departments.dept_no
where dept_name='Sales' or dept_name='Development'

--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
Select last_name, count(last_name) as "last_name_count" from Employees
group by last_name
order by last_name_count DESC

