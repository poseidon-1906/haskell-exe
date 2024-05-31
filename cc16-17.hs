minDe :: Ord a => (a, a) -> a
minDe(x, y) = if x > y then y else x -------plus petit de 2 nombres

------------------------------------------
minDeT :: Ord a => (a, a, a) -> a
minDeT (p, x, y) = minDe(p, minDe(x, y))

----------------------------------------

signe  :: Int -> Int -> Bool
signe x y =  x * y > 0 

--------------------------------------------
impaire :: Integral a => a -> Bool
impaire x = x `mod` 2 /= 0 

---------------------------------------------



-----------------------------------------------

leapYear :: Integral a => a -> Bool
leapYear x = (x `mod` 4 == 0) && (x `mod` 100 == 0) || x `mod` 400 == 0

-----------------------------------------------------

data jour = Lundi | Mardi | Mercredi | Jeudi | Vendredi | Samedi | Dimanche

weekend :: jour -> Bool
weekend Samedi = True
weekend Dimanche = True
weekend x = False






