module Fib where

-- | mfact is my own implementation of factorial
--
-- >>> mfib 2
-- 1
--
-- >>> mfib 6
-- 5
--
-- >>> mfib 10
-- 34

mfib  :: Int -> Int
mfib  a
    | a == 1 = 0
    | a<3 = 1
    | otherwise = (mfib $ a-1) + (mfib $ a-2)