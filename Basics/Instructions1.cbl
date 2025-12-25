      * Commentaire programme hello world test

       identification division.
       program-id. Instructions1.
       author. Lenglart.

      *-----------------------------------------------------------------

       environment division.
       
      *-----------------------------------------------------------------

       data division.
      
      * Déclaration des variables 
       working-storage section.
             
      
      * variables exo 1 
       01 NUM1 pic 99 value 10.
       01 NUM2 pic 99 value 20.
       01 NUM3 pic 99 value ZEROS.
       



      * variables exo 2
       01 longue-chaine pic x(20) value "1f2e3d5s4e7r4f5d6s8f".
       01 courte-chaine pic x(10) value spaces.

      * variables exo 3
       01 Structure-complexe.
           05 Valeur1 pic x(10) value "test1".
           05 Valeur2 pic x(11) value "test2".
           05 Valeur3 pic x(15) value "test3".

       01 Autre-structure.
           05 Valeur1 pic x(10) value spaces.
           05 Valeur2 pic x(11) value spaces.
           05 Valeur4 pic x(15) value "test4".
           

      * variables exo 4
       01 WS-Date1.
           05 ws-annee pic 9999 value 1998.
           05 ws-mois pic 99 value 06.
           05 ws-jour pic 99 value 18.
       
       01 WS-Date2.
           05 ws-jour pic 99.
           05 filler pic x value "/".
           05 ws-mois pic 99.
           05 filler pic x value "/".
           05 ws-annee pic 9999.
            



       PROCEDURE DIVISION.
       
           perform exo1.
           perform exo2.
           perform exo3.
           perform exo4.

           stop run.
    

       exo1.
           display " "
           display "*--------------------------------------------------"
           display "Exo 1"
           display "Valeur avant swap"
           display "Valeur 1 :" num1
           display "Valeur 2 :" num2
           display "Valeur 3 :" num3
    
           move num1 to num3
           move num2 to num1
           move num3 to num2
    
    
           display "Valeur après swap"
           display "Valeur 1 :" num1
           display "Valeur 2 :" num2
           display "Valeur 3 :" num3.
    
       exo2.
           display " "
           display "*--------------------------------------------------"
           display "Exo 2"
           display "Valeur longue chaine : " longue-chaine
           move longue-chaine to courte-chaine 
           display "Valeur courte chaine : " courte-chaine. 

       exo3.
           display " "
           display "*--------------------------------------------------"
           display "Exo 3"
           display "Structure complexe : " Structure-complexe
           display "Autre structure : " Autre-structure
           move CORRESPONDING Structure-complexe to Autre-structure 
           display "Structure complexe : " Structure-complexe
           display "Autre structure : " Autre-structure.  

       exo4.
           display " "
           display "*--------------------------------------------------"
           display "Exo 4"
           display "Date : " WS-Date1 
           move CORRESPONDING ws-date1 to WS-Date2
           display "Apres reformattage" 
           display "Date : " WS-Date2. 
           