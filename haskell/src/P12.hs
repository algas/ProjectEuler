module P12 (p12) where

import           Data.List

triangleNumber :: Int -> Int
triangleNumber 1 = 1
triangleNumber n = n + triangleNumber (n - 1)

sqrtInt :: Int -> Int
sqrtInt = floor . sqrt . fromIntegral

flatten :: [[a]] -> [a]
flatten = foldl (++) []

factors :: Int -> [Int]
factors x = nub $ sort $ flatten [ [n, (x `div` n)] | n <- [1..(sqrtInt x)], x `mod` n == 0]

p12 :: Int
p12 = triangleNumber (1 + length (takeWhile (<501) [length (factors (triangleNumber n)) | n <- [1..]]))

main :: IO ()
main = print p12
