import Data.Numbers.Primes

digitsToInt :: [Int] -> Int
digitsToInt = foldl1 (\x y -> 10 * x + y)

intToDigits :: Int -> [Int]
intToDigits = reverse . intToDigits'

intToDigits' :: Int -> [Int]
intToDigits' n
    | n < 10    = [n]
    | otherwise = r : intToDigits' q
    where
        (q,r) = divMod n 10

circulars :: Int -> [Int]
circulars x = [ digitsToInt (drop m ds ++ take m ds) | m <- [0..(length ds - 1)]]
    where
        ds = intToDigits x

isCircularPrime :: Int -> Bool
isCircularPrime = all isPrime . circulars

p35 :: Int
p35 = length $ filter isCircularPrime [2..1000000]

main :: IO ()
main = print p35


