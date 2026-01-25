       identification division.
       program-id. NombrePremier.
       author. Lenglart.


       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.   


       DATA DIVISION. 

       WORKING-STORAGE SECTION. 
       01  N          PIC 9(3) VALUE ZERO .
       01  ENT        PIC 9(3) VALUE ZERO.
       01  Resultat   PIC 9(3) VALUE ZERO.
       01  Reste      PIC 9(3) VALUE ZERO.
       01  Rest2      PIC ZZ9.
       01  Valeur1    PIC ZZ9.
      

       PROCEDURE DIVISION.

           perform Recup-Value.
           perform Traitement-Value.
           perform Affichage-Value.
           stop run.

       Recup-Value.
           DISPLAY "Veuillez entrer un nombre entier naturel : "
           ACCEPT N .
           MOVE N TO Valeur1.

       Traitement-Value.
           move 2 to ENT .
           PERFORM UNTIL ENT  >= N   
              DIVIDE N  BY ENT   GIVING Resultat REMAINDER Reste   
                 if Reste = 0 then 
                    DISPLAY Valeur1 " n'est pas premier !"
                    stop RUN 
                 END-IF 
               add 1 to ENT 
           END-PERFORM. 

       Affichage-Value.
           if ENT  = N  then  
               DISPLAY Valeur1   " est un  nombre premier !"
           END-IF.





