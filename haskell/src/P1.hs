module P1 (p1) where

-- |
-- p1
-- 
-- >>> p1
-- 233168
-- 
p1 :: Int
p1 = sum [ n | n<-[1..999], (n `mod` 3 == 0) || (n `mod` 5 == 0) ]

main :: IO ()
main = print p1
