module Bench.Bernoulli ( bernoulliBench ) where

import Bernoulli
import Criterion.Main

bernoulliBench :: Benchmark
bernoulliBench = bgroup "bernoulli" [ bench (show n) $ whnf (bernoullis !!) n | n <- [100,200..2500] ]