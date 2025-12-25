      * Commentaire programme hello world test

       identification division.
       program-id. HelloWorld.
       author. Lenglart.

      *-----------------------------------------------------------------

       environment division.
       
      *-----------------------------------------------------------------

       data division.
      
      * Déclaration des variables 
       working-storage section.
       
      *

       01  ws-a pic 99 value 10.
       01  ws-b pic 99 value 15.
       01  ws-resultat pic 99.


      *-----------------------------------------------------------------


       procedure division.
       
       
           perform 8000-affichage
           add ws-a to ws-b giving ws-resultat.
           display "Résultat : " ws-resultat.
           stop run.

       8000-affichage.
           display "Bonjour tout le monde".
       

      *-----------------------------------------------------------------

