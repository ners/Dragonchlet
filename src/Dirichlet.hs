module Dirichlet ( dirichlet, dirichlets ) where

import Taylor
import Divisors

import Data.Tuple ( swap )

dirichlet :: Int -> Rational
dirichlet n = sum parts
    where
        divs = divisors n
        uniqueDivs = filter (uncurry (/=)) divs
        part :: (Int,Int) -> Rational
        part (p,q) = fromIntegral p * taylors !! (q - 1)
        parts = map part $ divs ++ (swap <$> uniqueDivs)

dirichlets :: [(Int, Rational)]
dirichlets = (\n -> (n, dirichlet n)) <$> [0..]