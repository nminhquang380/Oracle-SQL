/*
Statement
- Keyword make up a statement
*/

/*
    SELECT: allow us to view the data
*/

SELECT *
FROM table_1;

/*
We can also select individual Columns in Tables
*/

SELECT col_1, col_2
FROM table_1;

/*
    WHERE: Allow us to filter data which we want to see 
    by adding conditions after WHERE.
    - We can also add more than 1 condition.
    - Using AND, OR and brackets () to modify the conditions you want. 
    - Remember that AND takes prior to OR.
*/

SELECT *
FROM table_1
WHERE condition_1 AND condition2 OR condition3;

SELECT *
FROM table_1
WHERE (condition_1 AND condition2) OR condition3;

SELECT *
FROM table_1
WHERE condition_1 AND (condition2 OR condition3);

/*
    CONDITION:
    - Use comparasion operators like other languages:
            =	Equal to	
            >	Greater than	
            <	Less than	
            >=	Greater than or equal to	
            <=	Less than or equal to	
            <>	Not equal to
    - Use LIKE : return True if match
        After LIKE is a wildcards
        - Characters that represent other characters
        - % means one or more characters
        - _ means one characters

     
*/

SELECT *
FROM table_1
WHERE first_name LIKE 'Quan_';

SELECT *
FROM table_1
WHERE first_name LIKE 'Qua%';

/*
    DISTINCT: after SELECT, Use when you want to get unique records.
    Ex: You have a table containing data of students in a class, where some of them have the same name.
    And you just need to know unique name.
*/

SELECT DISTINCT first_name
FROM employee;

-- or combination of domains
SELECT DISTINCE first_name, last_name
FROM employee;

/*
    NULL is missing data
*/

SELECT *
FROM employee
WHERE department_id ISNULL;