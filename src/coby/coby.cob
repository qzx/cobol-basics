       >>SOURCE FORMAT FREE
       IDENTIFICATION DIVISION.
       PROGRAM-ID. coby.
       AUTHOR. Freyr Gudjonsson.
       DATE-WRITTEN. July 20th 2024
       ENVIRONMENT DIVISION.

       DATA DIVISION.
        FILE SECTION.
        WORKING-STORAGE SECTION.
       01 UserName PIC X(30) VALUE "Freyr".
       01 Num1 PIC 9 VALUE ZEROS.
       01 Num2 PIC 9 VALUE ZEROS.
       01 Total PIC 99 VALUE 0.
       01 Kennitala.
         02 Birth PIC 999999.
         02 Nonce PIC 99.
         02 ParityBit PIC 9.
         02 Century PIC 9.
       01 PIValue CONSTANT AS 3.14.
      *> ZERO, ZEROES
      *> SPACE SPACES 
      *> HIGH-VALUE(S)
      *> LOW-VALUE(S) 
       PROCEDURE DIVISION.
           DISPLAY "What is ur naem " WITH NO ADVANCING
ACCEPT UserName
           DISPLAY "Hello " UserName
           MOVE ZERO TO UserName
           DISPLAY UserName
           DISPLAY "Enter two vals to sum "
ACCEPT Num1
ACCEPT Num2
           COMPUTE Total = Num1 + Num2
           DISPLAY Num1 " + " Num2 " = " Total
           DISPLAY "Hver er kennitala? "
ACCEPT Kennitala
           DISPLAY Birth


             STOP RUN.
