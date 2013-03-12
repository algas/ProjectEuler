module P4 (p4, isPalindromic) where

isPalindromic :: Int -> Bool
isPalindromic x = (show x) == (reverse (show x))

threeDigits = reverse [100..999]

p4 :: Int
p4 = maximum [x * y | x <- threeDigits, y <- threeDigits, isPalindromic (x * y)]

main = print p4

