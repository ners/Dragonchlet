module Main where

import Dirichlet

main :: IO ()
main = mapM_ print $ zip indexes dirichlets
    where indexes = [0..1000]
