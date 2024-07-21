       >>SOURCE FORMAT FREE
       IDENTIFICATION DIVISION.
       PROGRAM-ID. coby.
       AUTHOR. Freyr Gudjonsson.
       DATE-WRITTEN. July 20th 2024
       ENVIRONMENT DIVISION.

       DATA DIVISION.
        FILE SECTION.
        WORKING-STORAGE SECTION.
      *> 
      *> PUT YOUR VARIABLES HERE BRO
      *>
       01 Kennitala.
         02 Birth.
           03 BDay.
             04 BDay1 PIC 9 VALUE 0.
             04 BDay2 PIC 9 VALUE 0.
           03 BMon.
             04 BMon1 PIC 9 VALUE 0.
             04 BMon2 PIC 9 VALUE 0.
           03 BYear.
             04 BYear1 PIC 9 VALUE 0.
             04 BYear2 PIC 9 VALUE 0.
         02 KenniRand.
           03 KenniRand1 PIC 9 VALUE 0.
           03 KenniRand2 PIC 9 VALUE 0.
         02 CheckSum PIC 9 VALUE 0.
         02 Century PIC 9 VALUE 0.
       01 CheckSumSum PIC 9999 VALUE 0000.
       01 ModNum PIC 99 VALUE 00.
       01 CheckSumTest PIC 9 VALUE 0.




       PROCEDURE DIVISION.
      *> 
      *> PUT YOUR WORKING CODE HERE
      *> 
       DISPLAY "Hver er kennitala? "
       ACCEPT Kennitala
       DISPLAY "Dagur: " BDay
       DISPLAY "Manudur: " BMon
       DISPLAY "Ar: " BYear
       DISPLAY "Random Value: " KenniRand
       DISPLAY "CheckSum bit: " CheckSum
       DISPLAY "Century: " Century
       COMPUTE CheckSumSum = (3*BDay1 + 2*BDay2 + 7*BMon1 + 6*BMon2 +
           5*BYear1 + 4*BYear2 + 3*KenniRand1 + 2*KenniRand2)
       PERFORM UNTIL CheckSumSum < 12
           COMPUTE CheckSumSum = CheckSumSum - 11
           END-PERFORM.


       DISPLAY "Computed Bit: " CheckSumSum
           IF CheckSumSum = 0 
             MOVE 0 TO CheckSumTest
           ELSE
             COMPUTE CheckSumTest = 11 - CheckSumSum
           END-IF
       DISPLAY "CheckSumTest: " CheckSumTest
 
       IF CheckSumTest = CheckSum 
           DISPLAY "Valid!"
       ELSE
           DISPLAY "INVALID!"
           END-IF

           STOP RUN.
