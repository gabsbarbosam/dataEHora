      ******************************************************************
      * Author: GABRIELA BARBOSA
      * Date: 18/09/2023
      * Purpose: USUARIO INFORMAR DATA E HORA E MOSTRA A ELE
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DTEHR.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.


       77 WS-HR                   PIC 9(02) VALUE ZEROS.
           88 WS-HORAOK              VALUES 0 THRU 23.
       77 WS-MINU                 PIC 9(02) VALUE ZEROS.
           88 WS-MINUOK              VALUES 0 THRU 59.
       77 WS-DIA                  PIC 9(02) VALUE ZEROS.
           88 WS-DIAOK               VALUES 1 THRU 31.
       77 WS-MES                  PIC 9(02) VALUE ZEROS.
           88 WS-MESOK               VALUES 1 THRU 12.
       77 WS-ANO                  PIC 9(04) VALUE ZEROS.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.


           DISPLAY "INFORME O DIA"
              ACCEPT WS-DIA
                 IF NOT WS-DIAOK
                    DISPLAY "DATA INVALIDA!"
                    STOP RUN
                 END-IF.

           DISPLAY "INFORME O MES"
              ACCEPT WS-MES
                 IF NOT WS-MESOK
                    DISPLAY "DATA INVALIDA!"
                    STOP RUN
                 END-IF.

           DISPLAY "INFORME O ANO"
              ACCEPT WS-ANO

           DISPLAY "INFORME A HORA E OS MINUTOS"
              ACCEPT WS-HR
                 IF NOT WS-HORAOK
                    DISPLAY "HORA INVALIDA!"
                    STOP RUN
                 END-IF .

           DISPLAY "INFORME OS MINUTOS"
              ACCEPT WS-MINU
                 IF NOT WS-MINUOK
                    DISPLAY "HORA INVALIDA!"
                    STOP RUN
                 END-IF.

           DISPLAY "VOCE INFORMOU A DATA: "WS-DIA"/"WS-MES"/"WS-ANO
           " E A HORA: " WS-HR":"WS-MINU

            STOP RUN.
       END PROGRAM DTEHR.
