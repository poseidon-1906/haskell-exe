-----------Exercice 4.1-------------
data Poly a b = Empty |  Cons a (Poly a b) deriving (Show)

-----------Exercice 4.2-------------
evalPoly :: Poly a b -> b -> a
evalPoly Empty _= 0
evalPoly(Cons coeff p) x = coeff * (pow x (degree p)) + evalPoly p x

-----------Exercice 4.3-------------

pow :: b -> Int -> b
pow x n
    | n == 0  x = 1
    | otherwise = x * pow x (n-1)


-----------Exercice 4.4-------------
degree :: Poly a b -> Int
degree Empty = -1
degree (Cons _ p) = 1 + degree p

-----------Exercice 4.5-------------
sumPoly :: Poly a b -> Poly a  -> Poly a b 
sumPoly Empty p2 p2
sumPoly p1 Empty = p1
sumPoly (Cons c1 p1) ( Cons c2 p2) = Cons (c1 + c2) '(sumPoly p1 p2)
