-- =====================================
-- Scenario 1
-- Apply 1% discount for customers above 60
-- =====================================

UPDATE Customers
SET interest_rate = interest_rate - 1
WHERE age > 60;

SELECT * FROM Customers;