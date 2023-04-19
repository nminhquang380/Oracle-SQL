/*
    What is functions?
    A function is a database object in SQL Server.
    Basically, it is a set of SQL statements that 
    accept only input parameters, perform actions 
    and return the result. The function can return 
    only a single value or a table.
*/

/*
    COUNT FUNCTION
    count the number of records in a query.
    See the size of a table, the occurences of data. 
    Find non-null values, unique values
    COUNT(parameter)

*/

SELECT COUNT(*)
FROM student; --return # of students in class

SELECT COUNT(address)
FROM student; --return # of students having certain address.

SELECT COUNT(DISTINCT name)
FROM student; --return # of unique name of students. 

/*
    COUNT with GROUP BY
*/

SELECT class, COUNT(studentID)
FROM student
GROUP BY class; --return # of students in each class

/*
    GROUP BY with WHERE and GROUP BY
    WHERE done first, GROUP BY excuted after.
*/

SELECT *
FROM student
WHERE age > 15
GROUP BY class;

/*
    GROUP BY with HAVING
    We use WHERE to filter data. 
    However WHERE excuted before GROUP BY,
    so if you want to filter GROUP, use HAVING
*/

SELECT student
FROM student
GROUP BY class
HAVING population > 30;


/*
    SUM function
    return SUM of certain field in table
*/

SELECT SUM(num_books)
FROM student; -- return # of books of all students in school. 

/*
    MAX, MIN, AVG
    similar to SUM()
    MAX is the maximum
    MIN is the minimum
    AVG is the average 
*/