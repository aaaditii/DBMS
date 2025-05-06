CREATE OR REPLACE PROCEDURE SumFirst10Numbers_WhileLoop AS
    i NUMBER := 1;
    sum1 NUMBER := 0;
BEGIN
    WHILE i <= 10 LOOP
        sum1 := sum1 + i;
        i := i + 1;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Sum of first 10 numbers using WHILE loop: ' || sum1);
END;
/

 BEGIN
        SumFirst10Numbers_WhileLoop;
    END;
    /
