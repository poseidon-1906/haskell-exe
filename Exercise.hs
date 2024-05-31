myMin a b = if a < b then a else b
myMin2 a b c d = myMin (myMin a b) (myMin c d)

myMax a b = if a > b then a else b
myMax2 a b c d = myMax (myMax a b) (myMax c d)
--fin de l'exo 1 et 2-----------

--xercice 3------------
bornerDans :: Ord a => a -> a -> a -> a
bornerDans a b x
    | x < a = a
    | x > b = b
    | otherwise = x
    --fin xercice 3------------
    
--xercice 4------------
type Vector = (Double, Double) -- Representation d'un vecteur (x, y)

-- Somme de deux vecteurs
addVectors :: Vector -> Vector -> Vector
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

-------xercice 5------------

vectorNorm :: Vector -> Double
vectorNorm (x, y) = sqrt (x * x + y * y)

-------xercice 6------------

-- Produit d'un vecteur par un scalaire
scaleVector :: Double -> Vector -> Vector
scaleVector scalar (x, y) = (scalar * x, scalar * y)

-------xercice 7------------
-- Produit scalaire de deux vecteurs
dotProduct :: Vector -> Vector -> Double
dotProduct (x1, y1) (x2, y2) = x1 * x2 + y1 * y2

