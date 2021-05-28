module Main where

import Bernoulli ( bernoullis )

main :: IO ()
main = print $ last $ take 5000 bernoullis