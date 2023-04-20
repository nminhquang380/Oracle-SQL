/*
    There are many function types and
    they are categorised by what they do or
    what type of data they work with. 

    STRING FUNCTION
*/

SELECT INSTR(email, '@')
FROM student; -- return the location of @ in email attribute of student, if not return 0. 

SELECT LENGTH(name)
FROM student; -- return the length of string, in this case return length of student's name. 

SELECT TRIM(name)
FROM student; -- Remove the space character or other specified characters either from the start or end of a string.

SELECT UPPER(name)
FROM student; -- return all characters in a string to uppercase. 

SELECT LOWER(name)
FROM student; -- return all characters in a string to lowercase. 

SELECT REPLACE(name)
FROM student; -- replace all occurrences of a substring by another substring in a string.

/*
        Nesting Functions with functions
        we can put a function into another for special purposes. 
*/

/*
    NUMBER FUNCTIONS
    In below, we provide some rounded function.
    There are also many Math function like: EXP, SIN, COS, TAN, POWER, SQRT, LN, ABS,... 
*/

SELECT ROUND(grade)
FROM student; -- returns a number rounded to the specified decimal place.

SELECT CEIL(grade)
FROM student; -- returns the smallest integer value not less than n.


SELECT FLOOR(grade)
FROM student; -- returns the largest integer value not greater than n.


/*
    DATE FUNCTION
*/


SELECT ADD_MONTHS(DOB, 1)
FROM student; -- Add a number of months (n, in this case is 1) to a date and return the same day which is n of months away.

SELECT CURRENT_DATE
FROM student; -- Return the current date and time in the session time zone.

SELECT MONTHS_BETWEEN(DOB, CURRENTDATE)
FROM student; -- Return the number of months between two dates.

SELECT TO_CHAR(DOB, 'DL')
FROM student; -- Convert a DATE or an INTERVAL value to a character string in a specified format.

SELECT TO_DATE('01 Jan 2017', 'DD MON YYYY')
FROM student; -- Convert a date which is in the character string to a DATE value.


/*
    CASE statement, condition in SQL

    CASE [expression]
    WHEN condition_1 THEN result_1
    WHEN condition_2 THEN result_2
    ...
    WHEN condition_n THEN result_n
    ELSE last_result
    END case_name
*/



SELECT name,
class,
CASE
WHEN grade < 5 THEN 'HOC DOT'
WHEN grade >= 5 THEN 'HOC GIOI'
END LEARN_LEVEL
FROM student;
