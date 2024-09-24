DBMS = Database Management 

 A two type of database  1. Relational 
                         2. Non-relational (NoSql)

-> Relational DataBase = Mysql ,Sql , ORACLE postgreSql.
-> Non-relational = MongoDb.


   # Sql =
    Structured Query Language 
    -> Sql is a programming language used to intract withb relational databases.
    -> It is used to perform CRUD oparations.

    *CRUD - Create Read Update Delete

    SEQUEL first name of sql 
    SEQUEL -> Strutured English Query Language


Sql DataType 

CHAR    : string(0 to 255) can store character of fixed length 
VARCHAR : string(0 to 255) can store characters of up to given length 
BLOB    : string(0 to 65535) can store binary large object
INT     : Integer(-2,147,483,648 to 2,147,483,648);
TINYINT : integer(-128 to 127);
BIGINT  : integer(-9,223,372,036,854,775,808 to 9,223,372,036,854,775,808 );
BIT     : can store x-bit values . x can range from 1 to 64
FLOAT   : Decimal number -with precison to 23 degits
DOUBLE  : Decimal number -with 24 to 53
BOOLEAN : Boolean value 0 or 1
DATE    : date format of YYYY-MM-DD ranging from 1000-01-01 to 9999-12-31
YEAR    : year in 4 digit format ranging from 1901 to 2155 




-> CHAR(50)    : char is consume length 50 of 50
-> VARCHAR(50) : varchar is consume length enter memory of 50


--  // Type Of Sql Commands

DDL : Data Defination Language 

DQL : Data Query Language 

DML : Data Manipulation Language

DCL : Data Control Language

TCL : Transaction Control Language  



--  // PRIMARY KEY
-  It Always a Unique And Not Null 
- a primary Key is only one in One table 


-- // FOREIGN KEY
- Foreign key are multiple in one table 
- Foreign key is refers primary key of onother table 
- Foreign key can have duplicate & null values
- link between two tables


--   // DEFAULT 
   -  sets values defaulty when data not entered ;


--   // Constraints

     // CHEK - it can limit the values Allowed in a column

 
 --   //  DISTINCT  

    -> gives uniq value from column 
    -> No repate 


    -- Where Clause
       -> to define some condition

      SELECT * FROM student WHERE marks > 80;
      SELECT * FROM Employee WHERE  

    --    // Oparator 

     Arithmatic Operators : + (additon),-(subtraction),*(multiplication),/(devision),%(modulus) 
     Coparison Operators : = (equal to),!=(not Equal to ),>, >=, <, <=
     Logical Operators : AND, OR, NOT, IN, BETWEEN, ALL, LIKE, ANY
     Betwise Operators : & (Betwise AND), | (Betwise OR) 
       

    --  // LIMIT Clause  
        - return limited data from table 
        SELECT * FROM STUDENT LIMIT 3;


     -- // ORDER BY CLAUSE 

      -return data Ascending and Descending    

      SELECT * FROM STUDENT LIMIT 3 ORDER BY city ASC;
      SELECT * FROM STUDENT LIMIT 3 ORDER BY city DESC;


    --   // Aggregate Function 
          -> Aggregate Function perform a calculation on a set of values , and return single value
 
          COUNT()
          MAX()
          MIN()
          SUM()
          AVG()


   --    // Group CLause 

         -> group rows that have the same value into summary rows 
         -> It collect data from multiple records and groups the result by one or more column

          SELECT * FROM Student GROUP BY City;


--      // HAVING CLAUSE 
       -> Similar to where i,e applies some condition on rows.
       -> Used When we want to apply any condition after grouping.

       Count number of student in each city where max marks cross 90. 


      --  Table related Queries 

      Update (to Update exiting rows);

         UPDATE table_name 
         SET col1 = val1,col2 = val2
         WHERE conditon ;


      --// DELETE 

        (to delete exiting rows)

         DELETE FROM table_name 
         WHERE conditon;



   -- //  CASCADING FOR FK

      # On Delete Cascade
        -> When we create a foreign key using this option, it delete the referencing
           rows in the child table when the reference row is deleted in the parent table
           which has a primary key.

      # On Update Cascade
        ->When we create a foreign key using UPDATE CASCADE the referencing rows are
         updated in the child table when the reference row is updated in the parent in the
         parent table which has a primary key. 


        /- update and delete automatically when changes in parent child


      -- //  Alter  

         Alter 
         -> to change schema

          ADD Column 
          DROP column 
          RENAME column
          CHANGE COLUMN
          MODIFY COLUMN
          DELETE COLUMN


   --// JOINS 

       inner join 
       -> Return Records that have matching values in both tables 

       SELECT column_name(s)
       FROM table1
       INNER JOIN table2
       ON table1.column_name = table2.column_name;

       Left Join 
       -> returns all records from the left table SELECT column_name(s)
       FROM table1
       LEFT JOIN table2
       ON table1.column_name = table2.column_name;(table1), and the matching records (if any) from the right table (table2).


       Right Join 
       -> returns all records from the right table (table2), and the matching records (if any) from the left table (table1).

       SELECT column_name(s)
       FROM table1
       RIGHT JOIN table2
       ON table1.column_name = table2.column_name;


       Full Join 
      -> returns all records from both tables (table1 and table2).

      SELECT column_name(s)
      FROM table1
      CROSS JOIN table2;

