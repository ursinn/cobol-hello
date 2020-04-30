       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. example10.
AUTHOR. Ursin Filli
DATE-WRITTEN. April 30th 2020
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
       SELECT CustomerFile ASSIGN TO "Customer.dat"
           ORGANIZATION IS LINE SEQUENTIAL
           ACCESS IS SEQUENTIAL.
DATA DIVISION.
FILE SECTION.
FD CustomerFile.
01 CustomerData.
       02 IDNum    PIC 9(5).
       02 CustName.
           03 FirstName    PIC X(15).
           03 LastName     PIC X(15).

WORKING-STORAGE SECTION.
01 WSCustomer.
       02 WSIDNum  PIC 9(5).
       02 WSCustName.
           03 WSFirstName    PIC X(15).
           03 WSLastName     PIC X(15).

PROCEDURE DIVISION.
OPEN OUTPUT CustomerFile.
       MOVE 00001 TO IDNum.
       MOVE 'Doug' To FirstName.
       MOVE 'Thomas' TO LastName.
       WRITE CustomerData
       END-WRITE.
CLOSE CustomerFile

STOP RUN.
