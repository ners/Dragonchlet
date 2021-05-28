module Bench.Bernoulli ( bernoulliBench ) where

import Bernoulli
import Criterion.Main

takeBernoulli = last . (`take` bernoullis)

bernoulliBench = bgroup "bernoulli" [ bench (show n) $ whnf takeBernoulli n | n <- [1000,1250..3000] ]
