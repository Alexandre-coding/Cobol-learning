       IDENTIFICATION DIVISION. 
       PROGRAM-ID. Boucles.
       AUTHOR. moi.

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       
       01 i pic 99 value zero.

       PROCEDURE DIVISION.
           
      * Boucle for 7
           perform 7 TIMES 
              display "Bonjour"
           end-perform.
           
      * Boucle until 7
           perform until i = 2
              display "Bonjour"
           end-perform.

      * Boucle until 7 avec verif avant d'entrer dans la boucle     
           perform with TEST BEFORE UNTIL i = 2
              display "Bonjour"
           end-perform.

      * Boucle for avec compteur
           perform varying i from 1 by 1 until i = 3
           display "Bonjour"
           end-perform.

           stop run.

