module Divisors ( divisors ) where

import Data.Tuple ( swap )

divisors :: Integral a => a -> [(a, a)]
divisors n = [ (p, n `quot` p) | p <- [1,2..sq n], n `rem` p == 0 ]
    where sq = floor . sqrt . fromIntegral