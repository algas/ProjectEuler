import Data.List (permutations, nub)
import Data.Maybe

digitsToInt :: [Int] -> Int
digitsToInt = foldl1 (\x y -> 10 * x + y)


f :: [Int] -> Maybe Int
f ps
    | digitsToInt (take 1 ps) * digitsToInt (take 4 (drop 1 ps)) == xs = Just xs
    | digitsToInt (take 2 ps) * digitsToInt (take 3 (drop 2 ps)) == xs = Just xs
    | otherwise = Nothing
    where
        xs = digitsToInt $ drop 5 ps

p32 :: Int
p32 = sum $ nub [ fromJust ys | ys <- [ f ps | ps <- permutations [1..9] ], isJust ys ]

main :: IO ()
main = print p32
