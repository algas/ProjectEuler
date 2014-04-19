module P15 (p15) where

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

combination :: Integer -> Integer -> Integer
combination n r = (factorial n) `div` (factorial r * factorial (n - r))

pascalTriangle :: Integer -> [Integer]
pascalTriangle n = [combination n r | r <- [0..n]]

p15' :: Integer -> Integer
p15' n = sum [x * x | x <- pascalTriangle n]

p15 :: Integer
p15 = p15' 20

main :: IO ()
main = print p15
