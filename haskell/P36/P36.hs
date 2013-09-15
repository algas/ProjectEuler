intToDigits :: Int -> Int -> [Int]
intToDigits m n
    | n < m     = [n]
    | otherwise = r : intToDigits m q
    where
        (q,r) = divMod n m

isPalindromic :: Int -> Int -> Bool
isPalindromic m n = ds == reverse ds
    where
        ds = intToDigits m n

p36' :: Int -> Bool
p36' n = isPalindromic 10 n && isPalindromic 2 n

p36 :: Int
p36 = sum $ filter p36' [1..1000000]

main :: IO ()
main = print p36
