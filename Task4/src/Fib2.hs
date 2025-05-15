module Fib2 where

-- | mfact is my own implementation of factorial
--
-- >>> fib2 2
-- 1
--
-- >>> fib2 6
-- 5
--
-- >>> fib2 10
-- 34

fibs = 0 : 1 : next fibs
  where
    next (a : t@(b:_)) = (a+b) : next t

fibzip = 0 : 1 : zipWith (+) fibzip (tail fibzip)

fib2  :: Int -> Int
fib2  n = fibs!!(n-1)