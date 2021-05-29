module Bench.Taylor ( taylorBench ) where

import Taylor
import Criterion.Main

taylorBench :: Benchmark
taylorBench = bgroup "taylor" [ bench (show n) $ whnf (taylors !!) n | n <- [100,200..2500] ]