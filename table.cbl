       IDENTIFICATION DIVISION.
           PROGRAM-ID. table.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  TEST-DONNEE.
           03 FILLER       PIC X(33) VALUE "0001HOKKAI       TARO        
      -    "0400".
           03 FILLER       PIC X(33) VALUE "0002AOMORI       JIRO        
      -    "0350".
           03 FILLER       PIC X(33) VALUE "0003AKITA        SABURO      
      -    "0300".
           03 FILLER       PIC X(33) VALUE "0004IWATE        SHIRO       
      -    "0900".
           03 FILLER       PIC X(33) VALUE "0005MIYAGI       GORO       
      -    "0200".
           03 FILLER       PIC X(33) VALUE "0006FUKUSHIMA    RIKURO     
      -    "0150".
           03 FILLER       PIC X(33) VALUE "0007TOCHIGI      SHICHIRO   
      -    "0100".
           03 FILLER       PIC X(33) VALUE "0008IBARAKI      HACHIRO     
      -    "1050".
           03 FILLER       PIC X(33) VALUE "0009GUMMA        KURO       
      -    "0200".
           03 FILLER       PIC X(33) VALUE "0010SAITAMA      JURO        
      -    "0350".
       01  TEST-DATA REDEFINES TEST-DONNEE.                   
           03 WS-TABLEAU OCCURS 10 TIMES. 
           05 WS-ID PIC X(4).
           05 WS-NAME PIC X(12).
           05 WS-FIRSTNAME PIC X(13).
           05 WS-GRADING PIC X(4).
       01  WS-IDX PIC 9(2) VALUE 0. 

       PROCEDURE DIVISION.
           
           PERFORM VARYING WS-IDX FROM 1 BY 1 UNTil WS-IDX > 10
           DISPLAY WS-ID(WS-IDX) SPACE
            WS-NAME(WS-IDX) SPACE
            WS-FIRSTNAME(WS-IDX) SPACE
            WS-GRADING(WS-IDX)
          

           END-PERFORM.
           

              