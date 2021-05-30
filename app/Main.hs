module Main where

import Dirichlet

import Graphics.Gnuplot.Simple
import System.Environment.Blank ( getArgs )

main :: IO ()
main = do
    (numTerms:_) <- (read <$>) <$> getArgs
    plotList [Title "The Glorious Dragonchlet", Key Nothing, PNG "plot.png"] $ take numTerms dirichlets