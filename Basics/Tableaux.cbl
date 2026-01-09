       IDENTIFICATION DIVISION.  
       PROGRAM-ID. Tableaux.
       AUTHOR. moi.


      *ENVIRONMENT DIVISION. 
      *configuration section.
      *repository.
      *    function all intrinsic.


       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01 tableau.
           05 Calendrier occurs 3 times.
              10 ws-mois pic x(9).
              10 ws-jour pic 9(2).

      * Exemple de definition de tableau

       01 ws-tableau.
           05 filler pic x(6) value "AMELIE".
           05 filler pic x(8) value "Math".
           05 filler pic 9(2) value 15.
           05 filler pic x(8) value "Francais".
           05 filler pic 9(2) value 13.
           05 filler pic x(8) value "Histoire".
           05 filler pic 9(2) value 11.
           05 filler pic x(6) value "THEO".
           05 filler pic x(8) value "Math".
           05 filler pic 9(2) value 14.
           05 filler pic x(8) value "Francais".
           05 filler pic 9(2) value 16.
           05 filler pic x(8) value "Histoire".
           05 filler pic 9(2) value 09.
           

      * ETC


       01 ws-tableau-note-etudiant REDEFINES ws-tableau.
           05 ws-info-etudiant occurs 2 times.
              10 ws-prenom pic x(6).
              10 ws-matiere occurs 3 times.
                 15 ws-nom-matiere pic x(8).
                 15 ws-moyenne pic 9(2).

       01 i pic 99 value 1.
       01 j pic 99 value 1.
       
       
       PROCEDURE DIVISION.


           PERFORM VARYING i from 1 by 1 until i > 2
               display "--------"
               display "Etudiant(e) - " ws-prenom(i)
               perform varying j from 1 by 1 until j > 3
                  display "********"
                  display "Matiere : " ws-nom-matiere(i,j)
                  display "Moyenne - " ws-moyenne (i,j)
               end-perform
           end-perform.

           stop run.

