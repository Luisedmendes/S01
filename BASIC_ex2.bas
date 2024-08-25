10 RANDOMIZE TIMER
20 N = INT(RND * 10) + 1
30 PRINT "Número aleatório gerado: "; N
40 F = 1
50 FOR I = 1 TO N
60 F = F * I
70 NEXT I
80 PRINT "Fatorial de "; N; " é: "; F
