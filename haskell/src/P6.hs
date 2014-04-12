module P6 (p6) where

p6' :: Int -> Int
p6' m = (f * f) - (sum [x*x | x <- [1..m]])
    where f = sum [1..m]

p6 :: Int
p6 = p6' 100

main :: IO ()
main = print $ p6
