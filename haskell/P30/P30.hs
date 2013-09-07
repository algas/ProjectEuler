intToDigits :: Int -> [Int]
intToDigits n
    | n < 10 = [n]
    | otherwise = (n `mod` 10) : intToDigits (n `div` 10)

p30' :: Int -> Bool
p30' n = n == sum [ d ^ 5 | d <- intToDigits n ]

p30 :: Int
p30 = sum [ n | n <- [2..200000], p30' n ]

main :: IO ()
main = print p30
