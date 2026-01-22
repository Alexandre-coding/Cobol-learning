       identification division.
       program-id. NombrePremier.
       author. Lenglart.

       data DIVISION.
       WORKING-STORAGE SECTION.

      *     01 Tableau1 occurs 10 times.
      *        05 Nom pic x(10).


      *     01 NombreOccurs pic 999.
      *     01 Tableau2 occus 1 to 1000 depending on NombreOccurs
           


      *     01 ws-client.
      *        05 id-client               pic 9(09).
      *        05 ws-nom                  pic x(15).
      *        05 ws-prenom               pic x(15).
      *        05 nombre-facture          pic 9(03).
      *        05 facture-tb occurs 1 to 100 depending on nombre-facture.
      *           10 numero-facture       pic 9(12).
      *           10 date-facture         pic 9(08).
      *           10 montant-facture      pic 9(11)v9(3).
      *           10 description-fct      pic x(30).



       01 ws-tableau.
           05 filler pic x(7) value "eric".
           05 filler pic x(7) value "amelie".
           05 filler pic x(7) value "michael".
           05 filler pic x(7) value "zoe".
           05 filler pic x(7) value "bob".

       01 ws-tableau-prenom redefines ws-tableau.
           05 ws-prenom pic x(7) occurs 5 times indexed by ws-index.

       01 i pic 9 value 1.





       PROCEDURE division.
           
           perform varying i from 1 by 1 until i > 5
              display ws-prenom(i) 
           end-perform.

           sort ws-prenom on descending key ws-prenom 
           display "trie effectué !".

           perform varying i from 1 by 1 until i > 5
              display ws-prenom(i) 
           end-perform.

           search ws-prenom varying ws-index
              at end   
                 display "not found"
              when i = 1
                 display "found"
           end-search.
           
           stop run.
