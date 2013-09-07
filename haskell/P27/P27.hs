import Data.List (maximumBy)
import Data.Numbers.Primes

formula :: Int -> Int -> Int -> Int
formula a b n = n * (n + a) + b

checkFormula :: Int -> Int -> Int -> Bool
checkFormula a b m = all isPrime [ formula a b n | n <- [0..m] ]

getMaxLength :: Int -> Int -> Int
getMaxLength a b = length $ takeWhile (==True) [ checkFormula a b n | n <- [0..max a b]]

p27 = maximumBy (\x y -> compare (snd x) (snd y)) [(a*b, m) | a <- [-999..999], b <- [-999..999], let m = getMaxLength a b, m > 1]

main :: IO ()
main = print $ p27
