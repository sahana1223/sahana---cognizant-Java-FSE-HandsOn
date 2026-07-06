CREATE OR REPLACE PROCEDURE TransferFunds
(
    source_acc IN NUMBER,
    target_acc IN NUMBER,
    amount IN NUMBER
)

AS

    current_balance NUMBER;

BEGIN

    SELECT balance
    INTO current_balance
    FROM Accounts
    WHERE account_id = source_acc;

    IF current_balance >= amount THEN

        UPDATE Accounts
        SET balance = balance - amount
        WHERE account_id = source_acc;

        UPDATE Accounts
        SET balance = balance + amount
        WHERE account_id = target_acc;

        COMMIT;

        DBMS_OUTPUT.PUT_LINE('Transfer Successful');

    ELSE

        DBMS_OUTPUT.PUT_LINE('Insufficient Balance');

    END IF;

END;
/

BEGIN
    TransferFunds(101,102,5000);
END;
/

SELECT * FROM Accounts;