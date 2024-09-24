--    DATABASE

# Creating DataBase 
   CREATE DATABASE db_name ;
   CREATE DATABASE IF NOT EXISTS db_name ; (it passed a worning if your database alredy exists)

 Ex .
  CREATE DATABASE User ;
  CREATE DATABASE Data ;


# Drop a Database 
    DROP DATABASE db_name ;
    DROP DATABASE IF EXISTS db_name ; (it passed a worning if your database Not exists)

  Ex.
    drop database Data ; 
    DROP DATABASE User ;
    

# For Select Databse 
   USE db_name ;

   Ex.
   USE Data;
   USE User ;


--    TABLE 

# Create Table 

CREATE TABLE table_name (
    column_name1 datatype constraint,    
    column_name1 datatype constraint,   
    column_name1 datatype constraint,   
)

 Ex.
 CREATE TABLE Student (
    id INT PRIMARY KEY ,
    name VARCHAR(50)
    age INT NOT NULL
 );

-- // PRIMARY KEY //
      -> Primary key is Always Uniqe And Not null.

--    // VARCHAR(45)
     -> For Enter String // (45) store Limit
     
--    // INT
     -> For  Enter Integer

--    // NOT NULL
     -> can not put Null  


# Insert Data to Table 

  INSERT INTO Student VALUES (1,"name",13);


-- # Show Table Data 
  
    // Show for perticular column

   SELECT colum1 ,column2 FROM table_name;

   // Show all data from table

   SELECT * FROM table_name ;

   use star(*) for show all table data

  
-- // Foreign Key 

  CREATE TABLE Stduent (

    Cust_id INT ,
    FOREIGN KEY (Cust_id) references Student(id)

  );


  --  // DEFAULT 

   CREATE TABLE Employee (
    id INT PRIMARY KEY ,
    Name VARCHAR(30)
    SALARY INT DEFAULT 25000

   )


  --  // CONSTRAINTS 
      -- CHECK

    CREATE TABLE CONSTRAINT (

    id INT PRIMARY KEY ,
    Name VARCHAR(30),
    SALARY INT DEFAULT 25000,
    age INT,
    City VARCHAR(50),
    CONSTRAINT  age_chek CHECK (age >= 18 AND City ="Delhi")
   );


  --  // Operators 
-- Between
  SELECT * FROM Student WHERE marks BETWEEN 80 AND 90;
  -- In
  SELECT * FROM Student WHERE City IN ("Delhi","Mumbai");
  --NOT 
  SELECT * FROM Student WHERE City NOT IN ("Delhi","Mumbai");




  -- // Limite
   -effect rows 
   
    SELECT * FROM Stduent LIMIT 2 ;
    SELECT * FROM Stduent LIMIT 10 ;


    -- //  Aggregate Function 


       SELECT MAX(SALARY) FROM EMPLOYEE;
       SELECT MIN(SALARY) FROM EMPLOYEE;
       SELECT SUM(SALARY) FROM EMPLOYEE;
       SELECT AVG(SALARY) FROM EMPLOYEE;
       SELECT COUNT(SALARY) FROM EMPLOYEE;
         

   --  // Group Clause

        SELECT SALARY FROM Student GROUP BY City

--   // HAVING CLAUSE 

        SELECT SALARY FROM Student HAVING SALARY > 20000;
     
       
  -- // UPDATE 

       SET SQL_SAFE_UPDATES = 0;

       UPDATE EMPLOYEE SET SALARY = 80000 WHERE SALARY = 25000;


  --  // DELETE 

      DELETE FROM EMPLOYEE
      WHERE name = "Raghav"
      

--  // CASECADE Foreign 

CREATE TABLE Stduent (

    Cust_id INT ,
    FOREIGN KEY (Cust_id) references Student(id)
    ON UPDATE CASCADE
    ON DELETE CASECADE
  );  


  --  // ALter 
   
      #add column

     ALTER TABLE EMPLOYEE 
     ADD COLUMN age;
  
     #DROP column
     ALTER TABLE EMPLOYEE 
     DROP COLUMN age ;

     #RENAME Table 

     ALTER TABLE EMPLOYEE 
     RENAME TO Employee;

      
     #Change Column 

       ALTER TABLE table_name 
       CHANGE COLUMN old_name new_name new_datatype new_constraint 


     # MODIFY TABLE 
     ALTER TABLE table_name
     MODIFY COLUMN column_name datatype;

     #DROP COLUMN
     ALTER TABLE Persons
     DROP COLUMN DateOfBirth;