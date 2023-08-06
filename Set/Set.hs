module Set (Set, emptySet, setEmpty, inSet, addSet, delSet, pickSet, showIntSet) where

data Set t = S [t]  -- listas sem repetições

emptySet :: Set t
emptySet = S []

setEmpty :: Set t -> Bool
setEmpty (S []) = True
setEmpty _ = False

inSet :: (Eq t) => t -> Set t -> Bool
inSet _ (S []) = False
inSet x (S (y : ys))
  | x == y = True
  | otherwise = inSet x (S ys)

addSet :: (Eq t) => t -> Set t -> Set t
addSet x (S s)
  | elem x s = S s
  | otherwise = S (x : s)

delSet :: (Eq t) => t -> Set t -> Set t
delSet x (S s) = S (delete x s)
  where
    delete x [] = []
    delete x (y : ys)
      | x == y = delete x ys
      | otherwise = y : delete x ys

pickSet :: Set t -> t
pickSet (S []) = error "conjunto vazio"
pickSet (S (x : _)) = x

instance (Show t) => Show (Set t) where
  show (S xs) = "{" ++ showSet xs ++ "}"
    where
      showSet [] = ""
      showSet [x] = show x
      showSet (x : xs) = show x ++ ", " ++ showSet xs

showIntSet :: Set Int -> String
showIntSet (S xs) = "{" ++ showIntList xs ++ "}"
  where
    showIntList [] = ""
    showIntList [x] = show x
    showIntList (x : xs) = show x ++ ", " ++ showIntList xs
