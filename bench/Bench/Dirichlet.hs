module Bench.Dirichlet ( dirichletBench, dirichletsBench ) where

import Dirichlet
import Criterion.Main

dirichletBench :: Benchmark
dirichletBench = bgroup "dirichlet" [ bench (show n) $ whnf dirichlet n | n <- [100,200..2500] ]

dirichletsBench :: Benchmark
dirichletsBench = bgroup "dirichlets" [ bench (show n) $ whnf (dirichlets !!) n | n <- [100,200..2500] ]
