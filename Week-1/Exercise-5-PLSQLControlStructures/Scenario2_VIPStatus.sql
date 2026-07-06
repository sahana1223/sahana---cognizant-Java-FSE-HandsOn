-- =====================================
-- Scenario 2
-- Promote customers with balance > 10000
-- =====================================

UPDATE Customers
SET IsVIP = TRUE
WHERE balance > 10000;

SELECT * FROM Customers;