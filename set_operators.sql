/*
    UNION combine the result-set of two or more SELECT statements.
     - Every SELECT statement within UNION must have the same number of columns
     - The columns must have similar data types
     - The columns are same order
     - UNION will remove the intersect of 2 result-set once.

    so, we have UNION ALL which will not remove the duplicate of 2 sets.
*/

SELECT first_name, last_name
FROM employee
UNION
SELECT first_name, last_name
FROM customer;

SELECT first_name, last_name
FROM employee
UNION ALL
SELECT first_name, last_name
FROM customer;

/*
    INTERSECT similar to UNION:
    return that appear in both queries
*/

SELECT first_name, last_name
FROM employee
INTERSECT
SELECT first_name, last_name
FROM customer;

/*
    MINUS similar to UNION, INTERSECT
    return the part of first query which do not appear in the second
*/

SELECT first_name, last_name
FROM employee
MINUS
SELECT first_name, last_name
FROM customer;

/*
    we can interact with more than 2 sets once.
    - combination of UNION, UNION ALL, INTERSECT, MINUS
    - compiled in order.
    - can used with brackets.
*/