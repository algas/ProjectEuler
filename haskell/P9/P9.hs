module P9 (p9) where

c :: Int -> Int -> Int
c a b = 1000 - (a + b)

p9 = head [a*b*(n-(a+b)) | a <- [1..n], b <- [1..n], (a*a + b*b) == (c a b)*(c a b)]
    where
        n = 1000

main = print $ p9
