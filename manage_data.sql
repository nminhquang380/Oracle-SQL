/*
    INSERT DATA

    INSERT INTO table_name (col1, col2,..)
    VALUES (value1, value2,..);
*/

INSERT INTO student (studentID, name, class)
VALUES (12345, 'MICASIDAD', 15)

/*
    UPDATING DATA

    UPDATE table
    SET col1 = val1,
    col2 = val2,
    WHERE clauses

    WHERE clauses are optional, but recommended
    No WHERE condition = all rows update
*/

UPDATE student
SET name = 'quang',
class = 12
WHERE studentID = 12345;

/*
    DELETE DATA

    DELETE FROM table
    WHERE condition;

    No WHERE condition, all rows deleted. 
    Should run SELECT before DELETE.
*/

/*
    COMMIT & ROLLBACK
    THERE ARE NO ROLLBACK AFTER COMMIT!
*/

/*
    TRUNCATE DATA
    DELETE WITHOUT ABILITY TO ROLLBACK (PERMANENTLY DELETE)
*/