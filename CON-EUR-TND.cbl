       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONVERSION-DEVISE.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.


       01  WS-MONTANT  PIC 9(5).
       01  WS-MONTANT-CONVERTI  PIC 9(7).
       01  WS-DEVISEC  PIC X(3).



       PROCEDURE DIVISION.

             DISPLAY "DONNER UN MONTANT A CONVERTIR"
             ACCEPT WS-MONTANT

             DISPLAY "DONNER DEVISE"
             ACCEPT WS-DEVISEC

           EVALUATE WS-DEVISEC
             WHEN "TND"
                MOVE WS-MONTANT TO WS-MONTANT-CONVERTI

            WHEN "EUR"
                COMPUTE WS-MONTANT-CONVERTI = WS-MONTANT * 3.4

            WHEN "USD"
                COMPUTE WS-MONTANT-CONVERTI = WS-MONTANT * 3.2

            WHEN OTHER
                DISPLAY "DEVISE N'EST PAS PRISE EN CHARGE !"
            END-EVALUATE.

            DISPLAY WS-MONTANT" "WS-DEVISEC" = "
                                     WS-MONTANT-CONVERTI" TND"
           EXIT.

       END PROGRAM CONVERSION-DEVISE.
