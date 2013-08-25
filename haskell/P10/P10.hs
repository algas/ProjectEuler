module P10 (p10) where

import Data.List

sum' :: (Num a) => [a] -> a
sum'= foldl' (+) 0

primes :: [Integer]
primes = 2 : primes' [3] (enumFromThen 3 5)

primes' :: [Integer] -> [Integer] -> [Integer]
primes' (x:xs) ys = ps ++ primes' (xs ++ ps) [q | q <- qs, q `mod` x /= 0]
    where
        (ps, qs) = span (< x^2) ys

p10 :: Integer
p10 = sum' $ takeWhile (<2000000) primes

main = print $ p10
