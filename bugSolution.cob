01  WS-AREA-1 PIC 9(5) VALUE 0. 
01  WS-AREA-2 PIC 9(5) VALUE 0. 
01 WS-COUNTER PIC 9(2) VALUE 0.
PROCEDURE DIVISION.

    ADD 1 TO WS-AREA-1.
    SUBTRACT 1 FROM WS-AREA-2.
    IF WS-AREA-1 > 5 THEN
        DISPLAY "WS-AREA-1 is greater than 5"
        GO TO END-PARA.
    END-IF
    IF WS-AREA-2 < -5 THEN 
        DISPLAY "WS-AREA-2 is less than -5"
        GO TO END-PARA.
    END-IF
    ADD 1 TO WS-COUNTER
    IF WS-COUNTER > 10 THEN
        DISPLAY "Loop executed more than 10 times. Possible infinite loop detected."
        GO TO END-PARA
    END-IF.
    GO TO NEXT-PARA.
NEXT-PARA. 
    DISPLAY WS-AREA-1 WS-AREA-2
END-PARA. 
    STOP RUN.