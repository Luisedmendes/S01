main :: IO ()
main = do
    - Parte 1
    let numeros = [30, 29 .. 1]
    let listaProcessada = reverse (map (* 3) numeros)
    let elementoFinal = last listaProcessada
    putStrLn "Último elemento da lista processada:"
    print elementoFinal

    - Parte 2
    let valor = 5 -- Substitua pelo número desejado
    let resultadoCalculado = calcularResultado valor
    putStrLn "\nResultado da operação:"
    print resultadoCalculado

- Função que calcula o fatorial ou dobra o número
calcularResultado :: Int -> Int
calcularResultado x
    | x > 0     = fatorial x
    | otherwise = x * 2
  where
    fatorial n
        | n == 0    = 1
        | otherwise = n * fatorial (n - 1)
