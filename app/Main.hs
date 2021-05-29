module Main where

import Dirichlet

main :: IO ()
main = do
    mapM_ print $ take 10 dirichlets
