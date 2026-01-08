       IDENTIFICATION DIVISION. 
       PROGRAM-ID. Arithmetics.
       AUTHOR. MOI.

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 

       01  Valeur1 pic 999 value 12.
       01  Valeur2 pic 999 value 15.
       01  Valeur3 pic 999 value ZERO.
       01  Valeur4 pic 999 value ZERO.
       
       



       PROCEDURE DIVISION.
           perform Affichage-Valeurs.
           ADD Valeur1 to Valeur2 giving valeur3.
           compute Valeur4 = Valeur1 * Valeur2.
           perform Affichage-Valeurs.
           INITIALIZE Valeur1 Valeur2 Valeur3 Valeur4.
           compute Valeur1 = 105.
           compute Valeur2 = 166.
           display "Promo de 30%".
           display "Prix avant promo :".
           display "Article 1 : " Valeur1 .
           display "Article 2 : " Valeur2 .
           compute Valeur3 = Valeur1 - (Valeur1 * (30/100)).
           compute Valeur4 = Valeur2 - (Valeur2 * (30/100)).

           display "Prix après promo :".
           display "Article 1 : " Valeur3 .
           display "Article 2 : " Valeur4 .

           stop run.


       Affichage-Valeurs.
           display "Valeur 1 : " Valeur1.
           display "Valeur 2 : " Valeur2.
           display "Valeur 3 : " Valeur3.
           display "Valeur 4 : " Valeur4.
