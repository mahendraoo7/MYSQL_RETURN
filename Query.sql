--    DATABASE

# Creating DataBase 
   CREATE DATABASE db_name ;

 Ex .
  CREATE DATABASE User ;
  CREATE DATABASE Data ;


# Drop a Database 
    DROP DATABASE db_name ;

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
      -> Primary key is Always Uniqe.

--    // VARCHAR(45)
     -> For Enter String // (45) store Limit
     
--    // INT
     -> For  Enter Integer

--    // NOT NULL
     -> can not put Null  


# Insert Data to Table 

  INSERT INTO Student VALUES (1,"name",13);


# Show Table Data 

   SELECT * FROM table_name ;

   use star(*) for show all table data

  

