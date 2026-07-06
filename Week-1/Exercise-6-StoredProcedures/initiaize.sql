-- ==========================================
-- ACCOUNTS TABLE
-- ==========================================

CREATE TABLE Accounts (
    account_id NUMBER PRIMARY KEY,
    customer_name VARCHAR2(100),
    account_type VARCHAR2(20),
    balance NUMBER
);

INSERT INTO Accounts VALUES (101,'Rahul','Savings',50000);
INSERT INTO Accounts VALUES (102,'Priya','Savings',70000);
INSERT INTO Accounts VALUES (103,'Arun','Current',90000);

COMMIT;

-- ==========================================
-- EMPLOYEES TABLE
-- ==========================================

CREATE TABLE Employees (
    employee_id NUMBER PRIMARY KEY,
    employee_name VARCHAR2(100),
    department VARCHAR2(50),
    salary NUMBER
);

INSERT INTO Employees VALUES (1,'Amit','IT',50000);
INSERT INTO Employees VALUES (2,'Sneha','HR',45000);
INSERT INTO Employees VALUES (3,'Rohit','IT',60000);

COMMIT;