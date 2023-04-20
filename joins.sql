/*
    TABLE, COLUMN aliases
    aliases = shorter names for tables, columns
*/

SELECT full_name n -- n is alias of full_name column
FROM student s; -- s is alias of student table

/*
    JOIN
    Combination of 2 or more tables with special conditions
*/

--  INNER JOIN return records that have matching values in both tables.

SELECT *
FROM student s
JOIN teacher t ON s.class = t.class;

-- LEFT (OUTER JOIN) return records all record from the left table, 
-- and the matched records from the right table.

SELECT *
FROM student s
LEFT JOIN teacher t ON s.class = t.class;

-- RIGHT (OUTER JOIN) return records all record from the right table, 
-- and the matched records from the left table.

SELECT *
FROM student s
RIGHT JOIN teacher t ON s.class = t.class;

-- (OUTER JOIN) return records all record from the both table, 
-- where is a match in either left or riht table.

SELECT *
FROM student s
FULL JOIN teacher t ON s.class = t.class;

-- NATURAL JOIN is pretty similar to INNER JOIN but I don't have
-- to provide conditions. NATURAL JOIN tries to get the columns having
-- similar name and make conditions from them. 

SELECT *
FROM student s  
NATURAL JOIN teacher s;

-- CROSS JOIN make combinations between all columns in left table with
-- all columns in the left table.

SELECT *
FROM student s 
CROSS JOIN teacher t;

-- TABLE CAN SELF JOIN