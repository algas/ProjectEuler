module P2 (p2, fib) where

-- |
-- fib
-- 
-- >>> take 5 fib
-- [1,2,3,5,8]
-- 
fib :: [Int]
fib = 1 : 2 : zipWith (+) fib (tail fib)

p2 :: Int
p2 = sum $ takeWhile (<4000000) [ x | x <- fib, even x ]

main :: IO ()
main = print p2
