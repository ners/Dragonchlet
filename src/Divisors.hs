module Divisors ( divisors ) where

import Data.Tuple ( swap )

divisors :: Integral a => a -> [(a, a)]
divisors n = let pairs = [ (p, n `quot` p) | p <- [1 .. sq n], n `rem` p == 0 ]
              in pairs ++ (swap <$> pairs)
    where
        sq = floor . sqrt . fromIntegral
