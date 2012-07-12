import Data.List

sum' :: (Num a) => [a] -> a
sum'= foldl' (+) 0

primes :: [Integer]
primes = 2 : sieve [3,5..]
    where sieve (p:xs) = p : sieve [x | x <- xs, rem x p /= 0]

p10 :: [Integer]
p10 = takeWhile (<2000000) primes

main = print $ sum' $ p10
