module P3 (p3, primes) where

-- |
-- primes
-- 
-- >>> take 7 primes
-- [2,3,5,7,11,13,17]
primes :: [Int]
primes = 2 : sieve [3,5..]
    where sieve (p:xs) = p : sieve [x | x <- xs, rem x p /= 0]

isPrime :: Int -> Bool
isPrime x = elem x primes

sqrtInt :: Int -> Int
sqrtInt = floor . sqrt . fromIntegral

thd3 :: (a,b,c) -> c
thd3 (_,_,z) = z

dividers :: Int -> [Int]
dividers x = thd3 $ dividers' (x, takeWhile (<(sqrtInt x)) (2:[3,5..]), [])

dividers' :: (Int, [Int], [Int]) -> (Int, [Int], [Int])
dividers' (x, [], ds) = (x, [], ds)
dividers' (x, p:ps, ds)
    | x `mod` p == 0 = dividers' (x `div` p, p:ps, p:ds)
    | otherwise = dividers' (x, ps, ds)

p3 :: Int
p3 = maximum [ x | x <- dividers n, isPrime x ]
    where n = 600851475143

main :: IO ()
main = print p3
