       IDENTIFICATION DIVISION. 
       PROGRAM-ID. JPENDU.
       AUTHOR. moi.

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01 ws-mot pic x(20).
       01 ws-chn pic x(20) value spaces.
       01 ws-lettres pic x(26) value "abcdefghijklmnopqrstuvwxyz".
       01 ws-tirets pic x(26) value all "_".
       01 ws-char pic x.
       01 i pic 99 value zero.
       01 longueur pic 99 value zero.


       PROCEDURE DIVISION.

       0000-traitement-principal-deb.
           perform 1000-mot-recherche-deb
           thru 1000-mot-recherche-fin.

           perform 2000-jeu-deb
           thru 2000-jeu-fin.

           perform 9999-fin-programme.

       0000-traitement-principal-fin.
           exit.


       1000-mot-recherche-deb.
           DISPLAY "Avec quel mot souhaitez jouer ?".
           accept ws-mot.
           move function length(ws-mot) to longueur.
           perform varying i from 1 by 1 until i > longueur 
              if ws-mot(i:1) not = space
                 move "_" to ws-chn(i:1)
              else  
                 move space to ws-chn(i:1)             
              END-IF 
           end-perform.
           display "A vous de jouer !".
       
       1000-mot-recherche-fin.
           exit.
       

       2000-jeu-deb.
           display ws-chn.
           perform until ws-mot = ws-chn 
              accept ws-char 
              perform varying i from 1 by 1 until i > longueur   
                 if ws-mot(i:1) = ws-char 
                    move ws-char to ws-chn(i:1)
                 END-IF
              end-perform
              display ws-chn 
           end-perform.
           display "Bravo !".
       2000-jeu-fin.
           exit.

       9999-fin-programme.
           stop run.
       end program JPENDU.
