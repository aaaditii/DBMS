CREATE OR REPLACE PROCEDURE Sub_Avg (
    cn IN INT, 
    dbms IN INT, 
    ifds IN INT, 
    cmbs IN INT
) AS
    total INT;
    per NUMBER(5,2)

BEGIN
    total := cn + dbms + ifds + cmbs;
    per := (total / 400) * 100;
    
    IF cn < 40 OR dbms < 40 OR ifds < 40 OR cmbs < 40 THEN
        DBMS_OUTPUT.PUT_LINE('FAIL');
    ELSE
        IF per > 75 THEN
            DBMS_OUTPUT.PUT_LINE('GRADE A'); 
        ELSIF per > 65 AND per <= 75 THEN
            DBMS_OUTPUT.PUT_LINE('GRADE B'); 
        ELSIF per > 55 AND per <= 65 THEN
            DBMS_OUTPUT.PUT_LINE('GRADE C');
        ELSE
            DBMS_OUTPUT.PUT_LINE('GRADE D');
        END IF;
        
        DBMS_OUTPUT.PUT_LINE('PERCENTAGE IS ' || per);
    END IF;
END;
/
