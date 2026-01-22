       IDENTIFICATION DIVISION. 
       PROGRAM-ID. CALCPRET.
       author. Alexandre Lenglart.


       ENVIRONMENT DIVISION. 
       CONFIGURATION SECTION. 
       SPECIAL-NAMES. DECIMAL-POINT IS COMMA.

       
       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01 ws-file-status pic x(2).   
       01 ws-data.
           05 ws-montant-pret pic 9(6).
           05 ws-taux-annuel pic 9.
           05 ws-duree-annees pic 99.
           05 ws-taux-mensuel pic 9v9(16).
           05 ws-nombre-mois pic 9(4).
           05 ws-mensualite pic 9(7)v99.
           05 ws-interet-total pic 9(10)v99.
           05 ws-total-rembourse pic 9(10)v99.

       01 ws-date-ed.
           05 WS-MENSUALITE-ed pic z(9)9,99.
           05 WS-INTERET-TOTAL-ed pic z(9)9,99.
           05 WS-TOTAL-REMBOURSE-ed pic z(9)9,99.



       PROCEDURE DIVISION.
           initialize ws-data.
           perform recup-infos.
           perform calcul-pret.

           stop run.

       recup-infos.

           display "Calcul pret immo"
           display "Entrer le montant total du prêt : "
           ACCEPT ws-montant-pret
           display "Entrer le taux annuel du prêt : "
           ACCEPT ws-taux-annuel
           display "Entrer le nombre d'annees du prêt : "
           ACCEPT ws-duree-annees
           
           .


       calcul-pret.
           compute ws-taux-mensuel = (ws-taux-annuel / 100) / 12 
           compute ws-nombre-mois = ws-duree-annees * 12
           compute ws-mensualite = ws-montant-pret *
              (ws-taux-mensuel / (1 - (1 + ws-taux-mensuel ) **
               (- ws-nombre-mois )))
           compute ws-total-rembourse = ws-mensualite *
              ws-nombre-mois 
           compute ws-interet-total = ws-total-rembourse -
              ws-montant-pret 

           move ws-mensualite to WS-MENSUALITE-ED
           move ws-interet-total  to WS-INTERET-TOTAL-ED
           move ws-total-rembourse to WS-TOTAL-REMBOURSE-ED


           display "Votre crédit vous coutera : " WS-TOTAL-REMBOURSE-ED
              "€ pour des mensualités à : " WS-MENSUALITE-ED "€ et "
              ws-interet-total-ed "€ d'interets."

           .