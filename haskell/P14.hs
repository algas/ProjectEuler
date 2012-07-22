import Data.List
import Data.Ord

p :: Int -> Int
p n
    | even n = n `div` 2
    | otherwise = 3 * n + 1

pchain :: Int -> [Int]
pchain 1 = [1]
pchain x = x : pchain (p x)

p14 :: Int -> (Int, Int)
p14 x = maximumBy (comparing snd) [(n, length (pchain n)) | n <- [1..x]]

main = print $ fst $ p14 1000000

