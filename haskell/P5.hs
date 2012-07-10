isP5 :: Int -> Bool
isP5 n = not $ any (>0) [n `mod` x | x <- [2..20]]

primes :: Int
primes = product [2,3,5,7,11,13,17,19]

main = print $ head [primes * x | x <- [1..], isP5 (primes * x)]
