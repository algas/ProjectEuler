intToDigits :: Int -> [Int]
intToDigits n
    | n < 10    = [n]
    | otherwise = r : intToDigits q
    where
        (q,r) = divMod n 10

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

p34' :: Int -> Bool
p34' n = n == sum [factorial d | d <- intToDigits n]

p34 :: Int
p34 = sum $ filter p34' [3..(factorial 9)]

main :: IO ()
main = print $ p34
