module Dirichlet ( dirichlet, dirichlets ) where

import Taylor
import Divisors

dirichlet :: Int -> Rational
dirichlet n = sum parts
    where
        divs = divisors n
        parts = map (\(p,q) -> fromIntegral p * taylors !! (q-1)) divs

dirichlets :: [Rational]
dirichlets = dirichlet <$> [0..]

