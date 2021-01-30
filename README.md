# sql-challenge

The assignment required me to display skills for Data Engineering and Data Analysis.

In this challenge I had to utilize PostgreSQL skills to create database and map the relationships between each tables. With my SQL knowledge I had make SQL query calls for data from the correspodning tables and display the ability to merge database from multiple sources. For Bonus I had to utilize my SQLAlchemy to connect the database inorder for me use pandas to create a dataframe and matplotlib for data visualization


Folder Instruction: 
    - Instruction/data : contains all the csv that that were converted in Database in postgres

Folder EmployeeSQL: contains the codes that used for the assignment. 
    - Table_schema: using http://www.quickdatabasediagrams.com was used to map out the tables
        - primary keys and foreign keys are assigned with references.

    - SQL_code : SQL query codes used to Select and Read DB in postgres.
        - built-in IMPORT/EXPORT used to import csv data into the table
        - The SQL_code also contains the copy of Table_schema code at the beginning.
    
    -Bonus.ipynb : Optional assignment
        - For this apporach, I used sqlalchemy to connect pandas with SQL db.
        - Instruction provided code was used as a foundation to create the connection with database
                from sqlalchemy import create_engine
                engine = create_engine('postgresql://localhost:5432/<your_db_name>')
                connection = engine.connect()

            - For extra step: I used sql_config.py to store the password. 
                - import the password in Bonus.pynb

        - AverageSalary.png: Bar graph of Average Salary based on title
            - Code can be found in Bonus.ipynb

        - Histogram.png : Histogram part of bonus solution. Graph displays the range of salary
            - Code can be found in Bonus.ipynb
    
    - QuickDBD-export.png : DBD for the table relationships
        - https://app.quickdatabasediagrams.com/#/d/9KnVjV
        

Epilogue: "Search You ID" 
     - Using the Employee ID, I was able to pull the information on postgres SQL database: 
     - The code snippets are: 
        
        Select * From employees where emp_no = 499942:

        Select * From salaries where emp_no = 499942:
    
    - Our name is April Foolsday
    - sex = F
    - hire_data = 1997-02-10
    - birth_date = 1963-01-10
    - emp_title_id = e0004
    - title_id = Technique Leader
    - salary = 40000

# SQL Homework - Employee Database: A Mystery in Two Parts

![sql.png](sql.png)

## Background

It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

In this assignment, you will design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. In other words, you will perform:

1. Data Engineering

3. Data Analysis

Note: You may hear the term "Data Modeling" in place of "Data Engineering," but they are the same terms. Data Engineering is the more modern wording instead of Data Modeling.

### Before You Begin

1. Create a new repository for this project called `sql-challenge`. **Do not add this homework to an existing repository**.

2. Clone the new repository to your computer.

3. Inside your local git repository, create a directory for the SQL challenge. Use a folder name to correspond to the challenge: **EmployeeSQL**.

4. Add your files to this folder.

5. Push the above changes to GitHub.

## Instructions

#### Data Modeling

Inspect the CSVs and sketch out an ERD of the tables. Feel free to use a tool like [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com).

#### Data Engineering

* Use the information you have to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.

  * For the primary keys check to see if the column is unique, otherwise create a [composite key](https://en.wikipedia.org/wiki/Compound_key). Which takes to primary keys in order to uniquely identify a row.
  * Be sure to create tables in the correct order to handle foreign keys.

* Import each CSV file into the corresponding SQL table. **Note** be sure to import the data in the same order that the tables were created and account for the headers when importing to avoid errors.

#### Data Analysis

Once you have a complete database, do the following:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

## Bonus (Optional)

As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss:

1. Import the SQL database into Pandas. (Yes, you could read the CSVs directly in Pandas, but you are, after all, trying to prove your technical mettle.) This step may require some research. Feel free to use the code below to get started. Be sure to make any necessary modifications for your username, password, host, port, and database name:

   ```sql
   from sqlalchemy import create_engine
   engine = create_engine('postgresql://localhost:5432/<your_db_name>')
   connection = engine.connect()
   ```

* Consult [SQLAlchemy documentation](https://docs.sqlalchemy.org/en/latest/core/engines.html#postgresql) for more information.

* If using a password, do not upload your password to your GitHub repository. See [https://www.youtube.com/watch?v=2uaTPmNvH0I](https://www.youtube.com/watch?v=2uaTPmNvH0I) and [https://help.github.com/en/github/using-git/ignoring-files](https://help.github.com/en/github/using-git/ignoring-files) for more information.

2. Create a histogram to visualize the most common salary ranges for employees.

3. Create a bar chart of average salary by title.
