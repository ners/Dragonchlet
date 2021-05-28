module Main where

import Bench.Bernoulli

import Criterion.Main
import Criterion.Main.Options
import Criterion.Types

myConfig = defaultConfig { reportFile = Just "report.html" }

main :: IO ()
main = defaultMainWith myConfig [ bernoulliBench ]