module Taylor ( taylors ) where

import Bernoulli ( bernoullis )

factorial :: (Eq a, Num a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

taylors :: [Rational]
taylors = drop 2 $ gen 1 bernoullis

gen :: Integer -> [Rational] -> [Rational]
gen n (b:_:bs) = 0 : -first : nexts
    where
        nexts = gen (n + 2) bs
        first | b == 0 = 0
              | otherwise = 2^(n-1) * (2^(n-1) - 1) * abs b / fromIntegral (factorial $ n - 1)