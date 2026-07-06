-- =====================================
-- Create Customers Table
-- =====================================

CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name VARCHAR(100),
    age INTEGER,
    interest_rate REAL,
    balance REAL,
    IsVIP BOOLEAN
);

-- =====================================
-- Create Loans Table
-- =====================================

CREATE TABLE Loans (
    loan_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    due_date DATE,
    FOREIGN KEY(customer_id)
    REFERENCES Customers(customer_id)
);

-- =====================================
-- Insert Sample Customers
-- =====================================

INSERT INTO Customers VALUES
(1,'Rahul',65,7.5,12000,FALSE);

INSERT INTO Customers VALUES
(2,'Priya',45,8.0,9000,FALSE);

INSERT INTO Customers VALUES
(3,'Arun',70,6.5,15000,FALSE);

INSERT INTO Customers VALUES
(4,'Divya',35,7.0,5000,FALSE);

-- =====================================
-- Insert Sample Loans
-- =====================================

INSERT INTO Loans VALUES
(101,1,'2026-07-20');

INSERT INTO Loans VALUES
(102,2,'2026-08-30');

INSERT INTO Loans VALUES
(103,3,'2026-07-15');

INSERT INTO Loans VALUES
(104,4,'2026-07-28');