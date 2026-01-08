       IDENTIFICATION DIVISION. 
       PROGRAM-ID. Calcul-perimetre.
       AUTHOR. moi.


       DATA DIVISION. 
       WORKING-STORAGE SECTION. 

       01 Longueur pic 999 value zero.
       01 Largeur pic 999 value zero.
       01 Perimetre pic 9999 value zero.
       01 ed-perimetre pic zzz9 value zero.

       PROCEDURE DIVISION.
           display "Renseigner la longueur : ".
           ACCEPT Longueur.
           display "Renseigner la largeur : ".
           ACCEPT Largeur .
           compute Perimetre = (Longueur + Largeur ) * 2.
           move Perimetre to ed-perimetre .
           display "Voici le perimetre du rectangle : " ed-perimetre.
           stop run.
