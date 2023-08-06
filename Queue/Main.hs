import Queue

main :: IO ()
main = do
    putStrLn "Exemplo de uso da fila:"
    let fila1 = enqueue 1 (enqueue 2 (enqueue 3 newQueue))

    putStrLn "Fila atual:"
    print fila1

    let frontElement = front fila1
    putStrLn $ "Elemento da frente: " ++ show frontElement

    let fila2 = dequeue fila1
    putStrLn "Fila após desenfileirar:"
    print fila2

    let isEmpty = queueEmpty fila1
    putStrLn $ "A fila está vazia? " ++ show isEmpty

    let isEmpty2 = queueEmpty fila2
    putStrLn $ "A fila após desenfileirar está vazia? " ++ show isEmpty2

    putStrLn "\nExemplo de conversão de lista para fila:"
    let listaExemplo = [4, 5, 6, 7, 8]
        filaExemplo = listToQueue listaExemplo
    putStrLn "Lista de exemplo:"
    print listaExemplo
    putStrLn "Fila resultante:"
    print filaExemplo

    putStrLn "\nExemplo de conversão de fila para lista:"
    let filaExemplo2 = enqueue 9 (enqueue 10 (enqueue 11 newQueue))
        listaExemplo2 = queueToList filaExemplo2
    putStrLn "Fila de exemplo:"
    print filaExemplo2
    putStrLn "Lista resultante:"
    print listaExemplo2
