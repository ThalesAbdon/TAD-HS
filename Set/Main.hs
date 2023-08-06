import Set

main :: IO ()
main = do
    putStrLn "Exemplo de uso do conjunto:"
    let conjuntoVazio = emptySet
    putStrLn $ "Conjunto vazio: " ++ showIntSet conjuntoVazio

    let conjunto1 = addSet 1 (addSet 2 (addSet 3 emptySet))
    putStrLn $ "Conjunto após adicionar 1, 2 e 3: " ++ showIntSet conjunto1

    let conjunto2 = delSet 2 conjunto1
    putStrLn $ "Conjunto após remover o elemento 2: " ++ showIntSet conjunto2

    putStrLn $ "Elemento do conjunto 1: " ++ show (pickSet conjunto1)

    putStrLn $ "O elemento 2 está no conjunto 1? " ++ show (inSet 2 conjunto1)
    putStrLn $ "O elemento 4 está no conjunto 1? " ++ show (inSet 4 conjunto1)

    putStrLn $ "O conjunto 1 está vazio? " ++ show (setEmpty conjunto1)
    putStrLn $ "O conjunto Vazio está vazio? " ++ show (setEmpty conjuntoVazio)
