       identification division.
       program-id. HelloWorld.
       author. Lenglart.
       

       data division.
       WORKING-STORAGE SECTION. 
       
       01  WS-NOM PIC X(12).



       procedure division.
           display "Bonjour".
           DISPLAY "Quel est ton nom ?".
           
           ACCEPT WS-NOM .
           DISPLAY "Salut a toi " WS-NOM .
       
           stop run.
           