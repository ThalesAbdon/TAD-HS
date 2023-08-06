module Stack (Stack, push, pop, top, stackEmpty, newStack, listToStack, stackToList) where

data Stack t = Stk [t]

push :: t -> Stack t -> Stack t
push x (Stk xs) = Stk (x : xs)

pop :: Stack t -> Stack t
pop (Stk []) = error "Retirada em pilha vazia"
pop (Stk (_ : xs)) = Stk xs

top :: Stack t -> t
top (Stk []) = error "Topo de pilha vazia"
top (Stk (x : _)) = x

stackEmpty :: Stack t -> Bool
stackEmpty (Stk []) = True
stackEmpty _ = False

newStack :: Stack t
newStack = Stk []

listToStack :: [t] -> Stack t
listToStack xs = Stk xs

stackToList :: Stack t -> [t]
stackToList (Stk xs) = xs

instance (Show t) => Show (Stack t) where
    show (Stk []) = "#"
    show (Stk (x : xs)) = show x ++ "|" ++ show (Stk xs)
