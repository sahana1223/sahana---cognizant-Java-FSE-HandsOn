CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus
(
    dept_name IN VARCHAR2,
    bonus_percent IN NUMBER
)

AS
BEGIN

    UPDATE Employees
    SET salary = salary + (salary * bonus_percent / 100)
    WHERE department = dept_name;

    COMMIT;

END;
/

BEGIN
    UpdateEmployeeBonus('IT',10);
END;
/

SELECT * FROM Employees;