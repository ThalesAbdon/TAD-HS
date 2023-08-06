import Queue
import Stack

-- Converte uma fila em uma pilha
queueToStack :: Queue t -> Stack t
queueToStack q = listToStack (queueToList q)

-- Converte uma pilha em uma fila
stackToQueue :: Stack t -> Queue t
stackToQueue s = listToQueue (stackToList s)

main :: IO ()
main = do
    putStrLn "Exemplo de conversão de Fila para Pilha:"
    let filaExemplo = enqueue 1 (enqueue 2 (enqueue 3 newQueue))
        pilhaResultado = queueToStack filaExemplo

    putStrLn "Fila de exemplo:"
    print filaExemplo

    putStrLn "Pilha resultante:"
    print pilhaResultado

    putStrLn "\nExemplo de conversão de Pilha para Fila:"
    let pilhaExemplo = push 4 (push 5 (push 6 newStack))
        filaResultado = stackToQueue pilhaExemplo

    putStrLn "Pilha de exemplo:"
    print pilhaExemplo

    putStrLn "Fila resultante:"
    print filaResultado
