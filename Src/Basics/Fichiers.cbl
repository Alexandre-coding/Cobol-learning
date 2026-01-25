       IDENTIFICATION DIVISION. 
       PROGRAM-ID. Fichiers.
       AUTHOR. moi.

       environnement division.
       input-output section.
       file-control.
           select fichier-client assign to client-dd
              organization is sequential
              access mod is sequential
              file status is ws-file-status.


       
       
       DATA DIVISION.



       file section.
       fd fichier-client
           record contains 80 CHARACTERS
           block contains 0 records
           data client-enreg.



       WORKING-STORAGE SECTION. 
       01 ws-file-status pic xx.

       procedure division.
