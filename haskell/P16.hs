p16 :: Integer -> Integer
p16 n = sum [(read [x]) :: Integer  | x <- show (2 ^ n)]

main = print $ p16 1000

