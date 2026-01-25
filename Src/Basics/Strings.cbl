       IDENTIFICATION DIVISION.  
       PROGRAM-ID. Strings.
       AUTHOR. moi.

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01 String1 pic x(30) value 'Cobol is a coding language'.
       01 String2 pic x(20) value 'used for banks'.
       01 String3 pic x(50) value spaces.
       01 String4 pic x(20) value spaces.
       01 String5 pic x(20) value spaces.
       01 String6 pic x(20) value spaces.
       01 Compteur1 pic 99 value zeroes.
       01 Compteur2 pic 99 value zeroes.




       PROCEDURE DIVISION.
       
       
           INSPECT String1 TALLYING Compteur1 FOR ALL 'a'.
           display "Nombre de 'a' dans String1 : " Compteur1.

           inspect String1 replacing all 'o' by 'O'.
           DISPLAY String1.

           inspect String1 converting 'abcd' to 'ABCD'.
           DISPLAY String1.
           
           STRING String1, String2 
              delimited by size 
              into String3 
              on overflow display 'Erreur de taille'
           end-string.
           DISPLAY 'Concat : ' String3.


           UNSTRING String1 
              delimited by SPACE 
              into String4 String5 String6
              count in Compteur2

           display String4.
           display String5.
           display String6.
           display Compteur2 .



           stop run. 
