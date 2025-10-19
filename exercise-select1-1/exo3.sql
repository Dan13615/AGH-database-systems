-- Exercise 3
-- 1. Write a command that:
-- selects the library member number ( member_no ), the book’s ISBN ( isbn ), and the
-- value of the assessed fine ( fine_assessed ) from the loanhist table for all
-- loans/returns where a fine has been assessed (the fine_assessed column is not
-- NULL ),
-- creates a calculated column containing the doubled value of the fine_assessed
-- column,
-- creates an alias double_fine for this column (rename the column to double_fine ),
-- creates a column named diff containing the difference between the values in the
-- double_fine and fine_assessed columns
-- selects rows where the value in the diff column is greater than 3.

SELECT 
    member_no, 
    isbn, 
    fine_assessed,
    fine_assessed * 2 AS double_fine,
    (fine_assessed * 2 - fine_assessed) AS diff
FROM Loanhist lh
WHERE lh.fine_assessed IS NOT NULL
  AND (lh.fine_assessed * 2 - lh.fine_assessed) > 3;
