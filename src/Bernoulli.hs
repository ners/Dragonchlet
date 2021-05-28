module Bernoulli ( bernoullis, faulhaber ) where

import Data.Bool (bool)
import Data.Ratio (Rational, denominator, numerator, (%))

bernoullis :: [Rational]
bernoullis = head <$> faulhaber

faulhaber :: [[Rational]]
faulhaber = tail $ scanl (\rs n -> let xs = zipWith ((*) . (n %)) [2 ..] rs in 1 - sum xs : xs) [] [0 ..]