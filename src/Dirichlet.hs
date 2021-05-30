module Dirichlet ( dirichlets ) where

import Taylor
import Divisors

import Control.Parallel.Strategies

convolution :: Int -> Rational
convolution n = sum parts
    where parts = part <$> divisors n
          part (p,q) = fromIntegral p * taylors !! (q - 1)

dirichlets :: [Rational]
dirichlets = 1 : gen 1
    where gen :: Int -> [Rational]
          gen n = let convolutions = (convolution <$> [n,n-1..1]) `using` parList rdeepseq
                      parts = zipWith (*) dirichlets convolutions `using` parList rdeepseq
                   in sum parts / fromIntegral n : gen (n+1)