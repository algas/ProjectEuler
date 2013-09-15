import Data.List (inits, tails)
import Data.Numbers.Primes

intToDigits :: Int -> [Int]
intToDigits = reverse . intToDigits'

intToDigits' :: Int -> [Int]
intToDigits' n
    | n < 10    = [n]
    | otherwise = r : intToDigits' q
    where
        (q,r) = divMod n 10

digitsToInt :: [Int] -> Int
digitsToInt = foldl1 (\x y -> 10 * x + y)
 
trancateRights :: [a] -> [[a]]
trancateRights = init . tail . inits

trancateLefts :: [a] -> [[a]]
trancateLefts = tail . init . tails

trancates :: Int -> [Int]
trancates n = n : map digitsToInt (trancateLefts ns ++ trancateRights ns) 
    where
        ns = intToDigits n

isTrancatable :: Int -> Bool
isTrancatable = all isPrime . trancates

p37 :: Int
p37 = sum $ take 11 $ filter isTrancatable [11,13..]

main :: IO ()
main = print p37
