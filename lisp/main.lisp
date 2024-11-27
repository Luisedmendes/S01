;; Exercício 1

(defun transformar-elemento (n)
  "Transforma um número conforme as regras definidas."
  (cond ((>= n 4) (* n 2))
        (t (/ n 2.0)))) ; Divisão por 2.0 para obter valores decimais.

(defun transformar-lista (lista)
  "Aplica a transformação em cada elemento da lista."
  (mapcar #'transformar-elemento lista))

(print "Exercício 1 - Resultado para a lista (1 2 3):")
(print (transformar-lista '(1 2 3)))

;; Exercício 2

(defun combinar-transformacoes (lista1 lista2)
  "Transforma as duas listas e une os resultados."
  (concatenate 'list (transformar-lista lista1) (transformar-lista lista2)))

(print "Exercício 2 - Resultado para as listas (1 2 3) e (4 5 6):")
(print (combinar-transformacoes '(1 2 3) '(4 5 6)))
