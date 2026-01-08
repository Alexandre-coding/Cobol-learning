       IDENTIFICATION DIVISION. 
       PROGRAM-ID. calcul-carre.
       AUTHOR. moi.

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01 Nombre pic 999 value zero.
       01 Carre pic 99999 value zero.
       01 ED-carre pic zzzz9 value zero.


       PROCEDURE DIVISION.
           DISPLAY "Veuillez entrer un nombre :".
           ACCEPT Nombre.
           compute Carre = Nombre * Nombre.
           move Carre to ED-carre.
           DISPLAY "Voici le carré du nombre entré : " ED-carre .
           stop run.
           