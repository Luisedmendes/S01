10 INPUT "Digite o valor de A: "; A
20 INPUT "Digite o valor de B: "; B
30 INPUT "Digite o valor de C: "; C
40 D = B*B - 4*A*C
50 IF D < 0 THEN
60 PRINT "Não há raízes reais"
70 END
80 END IF
90 X1 = (-B + SQR(D)) / (2*A)
100 X2 = (-B - SQR(D)) / (2*A)
110 PRINT "As raízes da equação são: "; X1; " e "; X2


