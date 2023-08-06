import Stack

main :: IO ()
main = do
    putStrLn "Exemplo de uso da pilha:"
    let stack1 = push 1 (push 2 (push 3 newStack))

    putStrLn "Pilha atual:"
    print stack1

    let topElement = top stack1
    putStrLn $ "Elemento do topo: " ++ show topElement

    let stack2 = pop stack1
    putStrLn "Pilha após desempilhar:"
    print stack2

    let isEmpty = stackEmpty stack1
    putStrLn $ "A pilha está vazia? " ++ show isEmpty

    let isEmpty2 = stackEmpty stack2
    putStrLn $ "A pilha após desempilhar está vazia? " ++ show isEmpty2

    putStrLn "\nExemplo de conversão de lista para pilha:"
    let listaExemplo = [4, 5, 6, 7, 8]
        pilhaExemplo = listToStack listaExemplo
    putStrLn "Lista de exemplo:"
    print listaExemplo
    putStrLn "Pilha resultante:"
    print pilhaExemplo

    putStrLn "\nExemplo de conversão de pilha para lista:"
    let pilhaExemplo2 = push 9 (push 10 (push 11 newStack))
        listaExemplo2 = stackToList pilhaExemplo2
    putStrLn "Pilha de exemplo:"
    print pilhaExemplo2
    putStrLn "Lista resultante:"
    print listaExemplo2
