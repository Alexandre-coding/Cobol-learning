       IDENTIFICATION DIVISION. 
       PROGRAM-ID. Conditions.
       AUTHOR. moi.

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       
       01 i pic 99 value zero.

       01 age-group pic 9(3).
           88 Nourisson value 0 thru 1.
           88 Enfant value 2 thru 12.

       01 ws-nbr pic s9(6) value -9999.
       
       PROCEDURE DIVISION.
           
      * if basique

           if i = 1 then   
              display 'i=1'
           else  
              display 'i!=1'
           end-if.

           if not i = 1 then
              display 'i!=1'
           end-if.

           if ws-nbr is positive
              display "nbr pos" .
           if ws-nbr is NEGATIVE 
              display "nbr neg" .
           if ws-nbr is ZERO 
              display "nbr zero" .   


           if i = 1
              continue 
           else  
              display 'i!=1'
           end-if.
           



      * switch case
           evaluate i  
              when 1 thru 5 
                 display 'i=1'
              when 2   
                 display 'i=2'
              when 3   
                 display 'i=3'
              when other  
                 display 'i est inconnu'
           END-EVALUATE.
           
           evaluate true  
              when i  <= 1
                 display "<1"
              when i >= 2 and i <=3
                 display "2 ou 3"
              when other 
                 display "diff"
           END-EVALUATE.


           evaluate true  
              when Nourisson    
                 display 'Nourisson'
              when Enfant     
                 display 'Enfant'
           END-EVALUATE.


           stop run.
