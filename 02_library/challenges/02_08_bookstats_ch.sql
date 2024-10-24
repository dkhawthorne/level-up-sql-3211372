-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year. Sorted by years with the most books published at the top

-- Report 2: Show the five books that have been
-- checked out the most.


SELECT 
  COUNT(DISTINCT(Title)) as NumberBooks,
  Published
FROM Books
GROUP BY Published
ORDER BY NumberBooks DESC;

SELECT
  COUNT(l.LoanIN) as LoanCount
  b.Title,
  b.Author
FROM Books b
JOIN Loans l ON b.BookID = l.BookID
GROUP BY b.Title
ORDER BY LoanCount DESC
LIMIT 5;
