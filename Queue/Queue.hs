module Queue (Queue, enqueue, dequeue, front, queueEmpty, newQueue, listToQueue, queueToList) where

data Queue t = Fila [t] [t]

enqueue :: t -> Queue t -> Queue t
enqueue y (Fila xs ys) = Fila xs (y : ys)

dequeue :: Queue t -> Queue t
dequeue (Fila [] []) = error "A fila está vazia"
dequeue (Fila (x:xs) ys) = Fila xs ys
dequeue (Fila [] ys) = dequeue (Fila (reverse ys) [])

front :: Queue t -> t
front (Fila [] []) = error "A fila está vazia"
front (Fila (x:xs) ys) = x
front (Fila [] ys) = front (Fila (reverse ys) [])

queueEmpty :: Queue t -> Bool
queueEmpty (Fila [] []) = True
queueEmpty _ = False

newQueue :: Queue t
newQueue = Fila [] []

listToQueue :: [t] -> Queue t
listToQueue xs = Fila xs []

queueToList :: Queue t -> [t]
queueToList (Fila xs ys) = xs ++ reverse ys

instance (Show t) => Show (Queue t) where
    show q = "Fila " ++ show (queueToList q)
