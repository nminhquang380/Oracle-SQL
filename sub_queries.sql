/*
    SUB QUERIES
    A query inside another query
    Results of one query used as an input to another query 
    Two main subqueries
*/

-- Single row subqueries
SELECT student_id,
name,
class
FROM student
WHERE grade >= 
    (SELECT AVG(grade)
    FROM student);


-- Multi rows subqueries
SELECT student_id,
name,
class
FROM student
WHERE class IN
    (SELECT class_name
    FROM class
    WHERE level = 3);
