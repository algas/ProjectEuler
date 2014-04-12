module P7 (p7) where

primes :: [Int]
primes = 2 : primes' [3] (enumFromThen 3 5)

primes' :: [Int] -> [Int] -> [Int]
primes' (x:xs) ys = ps ++ primes' (xs ++ ps) [q | q <- qs, q `mod` x /= 0]
    where
        (ps, qs) = span (< x^2) ys

p7 :: Int
p7 = primes !! 10000

main :: IO ()
main = print $ p7
