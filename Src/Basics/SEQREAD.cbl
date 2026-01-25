       IDENTIFICATION DIVISION.
       PROGRAM-ID. SEQREAD.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT INFILE ASSIGN TO "Data/seq/clients.in"
               ORGANIZATION IS LINE SEQUENTIAL
               FILE STATUS IS WS-IN-STATUS.

           SELECT OUTFILE ASSIGN TO "Data/seq/clients.out"
               ORGANIZATION IS LINE SEQUENTIAL
               FILE STATUS IS WS-OUT-STATUS.

       DATA DIVISION.
       FILE SECTION.
       FD  INFILE.
       01  IN-LINE               PIC X(42).

       FD  OUTFILE.
       01  OUT-LINE              PIC X(80).

       WORKING-STORAGE SECTION.
       01  WS-IN-STATUS          PIC XX VALUE "00".
       01  WS-OUT-STATUS         PIC XX VALUE "00".
       01  WS-EOF                PIC X  VALUE "N".
           88  EOF                        VALUE "Y".
           88  NOT-EOF                    VALUE "N".

       01  WS-COUNT-READ         PIC 9(5) VALUE 0.
       01  WS-COUNT-WRITTEN      PIC 9(5) VALUE 0.

       COPY CLIENT-REC.

       PROCEDURE DIVISION.
           DISPLAY "=== SEQREAD START ===".

           OPEN INPUT INFILE
                OUTPUT OUTFILE.

           IF WS-IN-STATUS NOT = "00"
              DISPLAY "INFILE OPEN ERROR, STATUS=" WS-IN-STATUS
              STOP RUN
           END-IF.

           IF WS-OUT-STATUS NOT = "00"
              DISPLAY "OUTFILE OPEN ERROR, STATUS=" WS-OUT-STATUS
              STOP RUN
           END-IF.

           PERFORM UNTIL EOF
              READ INFILE
                 AT END
                    SET EOF TO TRUE
                 NOT AT END
                    ADD 1 TO WS-COUNT-READ
                    MOVE IN-LINE TO CLIENT-REC

                    *> Exemple: on ne garde que AGE >= 30
                    IF CL-AGE >= 30
                       STRING
                          "ID=" CL-ID
                          " NAME=" CL-NAME
                          " AGE=" CL-AGE
                          " CITY=" CL-CITY
                          DELIMITED BY SIZE
                          INTO OUT-LINE
                       END-STRING

                       WRITE OUT-LINE
                       ADD 1 TO WS-COUNT-WRITTEN
                    END-IF
              END-READ
           END-PERFORM.

           CLOSE INFILE OUTFILE.

           DISPLAY "READ=" WS-COUNT-READ " WRITTEN=" WS-COUNT-WRITTEN
           DISPLAY "=== SEQREAD END ===".
           STOP RUN.
