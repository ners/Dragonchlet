module Bench.Divisors ( divisorsBench ) where

import Divisors
import Criterion.Main

divisorsBench :: Benchmark
divisorsBench = bgroup "divisors" [ bench (show n) $ whnf (last . divisors) n | n <- [100,200..2500] ]