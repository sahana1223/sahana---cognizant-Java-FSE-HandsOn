-- =====================================
-- Scenario 3
-- Customers whose loans are due within 30 days
-- =====================================

SELECT
    c.customer_name,
    l.loan_id,
    l.due_date
FROM Customers c
JOIN Loans l
ON c.customer_id = l.customer_id
WHERE l.due_date <= DATE('2026-08-04');