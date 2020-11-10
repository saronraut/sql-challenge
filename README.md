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

        