#Inner join

SELECT
    i.InvoiceId,
    i.InvoiceDate,
    c.FirstName,
    c.LastName,
    c.Country
FROM Invoice i
INNER JOIN Customer c
ON i.CustomerId = c.CustomerId;

#Left Join

SELECT
    c.CustomerId,
    c.FirstName,
    c.LastName
FROM Customer c
LEFT JOIN Invoice i
ON c.CustomerId = i.CustomerId
WHERE i.InvoiceId IS NULL;

#Revenue per product

SELECT
    t.Name AS Product,
    SUM(il.Quantity * il.UnitPrice) AS Revenue
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
GROUP BY t.Name;

