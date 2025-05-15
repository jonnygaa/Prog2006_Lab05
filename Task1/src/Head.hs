module Head where

-- | mhead versions
--
-- >>> mhead1 [1,2,3]
-- 1
-- >>> mhead1 "Hello"
-- 'H'
--
-- >>> mhead2 [1,2,3]
-- 1
-- >>> mhead2 "Hello"
-- 'H'
--
-- >>> mhead3 [1,2,3]
-- 1
-- >>> mhead3 "Hello"
-- 'H'
--
-- >>> mhead4 [1,2,3]
-- 1
-- >>> mhead4 "Hello"
-- 'H'
--
-- >>> mhead5 [1,2,3]
-- 1
-- >>> mhead5 "Hello"
-- 'H'
--
-- >>> mhead6 [1,2,3]
-- 1
-- >>> mhead6 "Hello"
-- 'H'

mhead1 :: [a] -> a
mhead1 [] = error "Prelude.tail: empty list"
mhead1 (x:_) = x

mhead2 :: [a] -> a
mhead2 (x:xs)
   | length(x:xs) == 0 = error "Prelude.tail: empty list"
   | otherwise = x

mhead3 :: [a] -> a
mhead3 (x:xs) = if length (x:xs) == 0 then error "Prelude.tail: empty list" else x

mhead4 :: [a] -> a
mhead4 (x:xs) = let a = (x:xs) in (if length a == 0 then error "Prelude.tail: empty list" else x)

mhead5 :: [a] -> a
mhead5 (x:xs)
   | a == 0 = error "Prelude.tail: empty list"
   | otherwise = x
  where a = length (x:xs)

mhead6 :: [a] -> a
mhead6 x = case x of
    [] -> error "Prelude.tail: empty list"
    (x:_) -> x

