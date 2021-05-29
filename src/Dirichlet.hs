module Dirichlet ( dirichlet, dirichlets ) where

import Taylor
import Divisors

import Data.Tuple ( swap )

convolution :: Int -> Int -> Rational
convolution n k = dirichlet k * sum parts
    where
        divs = divisors (n-k)
        uniqueDivs = filter (uncurry (/=)) divs
        part :: (Int,Int) -> Rational
        part (p,q) = fromIntegral p * taylors !! (q - 1)
        parts = map part $ divs ++ (swap <$> uniqueDivs)

dirichlet :: Int -> Rational
dirichlet 0 = 1
dirichlet n = sum parts / fromIntegral n
    where parts = convolution n <$> [0..n-1]

dirichlets :: [(Int, Rational)]
dirichlets = (\n -> (n, dirichlet n)) <$> [0..]