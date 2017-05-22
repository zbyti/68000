DATA     EQU     $6000
PROGRAM  EQU     $4000

NUM1     EQU     $6000                  ADDRESS OF 1:ST 64-BIT BINARY NUMBER
NUM2     EQU     $6200                  ADDRESS OF 2:ND 64-BIT BINARY NUMBER

         ORG     PROGRAM

PGM_8_1B MOVEA.L #NUM1+8,A0             ADDRESS BEYOND END OF FIRST NUMBER
         MOVEA.L #NUM2+8,A1             ADDRESS BEYOND END OF SECOND NUMBER
         MOVE    #0,CCR                 CLEAR EXTEND FLAG(AND OTHER FLAGS)

         ADDX.L  -(A1),-(A0)            ADD LOWER LONG WORDS, RESULT IN NUM1
         ADDX.L  -(A1),-(A0)            ADD HIGHER LONG WORDS, RESULT IN NUM1

         RTS

         END     PGM_8_1B