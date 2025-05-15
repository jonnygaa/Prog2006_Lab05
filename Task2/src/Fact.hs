module Fact where

-- | mfact is my own implementation of factorial
--
-- >>> mfact 5
-- 120
--
-- >>> mfact 2
-- 2

mfact  :: Int -> Int
mfact 1 = 1
mfact a = a * (mfact (a-1))