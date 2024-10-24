-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT 
  COUNT(l.LoanID) as LoanCount,
   p.FirstName,
   p.LastName,
   p.Email
FROM Loans l
JOIN Patrons p ON l.PatronID = p.PatronID
GROUP BY l.PatronID
ORDER BY LoanCount
LIMIT 20;
