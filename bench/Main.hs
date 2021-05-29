module Main where

import Bench.Bernoulli
import Bench.Dirichlet
import Bench.Divisors
import Bench.Taylor

import Criterion.Main
import Criterion.Main.Options
import Criterion.Types

myConfig = defaultConfig { reportFile = Just "report.html" }

main :: IO ()
main = defaultMainWith myConfig
    [ bernoulliBench
    , taylorBench
    , divisorsBench
    , dirichletBench
    , dirichletsBench
    ]