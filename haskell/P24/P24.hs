import Data.List
import Data.Char

permutation' :: a -> [[a]] -> [[a]]
permutation' _ [] = []
permutation' x (ys:yss) = [(take n ys) ++ [x] ++ (drop n ys) | n <- [0..(length ys)]] ++ permutation' x yss

permutation :: [a] -> [[a]] -> [[a]]
permutation [] yss = yss
permutation (x:xs) yss = permutation xs (permutation' x yss)

p24 = (sort $ permutation [0..9] [[]]) !! (1000000 - 1)

main = print $ [intToDigit n | n <- p24]
