module Taylor ( taylors ) where

import Bernoulli ( bernoullis )

factorial :: (Eq a, Num a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

taylors :: [Rational]
taylors = gen 0 1 bernoullis
    where
        gen :: Rational -> Rational -> [Rational] -> [Rational]
        gen n pow (b:_:bs) = let first = pow * (pow - 1) * abs b / factorial (2 * n)
                                 nexts = gen (n + 1) (pow * 2) bs
                              in -first : nexts