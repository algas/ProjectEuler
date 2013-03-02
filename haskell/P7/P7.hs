primes :: [Int]
primes = 2 : sieve [3,5..]
    where sieve (p:xs) = p : sieve [x | x <- xs, rem x p /= 0]

p7 :: Int
p7 = primes !! 10000

main = print $ p7
