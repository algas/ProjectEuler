divisors :: Int -> [Int]
divisors = divisors' 1

divisors' :: Int -> Int -> [Int]
divisors' m n
    | n == 1 = [1]
    | n == m = []
    | n `mod` m == 0 = m : divisors' (m+1) n
    | otherwise = divisors' (m+1) n

isAmicable :: Int -> Bool
isAmicable n = (m /= n) && n == sum (divisors m)
    where m = sum (divisors n)

p21 n = sum [x | x <- [1..n], isAmicable x]

main = print $ p21 10000
