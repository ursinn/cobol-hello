       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. example4.
AUTHOR. Ursin Filli
DATE-WRITTEN. April 29th 2020
ENVIRONMENT DIVISION.

DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.

PROCEDURE DIVISION.
SubOne.
       DISPLAY "In Paragraph 1"
       PERFORM SubTwo
       DISPLAY "Returned to Paragraph 1"
       PERFORM SubFour 2 TIMES
       STOP RUN.

SubThree.
       DISPLAY "In Paragraph 3".

SubTwo.
       DISPLAY "In Paragraph 2"
       PERFORM SubThree
       DISPLAY "Returned to Paragraph 2".

SubFour.
       DISPLAY "Repeat".

STOP RUN.
