/*
    IN and NOT IN: Use when make a conditions.
    Instead of writing a bunch of line with OR,
    you just need to write a line with IN, or NOT IN
*/

SELECT *
FROM employee -- table contains employees' information
WHERE department_id IN (4,5,6);

SELECT *
FROM employee -- table contains employees' information
WHERE department_id NOT IN (4,5,6);

/*
    BETWEEN and NOT BETWEEN: Use make conditions 
    to find a value between 2 other values
    BETWEEN ___ AND ___
*/

SELECT *
FROM employee 
WHERE salary BETWEEN 10000 AND 15000;

/*
    ALL: compare a column against a list of values using AND
    WHERE col > ALL(values)
    ANY: compare a column against a list of values using OR
*/

SELECT *
FROM employee
WHERE department_id != ALL(1,2,3,4);

SELECT *
FROM employee
WHERE department_id = ANY(1,2,3,4);


